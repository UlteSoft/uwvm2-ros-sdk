/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original ufactory/ros2_humble canonical value domain.
 * @details The selected domain contains 111 complete record/components and 300 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
// Generated complete canonical records; no native ABI, CDR or ROS grant.
#nullable enable
using System;
using _Codecs = global::Uwvm.RosWasm.Codecs;
namespace Uwvm.Ufactory.ros2_humble;

public static class BoundedRecords
{
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param minimum Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param maximum Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static byte[] OwnedWire(byte[] value, int minimum, int maximum)
    {
        if(value == null || value.Length < minimum || value.Length > maximum)
            throw new ArgumentException("complete bounded wire required");
        return (byte[])value.Clone();
    }

    /**
     * @brief Write one prevalidated the selected original interface component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @param maximum Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteText(_Codecs.Writer writer, string value, int maximum)
    {
        if(value == null || value.Length > maximum || value.IndexOf('\0') >= 0)
            throw new ArgumentException("bounded custom string without NUL required");
        byte[] bytes = _Codecs.Utf8(value);
        if(bytes.Length > maximum)
            throw new ArgumentException("custom UTF8 byte bound");
        writer.Unsigned((ulong)bytes.Length, 4).Raw(bytes);
    }

    /**
     * @brief Read one the selected original interface candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @param maximum Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static string ReadText(_Codecs.Reader reader, int maximum)
    {
        ulong count = reader.Unsigned(4);
        if(count > (ulong)maximum || count > (ulong)reader.Remaining)
            throw new FormatException("custom UTF8 extent");
        string value = _Codecs.Text(reader.Take((int)count));
        if(value.IndexOf('\0') >= 0)
            throw new FormatException("NUL in custom string");
        return value;
    }

    /**
     * @brief Read one the selected original interface candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @param maximum Finite active count/capacity in bytes or elements as specified by the selected schema.
     * @param elementMinimum Complete original component or local protocol value, with its documented owner
     * and bounds.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static int ReadCount(_Codecs.Reader reader, int maximum, int elementMinimum)
    {
        ulong count = reader.Unsigned(4);
        if(count > (ulong)maximum || (elementMinimum != 0 && count > (ulong)reader.Remaining / (ulong)elementMinimum))
            throw new FormatException("sequence count/remaining extent");
        return (int)count;
    }

    /**
     * @brief Read one the selected original interface candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static bool ReadBool(_Codecs.Reader reader)
    {
        ulong value = reader.Unsigned(1);
        if(value > 1)
            throw new FormatException("canonical bool must be0/1");
        return value == 1;
    }

    /**
     * @brief Write one prevalidated the selected original interface component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteFloat32(_Codecs.Writer writer, float value)
    {
        if(!float.IsFinite(value))
            throw new ArgumentException("finite float32 required");
        // uint preserves exactly the actual32 bits before widening to ulong.
        writer.Unsigned(unchecked((uint)BitConverter.SingleToInt32Bits(value)), 4);
    }

    /**
     * @brief Read one the selected original interface candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static float ReadFloat32(_Codecs.Reader reader)
    {
        float value = BitConverter.Int32BitsToSingle(unchecked((int)reader.Unsigned(4)));
        if(!float.IsFinite(value))
            throw new FormatException("nonfinite canonical float32");
        return value;
    }

    /**
     * @brief Preserve all original builtin_interfaces/msg/Time fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Builtin_interfacesMsgTime
    {
        public int @sec = 0;
        public uint @nanosec = 0;

        /**
         * @brief Maintain the bounded local protocol state for builtin_interfaces/msg/Time.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Builtin_interfacesMsgTime()
        {
        }
    }

    /**
     * @brief Preserve all original builtin_interfaces/msg/Time fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Builtin_interfacesMsgTimeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Builtin_interfacesMsgTime>
    {
        public static readonly Ros2Builtin_interfacesMsgTimeCodec Instance = new Ros2Builtin_interfacesMsgTimeCodec();

        /**
         * @brief Maintain the bounded local protocol state for builtin_interfaces/msg/Time.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Builtin_interfacesMsgTimeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for builtin_interfaces/msg/Time.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Builtin_interfacesMsgTime value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Builtin_interfacesMsgTime(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for builtin_interfaces/msg/Time.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Builtin_interfacesMsgTime Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Builtin_interfacesMsgTime value = ReadRos2Builtin_interfacesMsgTime(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated builtin_interfaces/msg/Time component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Builtin_interfacesMsgTime(_Codecs.Writer writer, _Ros2Builtin_interfacesMsgTime value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@sec;
        writer.Unsigned(unchecked((uint)part0), 4);
        uint part1 = value.@nanosec;
        writer.Unsigned(part1, 4);
        if((long)part1 < 0 || (long)part1 >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
    }

    /**
     * @brief Read one builtin_interfaces/msg/Time candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Builtin_interfacesMsgTime ReadRos2Builtin_interfacesMsgTime(_Codecs.Reader reader)
    {
        var value = new _Ros2Builtin_interfacesMsgTime();
        value.@sec = unchecked((int)reader.Unsigned(4));
        value.@nanosec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nanosec < 0 || (long)value.@nanosec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
        return value;
    }

    /**
     * @brief Preserve all original geometry_msgs/msg/Point fields.
     * @details 3 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Geometry_msgsMsgPoint
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/msg/Point.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Geometry_msgsMsgPoint()
        {
        }
    }

    /**
     * @brief Preserve all original geometry_msgs/msg/Point fields.
     * @details 3 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Geometry_msgsMsgPointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPoint>
    {
        public static readonly Ros2Geometry_msgsMsgPointCodec Instance = new Ros2Geometry_msgsMsgPointCodec();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/msg/Point.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Geometry_msgsMsgPointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Point";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for geometry_msgs/msg/Point.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Geometry_msgsMsgPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Geometry_msgsMsgPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for geometry_msgs/msg/Point.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Geometry_msgsMsgPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPoint value = ReadRos2Geometry_msgsMsgPoint(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated geometry_msgs/msg/Point component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Geometry_msgsMsgPoint(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPoint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@x;
        writer.Float64(part0);
        double part1 = value.@y;
        writer.Float64(part1);
        double part2 = value.@z;
        writer.Float64(part2);
    }

    /**
     * @brief Read one geometry_msgs/msg/Point candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Geometry_msgsMsgPoint ReadRos2Geometry_msgsMsgPoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPoint();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original geometry_msgs/msg/Quaternion fields.
     * @details 4 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Geometry_msgsMsgQuaternion
    {
        public double @x = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        public double @y = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        public double @z = BitConverter.Int64BitsToDouble(unchecked((long)0x0000000000000000UL));
        public double @w = BitConverter.Int64BitsToDouble(unchecked((long)0x3ff0000000000000UL));

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/msg/Quaternion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Geometry_msgsMsgQuaternion()
        {
        }
    }

    /**
     * @brief Preserve all original geometry_msgs/msg/Quaternion fields.
     * @details 4 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Geometry_msgsMsgQuaternionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgQuaternion>
    {
        public static readonly Ros2Geometry_msgsMsgQuaternionCodec Instance = new Ros2Geometry_msgsMsgQuaternionCodec();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/msg/Quaternion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Geometry_msgsMsgQuaternionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        /**
         * @brief Encode the complete ordered value for geometry_msgs/msg/Quaternion.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Geometry_msgsMsgQuaternion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Geometry_msgsMsgQuaternion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for geometry_msgs/msg/Quaternion.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Geometry_msgsMsgQuaternion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgQuaternion value = ReadRos2Geometry_msgsMsgQuaternion(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated geometry_msgs/msg/Quaternion component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Geometry_msgsMsgQuaternion(_Codecs.Writer writer, _Ros2Geometry_msgsMsgQuaternion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double part0 = value.@x;
        writer.Float64(part0);
        double part1 = value.@y;
        writer.Float64(part1);
        double part2 = value.@z;
        writer.Float64(part2);
        double part3 = value.@w;
        writer.Float64(part3);
    }

    /**
     * @brief Read one geometry_msgs/msg/Quaternion candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Geometry_msgsMsgQuaternion ReadRos2Geometry_msgsMsgQuaternion(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgQuaternion();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        value.@w = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original geometry_msgs/msg/Pose fields.
     * @details 2 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Geometry_msgsMsgPose
    {
        public _Ros2Geometry_msgsMsgPoint @position = new _Ros2Geometry_msgsMsgPoint();
        public _Ros2Geometry_msgsMsgQuaternion @orientation = new _Ros2Geometry_msgsMsgQuaternion();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/msg/Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Geometry_msgsMsgPose()
        {
        }
    }

    /**
     * @brief Preserve all original geometry_msgs/msg/Pose fields.
     * @details 2 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Geometry_msgsMsgPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Geometry_msgsMsgPose>
    {
        public static readonly Ros2Geometry_msgsMsgPoseCodec Instance = new Ros2Geometry_msgsMsgPoseCodec();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/msg/Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Geometry_msgsMsgPoseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "geometry_msgs/msg/Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for geometry_msgs/msg/Pose.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Geometry_msgsMsgPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Geometry_msgsMsgPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for geometry_msgs/msg/Pose.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Geometry_msgsMsgPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Geometry_msgsMsgPose value = ReadRos2Geometry_msgsMsgPose(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated geometry_msgs/msg/Pose component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Geometry_msgsMsgPose(_Codecs.Writer writer, _Ros2Geometry_msgsMsgPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPoint part0 = value.@position;

        WriteRos2Geometry_msgsMsgPoint(writer, part0);
        _Ros2Geometry_msgsMsgQuaternion part1 = value.@orientation;

        WriteRos2Geometry_msgsMsgQuaternion(writer, part1);
    }

    /**
     * @brief Read one geometry_msgs/msg/Pose candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Geometry_msgsMsgPose ReadRos2Geometry_msgsMsgPose(_Codecs.Reader reader)
    {
        var value = new _Ros2Geometry_msgsMsgPose();
        value.@position = ReadRos2Geometry_msgsMsgPoint(reader);
        value.@orientation = ReadRos2Geometry_msgsMsgQuaternion(reader);
        return value;
    }

    /**
     * @brief Preserve all original std_msgs/msg/Header fields.
     * @details 2 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Std_msgsMsgHeader
    {
        public _Ros2Builtin_interfacesMsgTime @stamp = new _Ros2Builtin_interfacesMsgTime();
        public string @frame_id = "";

        /**
         * @brief Maintain the bounded local protocol state for std_msgs/msg/Header.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Std_msgsMsgHeader()
        {
        }
    }

    /**
     * @brief Preserve all original std_msgs/msg/Header fields.
     * @details 2 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Std_msgsMsgHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros2Std_msgsMsgHeader>
    {
        public static readonly Ros2Std_msgsMsgHeaderCodec Instance = new Ros2Std_msgsMsgHeaderCodec();

        /**
         * @brief Maintain the bounded local protocol state for std_msgs/msg/Header.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Std_msgsMsgHeaderCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "std_msgs/msg/Header";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        /**
         * @brief Encode the complete ordered value for std_msgs/msg/Header.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Std_msgsMsgHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Std_msgsMsgHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for std_msgs/msg/Header.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Std_msgsMsgHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Std_msgsMsgHeader value = ReadRos2Std_msgsMsgHeader(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated std_msgs/msg/Header component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Std_msgsMsgHeader(_Codecs.Writer writer, _Ros2Std_msgsMsgHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Builtin_interfacesMsgTime part0 = value.@stamp;

        WriteRos2Builtin_interfacesMsgTime(writer, part0);
        string part1 = value.@frame_id;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one std_msgs/msg/Header candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Std_msgsMsgHeader ReadRos2Std_msgsMsgHeader(_Codecs.Reader reader)
    {
        var value = new _Ros2Std_msgsMsgHeader();
        value.@stamp = ReadRos2Builtin_interfacesMsgTime(reader);
        value.@frame_id = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/CIOState fields.
     * @details 9 ordered fields, canonical extent 72..328 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsMsgCIOState
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public short @state = 0;
        public short @code = 0;
        public ushort[] @input_digitals = new ushort[2];
        public ushort[] @output_digitals = new ushort[2];
        public float[] @input_analogs = new float[2];
        public float[] @output_analogs = new float[2];
        public byte[] @input_conf = new byte[16];
        public byte[] @output_conf = new byte[16];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/CIOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgCIOState()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/CIOState fields.
     * @details 9 ordered fields, canonical extent 72..328 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsMsgCIOStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsMsgCIOState>
    {
        public static readonly Ros2Xarm_msgsMsgCIOStateCodec Instance = new Ros2Xarm_msgsMsgCIOStateCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/CIOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsMsgCIOStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/msg/CIOState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268";
        public const int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 328;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/msg/CIOState.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsMsgCIOState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsMsgCIOState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/msg/CIOState.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgCIOState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsMsgCIOState value = ReadRos2Xarm_msgsMsgCIOState(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/msg/CIOState component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsMsgCIOState(_Codecs.Writer writer, _Ros2Xarm_msgsMsgCIOState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;

        WriteRos2Std_msgsMsgHeader(writer, part0);
        short part1 = value.@state;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@code;
        writer.Unsigned(unchecked((ushort)part2), 2);
        ushort[] part3 = value.@input_digitals;
        if(part3 == null || part3.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            ushort element = part3[index];
            writer.Unsigned(element, 2);
        }
        ushort[] part4 = value.@output_digitals;
        if(part4 == null || part4.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            ushort element = part4[index];
            writer.Unsigned(element, 2);
        }
        float[] part5 = value.@input_analogs;
        if(part5 == null || part5.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            float element = part5[index];

            WriteFloat32(writer, element);
        }
        float[] part6 = value.@output_analogs;
        if(part6 == null || part6.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            float element = part6[index];

            WriteFloat32(writer, element);
        }
        byte[] part7 = value.@input_conf;
        if(part7 == null || part7.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            byte element = part7[index];
            writer.Unsigned(element, 1);
        }
        byte[] part8 = value.@output_conf;
        if(part8 == null || part8.Length != 16)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            byte element = part8[index];
            writer.Unsigned(element, 1);
        }
    }

    /**
     * @brief Read one xarm_msgs/msg/CIOState candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsMsgCIOState ReadRos2Xarm_msgsMsgCIOState(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsMsgCIOState();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@state = unchecked((short)reader.Unsigned(2));
        value.@code = unchecked((short)reader.Unsigned(2));
        value.@input_digitals = new ushort[2];
        for(int index = 0; index < value.@input_digitals.Length; ++index)
            value.@input_digitals[index] = unchecked((ushort)reader.Unsigned(2));
        value.@output_digitals = new ushort[2];
        for(int index = 0; index < value.@output_digitals.Length; ++index)
            value.@output_digitals[index] = unchecked((ushort)reader.Unsigned(2));
        value.@input_analogs = new float[2];
        for(int index = 0; index < value.@input_analogs.Length; ++index)
            value.@input_analogs[index] = ReadFloat32(reader);
        value.@output_analogs = new float[2];
        for(int index = 0; index < value.@output_analogs.Length; ++index)
            value.@output_analogs[index] = ReadFloat32(reader);
        value.@input_conf = new byte[16];
        for(int index = 0; index < value.@input_conf.Length; ++index)
            value.@input_conf[index] = unchecked((byte)reader.Unsigned(1));
        value.@output_conf = new byte[16];
        for(int index = 0; index < value.@output_conf.Length; ++index)
            value.@output_conf[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/IOState fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsMsgIOState
    {
        public int @digital_1 = 0;
        public int @digital_2 = 0;
        public float @analog_1 = 0;
        public float @analog_2 = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/IOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgIOState()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/IOState fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsMsgIOStateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsMsgIOState>
    {
        public static readonly Ros2Xarm_msgsMsgIOStateCodec Instance = new Ros2Xarm_msgsMsgIOStateCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/IOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsMsgIOStateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/msg/IOState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/msg/IOState.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsMsgIOState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsMsgIOState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/msg/IOState.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgIOState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsMsgIOState value = ReadRos2Xarm_msgsMsgIOState(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/msg/IOState component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsMsgIOState(_Codecs.Writer writer, _Ros2Xarm_msgsMsgIOState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@digital_1;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@digital_2;
        writer.Unsigned(unchecked((uint)part1), 4);
        float part2 = value.@analog_1;

        WriteFloat32(writer, part2);
        float part3 = value.@analog_2;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one xarm_msgs/msg/IOState candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsMsgIOState ReadRos2Xarm_msgsMsgIOState(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsMsgIOState();
        value.@digital_1 = unchecked((int)reader.Unsigned(4));
        value.@digital_2 = unchecked((int)reader.Unsigned(4));
        value.@analog_1 = ReadFloat32(reader);
        value.@analog_2 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/MoveVelocity fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsMsgMoveVelocity
    {
        public float[] @speeds = new float[0];
        public bool @is_sync = true;
        public bool @is_tool_coord = false;
        public float @duration = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/MoveVelocity.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgMoveVelocity()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/MoveVelocity fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsMsgMoveVelocityCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsMsgMoveVelocity>
    {
        public static readonly Ros2Xarm_msgsMsgMoveVelocityCodec Instance = new Ros2Xarm_msgsMsgMoveVelocityCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/MoveVelocity.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsMsgMoveVelocityCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/msg/MoveVelocity";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5ba20d989b68823e2b6a83c108f75912c8ab3472caf926903a76078321b5366f";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/msg/MoveVelocity.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsMsgMoveVelocity value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsMsgMoveVelocity(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/msg/MoveVelocity.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgMoveVelocity Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsMsgMoveVelocity value = ReadRos2Xarm_msgsMsgMoveVelocity(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/msg/MoveVelocity component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsMsgMoveVelocity(_Codecs.Writer writer, _Ros2Xarm_msgsMsgMoveVelocity value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@speeds;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        bool part1 = value.@is_sync;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@is_tool_coord;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        float part3 = value.@duration;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one xarm_msgs/msg/MoveVelocity candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsMsgMoveVelocity ReadRos2Xarm_msgsMsgMoveVelocity(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsMsgMoveVelocity();
        value.@speeds = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@speeds.Length; ++index)
            value.@speeds[index] = ReadFloat32(reader);
        value.@is_sync = ReadBool(reader);
        value.@is_tool_coord = ReadBool(reader);
        value.@duration = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/RobotMsg fields.
     * @details 11 ordered fields, canonical extent 78..362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsMsgRobotMsg
    {
        public _Ros2Std_msgsMsgHeader @header = new _Ros2Std_msgsMsgHeader();
        public short @state = 0;
        public short @mode = 0;
        public short @cmdnum = 0;
        public short @mt_brake = 0;
        public short @mt_able = 0;
        public short @err = 0;
        public short @warn = 0;
        public float[] @angle = new float[0];
        public float[] @pose = new float[6];
        public float[] @offset = new float[6];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/RobotMsg.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgRobotMsg()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/msg/RobotMsg fields.
     * @details 11 ordered fields, canonical extent 78..362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsMsgRobotMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsMsgRobotMsg>
    {
        public static readonly Ros2Xarm_msgsMsgRobotMsgCodec Instance = new Ros2Xarm_msgsMsgRobotMsgCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/msg/RobotMsg.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsMsgRobotMsgCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/msg/RobotMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78";
        public const int MIN_WIRE_BYTES = 78, MAX_WIRE_BYTES = 362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/msg/RobotMsg.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsMsgRobotMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsMsgRobotMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/msg/RobotMsg.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsMsgRobotMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsMsgRobotMsg value = ReadRos2Xarm_msgsMsgRobotMsg(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/msg/RobotMsg component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsMsgRobotMsg(_Codecs.Writer writer, _Ros2Xarm_msgsMsgRobotMsg value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Std_msgsMsgHeader part0 = value.@header;

        WriteRos2Std_msgsMsgHeader(writer, part0);
        short part1 = value.@state;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@mode;
        writer.Unsigned(unchecked((ushort)part2), 2);
        short part3 = value.@cmdnum;
        writer.Unsigned(unchecked((ushort)part3), 2);
        short part4 = value.@mt_brake;
        writer.Unsigned(unchecked((ushort)part4), 2);
        short part5 = value.@mt_able;
        writer.Unsigned(unchecked((ushort)part5), 2);
        short part6 = value.@err;
        writer.Unsigned(unchecked((ushort)part6), 2);
        short part7 = value.@warn;
        writer.Unsigned(unchecked((ushort)part7), 2);
        float[] part8 = value.@angle;
        if(part8 == null || part8.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part8.Length, 4);
        for(int index = 0; index < part8.Length; ++index)
        {
            float element = part8[index];

            WriteFloat32(writer, element);
        }
        float[] part9 = value.@pose;
        if(part9 == null || part9.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part9.Length; ++index)
        {
            float element = part9[index];

            WriteFloat32(writer, element);
        }
        float[] part10 = value.@offset;
        if(part10 == null || part10.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part10.Length; ++index)
        {
            float element = part10[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/msg/RobotMsg candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsMsgRobotMsg ReadRos2Xarm_msgsMsgRobotMsg(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsMsgRobotMsg();
        value.@header = ReadRos2Std_msgsMsgHeader(reader);
        value.@state = unchecked((short)reader.Unsigned(2));
        value.@mode = unchecked((short)reader.Unsigned(2));
        value.@cmdnum = unchecked((short)reader.Unsigned(2));
        value.@mt_brake = unchecked((short)reader.Unsigned(2));
        value.@mt_able = unchecked((short)reader.Unsigned(2));
        value.@err = unchecked((short)reader.Unsigned(2));
        value.@warn = unchecked((short)reader.Unsigned(2));
        value.@angle = new float[ReadCount(reader, 7, 4)];
        for(int index = 0; index < value.@angle.Length; ++index)
            value.@angle[index] = ReadFloat32(reader);
        value.@pose = new float[6];
        for(int index = 0; index < value.@pose.Length; ++index)
            value.@pose[index] = ReadFloat32(reader);
        value.@offset = new float[6];
        for(int index = 0; index < value.@offset.Length; ++index)
            value.@offset[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperCtrl_Request fields.
     * @details 3 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvBioGripperCtrl_Request
    {
        public short @speed = 0;
        public bool @wait = true;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x40a00000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperCtrl_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperCtrl_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperCtrl_Request fields.
     * @details 3 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvBioGripperCtrl_Request>
    {
        public static readonly Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec Instance = new Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperCtrl_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvBioGripperCtrl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/BioGripperCtrl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f";
        public const int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperCtrl_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvBioGripperCtrl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvBioGripperCtrl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperCtrl_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperCtrl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvBioGripperCtrl_Request value = ReadRos2Xarm_msgsSrvBioGripperCtrl_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/BioGripperCtrl_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvBioGripperCtrl_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvBioGripperCtrl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@speed;
        writer.Unsigned(unchecked((ushort)part0), 2);
        bool part1 = value.@wait;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@timeout;

        WriteFloat32(writer, part2);
    }

    /**
     * @brief Read one xarm_msgs/srv/BioGripperCtrl_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvBioGripperCtrl_Request ReadRos2Xarm_msgsSrvBioGripperCtrl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvBioGripperCtrl_Request();
        value.@speed = unchecked((short)reader.Unsigned(2));
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperCtrl_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvBioGripperCtrl_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperCtrl_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperCtrl_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperCtrl_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvBioGripperCtrl_Response>
    {
        public static readonly Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec Instance = new Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperCtrl_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvBioGripperCtrl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/BioGripperCtrl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperCtrl_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvBioGripperCtrl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvBioGripperCtrl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperCtrl_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperCtrl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvBioGripperCtrl_Response value = ReadRos2Xarm_msgsSrvBioGripperCtrl_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/BioGripperCtrl_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvBioGripperCtrl_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvBioGripperCtrl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/BioGripperCtrl_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvBioGripperCtrl_Response ReadRos2Xarm_msgsSrvBioGripperCtrl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvBioGripperCtrl_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperEnable_Request fields.
     * @details 3 ordered fields, canonical extent 6..6 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvBioGripperEnable_Request
    {
        public bool @enable = false;
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x40400000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperEnable_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperEnable_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperEnable_Request fields.
     * @details 3 ordered fields, canonical extent 6..6 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvBioGripperEnable_Request>
    {
        public static readonly Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec Instance = new Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperEnable_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvBioGripperEnable_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/BioGripperEnable_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperEnable_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvBioGripperEnable_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvBioGripperEnable_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperEnable_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperEnable_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvBioGripperEnable_Request value = ReadRos2Xarm_msgsSrvBioGripperEnable_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/BioGripperEnable_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvBioGripperEnable_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvBioGripperEnable_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@enable;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        bool part1 = value.@wait;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@timeout;

        WriteFloat32(writer, part2);
    }

    /**
     * @brief Read one xarm_msgs/srv/BioGripperEnable_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvBioGripperEnable_Request ReadRos2Xarm_msgsSrvBioGripperEnable_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvBioGripperEnable_Request();
        value.@enable = ReadBool(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperEnable_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvBioGripperEnable_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperEnable_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperEnable_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/BioGripperEnable_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvBioGripperEnable_Response>
    {
        public static readonly Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec Instance = new Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/BioGripperEnable_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvBioGripperEnable_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/BioGripperEnable_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperEnable_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvBioGripperEnable_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvBioGripperEnable_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperEnable_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvBioGripperEnable_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvBioGripperEnable_Response value = ReadRos2Xarm_msgsSrvBioGripperEnable_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/BioGripperEnable_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvBioGripperEnable_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvBioGripperEnable_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/BioGripperEnable_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvBioGripperEnable_Response ReadRos2Xarm_msgsSrvBioGripperEnable_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvBioGripperEnable_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/Call_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvCall_Request
    {
        /**
         * @brief Issue one explicit operation for xarm_msgs/srv/Call_Request.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvCall_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/Call_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvCall_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvCall_Request>
    {
        public static readonly Ros2Xarm_msgsSrvCall_RequestCodec Instance = new Ros2Xarm_msgsSrvCall_RequestCodec();

        /**
         * @brief Issue one explicit operation for xarm_msgs/srv/Call_Request.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvCall_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/Call_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/Call_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvCall_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvCall_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/Call_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvCall_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvCall_Request value = ReadRos2Xarm_msgsSrvCall_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/Call_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvCall_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvCall_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/Call_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvCall_Request ReadRos2Xarm_msgsSrvCall_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvCall_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/Call_Response fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvCall_Response
    {
        public int @ret = 0;
        public string @message = "";

        /**
         * @brief Issue one explicit operation for xarm_msgs/srv/Call_Response.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvCall_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/Call_Response fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvCall_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvCall_Response>
    {
        public static readonly Ros2Xarm_msgsSrvCall_ResponseCodec Instance = new Ros2Xarm_msgsSrvCall_ResponseCodec();

        /**
         * @brief Issue one explicit operation for xarm_msgs/srv/Call_Response.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvCall_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/Call_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/Call_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvCall_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvCall_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/Call_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvCall_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvCall_Response value = ReadRos2Xarm_msgsSrvCall_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/Call_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvCall_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvCall_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@ret;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/Call_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvCall_Response ReadRos2Xarm_msgsSrvCall_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvCall_Response();
        value.@ret = unchecked((int)reader.Unsigned(4));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtAdmittanceParams_Request fields.
     * @details 5 ordered fields, canonical extent 18..466 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtAdmittanceParams_Request
    {
        public short @coord = 0;
        public short[] @c_axis = new short[0];
        public float[] @m = new float[0];
        public float[] @k = new float[0];
        public float[] @b = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtAdmittanceParams_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtAdmittanceParams_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtAdmittanceParams_Request fields.
     * @details 5 ordered fields, canonical extent 18..466 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtAdmittanceParams_Request>
    {
        public static readonly Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec Instance = new Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtAdmittanceParams_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtAdmittanceParams_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtAdmittanceParams_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1840d594fd4b929bc350ebaef47f43840937c445b24f4f22371c953323de8e92";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 466;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtAdmittanceParams_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtAdmittanceParams_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtAdmittanceParams_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtAdmittanceParams_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtAdmittanceParams_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtAdmittanceParams_Request value = ReadRos2Xarm_msgsSrvFtAdmittanceParams_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtAdmittanceParams_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtAdmittanceParams_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtAdmittanceParams_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@coord;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short[] part1 = value.@c_axis;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            short element = part1[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
        float[] part2 = value.@m;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
        float[] part3 = value.@k;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];

            WriteFloat32(writer, element);
        }
        float[] part4 = value.@b;
        if(part4 == null || part4.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            float element = part4[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/FtAdmittanceParams_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtAdmittanceParams_Request ReadRos2Xarm_msgsSrvFtAdmittanceParams_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtAdmittanceParams_Request();
        value.@coord = unchecked((short)reader.Unsigned(2));
        value.@c_axis = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@c_axis.Length; ++index)
            value.@c_axis[index] = unchecked((short)reader.Unsigned(2));
        value.@m = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@m.Length; ++index)
            value.@m[index] = ReadFloat32(reader);
        value.@k = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@k.Length; ++index)
            value.@k[index] = ReadFloat32(reader);
        value.@b = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@b.Length; ++index)
            value.@b[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtAdmittanceParams_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtAdmittanceParams_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtAdmittanceParams_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtAdmittanceParams_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtAdmittanceParams_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtAdmittanceParams_Response>
    {
        public static readonly Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec Instance = new Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtAdmittanceParams_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtAdmittanceParams_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtAdmittanceParams_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a91b64c60079cb6473e500e18d2da474d1fabc27f8c9cc7690f22b74531cbf07";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtAdmittanceParams_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtAdmittanceParams_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtAdmittanceParams_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtAdmittanceParams_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtAdmittanceParams_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtAdmittanceParams_Response value = ReadRos2Xarm_msgsSrvFtAdmittanceParams_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtAdmittanceParams_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtAdmittanceParams_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtAdmittanceParams_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtAdmittanceParams_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtAdmittanceParams_Response ReadRos2Xarm_msgsSrvFtAdmittanceParams_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtAdmittanceParams_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtCaliLoad_Request fields.
     * @details 6 ordered fields, canonical extent 21..149 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtCaliLoad_Request
    {
        public float[] @datas = new float[0];
        public bool @association_setting_tcp_load = false;
        public float @m = BitConverter.Int32BitsToSingle(unchecked((int)0x3e8a3d71U));
        public float @x = BitConverter.Int32BitsToSingle(unchecked((int)0xc1880000U));
        public float @y = BitConverter.Int32BitsToSingle(unchecked((int)0x41100000U));
        public float @z = BitConverter.Int32BitsToSingle(unchecked((int)0x413ccccdU));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtCaliLoad_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtCaliLoad_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtCaliLoad_Request fields.
     * @details 6 ordered fields, canonical extent 21..149 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtCaliLoad_Request>
    {
        public static readonly Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec Instance = new Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtCaliLoad_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtCaliLoad_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtCaliLoad_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1132f426ed1335b5d92054df6693f0f5d5e5b5b9b21aa4ef19a65c293fa8394f";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtCaliLoad_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtCaliLoad_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtCaliLoad_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtCaliLoad_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtCaliLoad_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtCaliLoad_Request value = ReadRos2Xarm_msgsSrvFtCaliLoad_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtCaliLoad_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtCaliLoad_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtCaliLoad_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@datas;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        bool part1 = value.@association_setting_tcp_load;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@m;

        WriteFloat32(writer, part2);
        float part3 = value.@x;

        WriteFloat32(writer, part3);
        float part4 = value.@y;

        WriteFloat32(writer, part4);
        float part5 = value.@z;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtCaliLoad_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtCaliLoad_Request ReadRos2Xarm_msgsSrvFtCaliLoad_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtCaliLoad_Request();
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
        value.@association_setting_tcp_load = ReadBool(reader);
        value.@m = ReadFloat32(reader);
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtCaliLoad_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtCaliLoad_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtCaliLoad_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtCaliLoad_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtCaliLoad_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtCaliLoad_Response>
    {
        public static readonly Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec Instance = new Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtCaliLoad_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtCaliLoad_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtCaliLoad_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtCaliLoad_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtCaliLoad_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtCaliLoad_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtCaliLoad_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtCaliLoad_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtCaliLoad_Response value = ReadRos2Xarm_msgsSrvFtCaliLoad_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtCaliLoad_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtCaliLoad_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtCaliLoad_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtCaliLoad_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtCaliLoad_Response ReadRos2Xarm_msgsSrvFtCaliLoad_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtCaliLoad_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceConfig_Request fields.
     * @details 4 ordered fields, canonical extent 14..334 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtForceConfig_Request
    {
        public short @coord = 0;
        public short[] @c_axis = new short[0];
        public float[] @ref = new float[0];
        public float[] @limits = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceConfig_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceConfig_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceConfig_Request fields.
     * @details 4 ordered fields, canonical extent 14..334 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtForceConfig_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtForceConfig_Request>
    {
        public static readonly Ros2Xarm_msgsSrvFtForceConfig_RequestCodec Instance = new Ros2Xarm_msgsSrvFtForceConfig_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceConfig_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtForceConfig_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtForceConfig_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 334;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceConfig_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtForceConfig_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtForceConfig_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceConfig_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceConfig_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtForceConfig_Request value = ReadRos2Xarm_msgsSrvFtForceConfig_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtForceConfig_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtForceConfig_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtForceConfig_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@coord;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short[] part1 = value.@c_axis;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            short element = part1[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
        float[] part2 = value.@ref;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
        float[] part3 = value.@limits;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/FtForceConfig_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtForceConfig_Request ReadRos2Xarm_msgsSrvFtForceConfig_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtForceConfig_Request();
        value.@coord = unchecked((short)reader.Unsigned(2));
        value.@c_axis = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@c_axis.Length; ++index)
            value.@c_axis[index] = unchecked((short)reader.Unsigned(2));
        value.@ref = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@ref.Length; ++index)
            value.@ref[index] = ReadFloat32(reader);
        value.@limits = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@limits.Length; ++index)
            value.@limits[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceConfig_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtForceConfig_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceConfig_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceConfig_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceConfig_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtForceConfig_Response>
    {
        public static readonly Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec Instance = new Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceConfig_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtForceConfig_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtForceConfig_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceConfig_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtForceConfig_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtForceConfig_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceConfig_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceConfig_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtForceConfig_Response value = ReadRos2Xarm_msgsSrvFtForceConfig_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtForceConfig_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtForceConfig_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtForceConfig_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtForceConfig_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtForceConfig_Response ReadRos2Xarm_msgsSrvFtForceConfig_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtForceConfig_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceParams_Request fields.
     * @details 8 ordered fields, canonical extent 30..862 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtForceParams_Request
    {
        public short @coord = 0;
        public short[] @c_axis = new short[0];
        public float[] @ref = new float[0];
        public float[] @limits = new float[0];
        public float[] @kp = new float[0];
        public float[] @ki = new float[0];
        public float[] @kd = new float[0];
        public float[] @xe_limit = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceParams_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceParams_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceParams_Request fields.
     * @details 8 ordered fields, canonical extent 30..862 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtForceParams_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtForceParams_Request>
    {
        public static readonly Ros2Xarm_msgsSrvFtForceParams_RequestCodec Instance = new Ros2Xarm_msgsSrvFtForceParams_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceParams_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtForceParams_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtForceParams_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_66266e56d45f660d2750e881060e5a6655e5e35d497386ea1c7559517c2d6b08";
        public const int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 862;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceParams_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtForceParams_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtForceParams_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceParams_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceParams_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtForceParams_Request value = ReadRos2Xarm_msgsSrvFtForceParams_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtForceParams_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtForceParams_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtForceParams_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@coord;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short[] part1 = value.@c_axis;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            short element = part1[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
        float[] part2 = value.@ref;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
        float[] part3 = value.@limits;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];

            WriteFloat32(writer, element);
        }
        float[] part4 = value.@kp;
        if(part4 == null || part4.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            float element = part4[index];

            WriteFloat32(writer, element);
        }
        float[] part5 = value.@ki;
        if(part5 == null || part5.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            float element = part5[index];

            WriteFloat32(writer, element);
        }
        float[] part6 = value.@kd;
        if(part6 == null || part6.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            float element = part6[index];

            WriteFloat32(writer, element);
        }
        float[] part7 = value.@xe_limit;
        if(part7 == null || part7.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            float element = part7[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/FtForceParams_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtForceParams_Request ReadRos2Xarm_msgsSrvFtForceParams_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtForceParams_Request();
        value.@coord = unchecked((short)reader.Unsigned(2));
        value.@c_axis = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@c_axis.Length; ++index)
            value.@c_axis[index] = unchecked((short)reader.Unsigned(2));
        value.@ref = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@ref.Length; ++index)
            value.@ref[index] = ReadFloat32(reader);
        value.@limits = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@limits.Length; ++index)
            value.@limits[index] = ReadFloat32(reader);
        value.@kp = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@kp.Length; ++index)
            value.@kp[index] = ReadFloat32(reader);
        value.@ki = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@ki.Length; ++index)
            value.@ki[index] = ReadFloat32(reader);
        value.@kd = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@kd.Length; ++index)
            value.@kd[index] = ReadFloat32(reader);
        value.@xe_limit = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@xe_limit.Length; ++index)
            value.@xe_limit[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceParams_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtForceParams_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceParams_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceParams_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForceParams_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtForceParams_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtForceParams_Response>
    {
        public static readonly Ros2Xarm_msgsSrvFtForceParams_ResponseCodec Instance = new Ros2Xarm_msgsSrvFtForceParams_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForceParams_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtForceParams_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtForceParams_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_573d49b3f36f2111b39ecfabf29154f53dc66975edf7db80725256ed6be9318d";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceParams_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtForceParams_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtForceParams_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceParams_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForceParams_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtForceParams_Response value = ReadRos2Xarm_msgsSrvFtForceParams_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtForceParams_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtForceParams_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtForceParams_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtForceParams_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtForceParams_Response ReadRos2Xarm_msgsSrvFtForceParams_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtForceParams_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForcePid_Request fields.
     * @details 4 ordered fields, canonical extent 16..528 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtForcePid_Request
    {
        public float[] @kp = new float[0];
        public float[] @ki = new float[0];
        public float[] @kd = new float[0];
        public float[] @xe_limit = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForcePid_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForcePid_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForcePid_Request fields.
     * @details 4 ordered fields, canonical extent 16..528 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtForcePid_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtForcePid_Request>
    {
        public static readonly Ros2Xarm_msgsSrvFtForcePid_RequestCodec Instance = new Ros2Xarm_msgsSrvFtForcePid_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForcePid_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtForcePid_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtForcePid_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 528;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtForcePid_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtForcePid_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtForcePid_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtForcePid_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForcePid_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtForcePid_Request value = ReadRos2Xarm_msgsSrvFtForcePid_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtForcePid_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtForcePid_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtForcePid_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@kp;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float[] part1 = value.@ki;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
        float[] part2 = value.@kd;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
        float[] part3 = value.@xe_limit;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/FtForcePid_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtForcePid_Request ReadRos2Xarm_msgsSrvFtForcePid_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtForcePid_Request();
        value.@kp = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@kp.Length; ++index)
            value.@kp[index] = ReadFloat32(reader);
        value.@ki = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@ki.Length; ++index)
            value.@ki[index] = ReadFloat32(reader);
        value.@kd = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@kd.Length; ++index)
            value.@kd[index] = ReadFloat32(reader);
        value.@xe_limit = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@xe_limit.Length; ++index)
            value.@xe_limit[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForcePid_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtForcePid_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForcePid_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForcePid_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtForcePid_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtForcePid_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtForcePid_Response>
    {
        public static readonly Ros2Xarm_msgsSrvFtForcePid_ResponseCodec Instance = new Ros2Xarm_msgsSrvFtForcePid_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtForcePid_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtForcePid_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtForcePid_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtForcePid_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtForcePid_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtForcePid_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtForcePid_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtForcePid_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtForcePid_Response value = ReadRos2Xarm_msgsSrvFtForcePid_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtForcePid_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtForcePid_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtForcePid_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtForcePid_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtForcePid_Response ReadRos2Xarm_msgsSrvFtForcePid_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtForcePid_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtImpedance_Request fields.
     * @details 5 ordered fields, canonical extent 18..466 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtImpedance_Request
    {
        public short @coord = 0;
        public short[] @c_axis = new short[0];
        public float[] @m = new float[0];
        public float[] @k = new float[0];
        public float[] @b = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtImpedance_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtImpedance_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtImpedance_Request fields.
     * @details 5 ordered fields, canonical extent 18..466 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtImpedance_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtImpedance_Request>
    {
        public static readonly Ros2Xarm_msgsSrvFtImpedance_RequestCodec Instance = new Ros2Xarm_msgsSrvFtImpedance_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtImpedance_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtImpedance_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtImpedance_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 466;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtImpedance_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtImpedance_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtImpedance_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtImpedance_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtImpedance_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtImpedance_Request value = ReadRos2Xarm_msgsSrvFtImpedance_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtImpedance_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtImpedance_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtImpedance_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@coord;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short[] part1 = value.@c_axis;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            short element = part1[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
        float[] part2 = value.@m;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
        float[] part3 = value.@k;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];

            WriteFloat32(writer, element);
        }
        float[] part4 = value.@b;
        if(part4 == null || part4.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            float element = part4[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/FtImpedance_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtImpedance_Request ReadRos2Xarm_msgsSrvFtImpedance_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtImpedance_Request();
        value.@coord = unchecked((short)reader.Unsigned(2));
        value.@c_axis = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@c_axis.Length; ++index)
            value.@c_axis[index] = unchecked((short)reader.Unsigned(2));
        value.@m = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@m.Length; ++index)
            value.@m[index] = ReadFloat32(reader);
        value.@k = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@k.Length; ++index)
            value.@k[index] = ReadFloat32(reader);
        value.@b = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@b.Length; ++index)
            value.@b[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtImpedance_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvFtImpedance_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtImpedance_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtImpedance_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/FtImpedance_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvFtImpedance_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvFtImpedance_Response>
    {
        public static readonly Ros2Xarm_msgsSrvFtImpedance_ResponseCodec Instance = new Ros2Xarm_msgsSrvFtImpedance_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/FtImpedance_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvFtImpedance_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/FtImpedance_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/FtImpedance_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvFtImpedance_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvFtImpedance_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/FtImpedance_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvFtImpedance_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvFtImpedance_Response value = ReadRos2Xarm_msgsSrvFtImpedance_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/FtImpedance_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvFtImpedance_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvFtImpedance_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/FtImpedance_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvFtImpedance_Response ReadRos2Xarm_msgsSrvFtImpedance_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvFtImpedance_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetAnalogIO_Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetAnalogIO_Request
    {
        public short @ionum = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetAnalogIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetAnalogIO_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetAnalogIO_Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetAnalogIO_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec Instance = new Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetAnalogIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetAnalogIO_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetAnalogIO_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetAnalogIO_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetAnalogIO_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetAnalogIO_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetAnalogIO_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetAnalogIO_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetAnalogIO_Request value = ReadRos2Xarm_msgsSrvGetAnalogIO_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetAnalogIO_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetAnalogIO_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetAnalogIO_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ionum;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetAnalogIO_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetAnalogIO_Request ReadRos2Xarm_msgsSrvGetAnalogIO_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetAnalogIO_Request();
        value.@ionum = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetAnalogIO_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetAnalogIO_Response
    {
        public short @ret = 0;
        public string @message = "";
        public float @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetAnalogIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetAnalogIO_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetAnalogIO_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetAnalogIO_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetAnalogIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetAnalogIO_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetAnalogIO_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetAnalogIO_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetAnalogIO_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetAnalogIO_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetAnalogIO_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetAnalogIO_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetAnalogIO_Response value = ReadRos2Xarm_msgsSrvGetAnalogIO_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetAnalogIO_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetAnalogIO_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetAnalogIO_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        float part2 = value.@data;

        WriteFloat32(writer, part2);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetAnalogIO_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetAnalogIO_Response ReadRos2Xarm_msgsSrvGetAnalogIO_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetAnalogIO_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@data = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetDigitalIO_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetDigitalIO_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetDigitalIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetDigitalIO_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetDigitalIO_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetDigitalIO_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec Instance = new Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetDigitalIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetDigitalIO_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetDigitalIO_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetDigitalIO_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetDigitalIO_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetDigitalIO_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetDigitalIO_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetDigitalIO_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetDigitalIO_Request value = ReadRos2Xarm_msgsSrvGetDigitalIO_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetDigitalIO_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetDigitalIO_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetDigitalIO_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/GetDigitalIO_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetDigitalIO_Request ReadRos2Xarm_msgsSrvGetDigitalIO_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetDigitalIO_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetDigitalIO_Response fields.
     * @details 3 ordered fields, canonical extent 10..330 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetDigitalIO_Response
    {
        public short @ret = 0;
        public string @message = "";
        public short[] @digitals = new short[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetDigitalIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetDigitalIO_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetDigitalIO_Response fields.
     * @details 3 ordered fields, canonical extent 10..330 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetDigitalIO_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetDigitalIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetDigitalIO_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetDigitalIO_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 330;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetDigitalIO_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetDigitalIO_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetDigitalIO_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetDigitalIO_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetDigitalIO_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetDigitalIO_Response value = ReadRos2Xarm_msgsSrvGetDigitalIO_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetDigitalIO_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetDigitalIO_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetDigitalIO_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        short[] part2 = value.@digitals;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            short element = part2[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/GetDigitalIO_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetDigitalIO_Response ReadRos2Xarm_msgsSrvGetDigitalIO_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetDigitalIO_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@digitals = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@digitals.Length; ++index)
            value.@digitals[index] = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetFloat32_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetFloat32_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetFloat32_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetFloat32_RequestCodec Instance = new Ros2Xarm_msgsSrvGetFloat32_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetFloat32_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetFloat32_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetFloat32_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetFloat32_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetFloat32_Request value = ReadRos2Xarm_msgsSrvGetFloat32_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetFloat32_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetFloat32_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetFloat32_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/GetFloat32_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetFloat32_Request ReadRos2Xarm_msgsSrvGetFloat32_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetFloat32_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetFloat32_Response
    {
        public short @ret = 0;
        public string @message = "";
        public float @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetFloat32_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetFloat32_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetFloat32_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetFloat32_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetFloat32_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetFloat32_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetFloat32_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetFloat32_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetFloat32_Response value = ReadRos2Xarm_msgsSrvGetFloat32_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetFloat32_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetFloat32_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetFloat32_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        float part2 = value.@data;

        WriteFloat32(writer, part2);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetFloat32_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetFloat32_Response ReadRos2Xarm_msgsSrvGetFloat32_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetFloat32_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@data = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32List_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetFloat32List_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32List_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32List_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetFloat32List_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetFloat32List_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetFloat32List_RequestCodec Instance = new Ros2Xarm_msgsSrvGetFloat32List_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetFloat32List_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetFloat32List_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32List_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetFloat32List_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetFloat32List_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32List_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32List_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetFloat32List_Request value = ReadRos2Xarm_msgsSrvGetFloat32List_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetFloat32List_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetFloat32List_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetFloat32List_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/GetFloat32List_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetFloat32List_Request ReadRos2Xarm_msgsSrvGetFloat32List_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetFloat32List_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32List_Response fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetFloat32List_Response
    {
        public short @ret = 0;
        public string @message = "";
        public float[] @datas = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32List_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetFloat32List_Response fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetFloat32List_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetFloat32List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetFloat32List_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetFloat32List_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32List_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetFloat32List_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetFloat32List_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32List_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetFloat32List_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetFloat32List_Response value = ReadRos2Xarm_msgsSrvGetFloat32List_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetFloat32List_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetFloat32List_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetFloat32List_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        float[] part2 = value.@datas;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/GetFloat32List_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetFloat32List_Response ReadRos2Xarm_msgsSrvGetFloat32List_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetFloat32List_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt16_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt16_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt16_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt16_RequestCodec Instance = new Ros2Xarm_msgsSrvGetInt16_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt16_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt16_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt16_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt16_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt16_Request value = ReadRos2Xarm_msgsSrvGetInt16_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt16_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt16_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt16_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt16_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt16_Request ReadRos2Xarm_msgsSrvGetInt16_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt16_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16_Response fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt16_Response
    {
        public short @ret = 0;
        public string @message = "";
        public short @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16_Response fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt16_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt16_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt16_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetInt16_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt16_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt16_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt16_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt16_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt16_Response value = ReadRos2Xarm_msgsSrvGetInt16_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt16_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt16_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt16_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        short part2 = value.@data;
        writer.Unsigned(unchecked((ushort)part2), 2);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt16_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt16_Response ReadRos2Xarm_msgsSrvGetInt16_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt16_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@data = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16List_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt16List_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16List_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16List_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt16List_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt16List_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt16List_RequestCodec Instance = new Ros2Xarm_msgsSrvGetInt16List_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt16List_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt16List_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16List_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt16List_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt16List_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16List_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16List_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt16List_Request value = ReadRos2Xarm_msgsSrvGetInt16List_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt16List_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt16List_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt16List_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt16List_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt16List_Request ReadRos2Xarm_msgsSrvGetInt16List_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt16List_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16List_Response fields.
     * @details 3 ordered fields, canonical extent 10..330 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt16List_Response
    {
        public short @ret = 0;
        public string @message = "";
        public short[] @datas = new short[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16List_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt16List_Response fields.
     * @details 3 ordered fields, canonical extent 10..330 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt16List_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt16List_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt16List_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetInt16List_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt16List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt16List_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt16List_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 330;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16List_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt16List_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt16List_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16List_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt16List_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt16List_Response value = ReadRos2Xarm_msgsSrvGetInt16List_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt16List_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt16List_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt16List_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        short[] part2 = value.@datas;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            short element = part2[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt16List_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt16List_Response ReadRos2Xarm_msgsSrvGetInt16List_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt16List_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@datas = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt32_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt32_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt32_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt32_RequestCodec Instance = new Ros2Xarm_msgsSrvGetInt32_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt32_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt32_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt32_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt32_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt32_Request value = ReadRos2Xarm_msgsSrvGetInt32_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt32_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt32_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt32_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt32_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt32_Request ReadRos2Xarm_msgsSrvGetInt32_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt32_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt32_Response
    {
        public short @ret = 0;
        public string @message = "";
        public int @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt32_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt32_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt32_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetInt32_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt32_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt32_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt32_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt32_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt32_Response value = ReadRos2Xarm_msgsSrvGetInt32_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt32_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt32_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt32_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        int part2 = value.@data;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt32_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt32_Response ReadRos2Xarm_msgsSrvGetInt32_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt32_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@data = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32ByType_Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt32ByType_Request
    {
        public short @type = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32ByType_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32ByType_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32ByType_Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt32ByType_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec Instance = new Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32ByType_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt32ByType_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt32ByType_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32ByType_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt32ByType_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt32ByType_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32ByType_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32ByType_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt32ByType_Request value = ReadRos2Xarm_msgsSrvGetInt32ByType_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt32ByType_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt32ByType_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt32ByType_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@type;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt32ByType_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt32ByType_Request ReadRos2Xarm_msgsSrvGetInt32ByType_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt32ByType_Request();
        value.@type = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32ByType_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetInt32ByType_Response
    {
        public short @ret = 0;
        public string @message = "";
        public int @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32ByType_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32ByType_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetInt32ByType_Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetInt32ByType_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetInt32ByType_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetInt32ByType_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetInt32ByType_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32ByType_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetInt32ByType_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetInt32ByType_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32ByType_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetInt32ByType_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetInt32ByType_Response value = ReadRos2Xarm_msgsSrvGetInt32ByType_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetInt32ByType_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetInt32ByType_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetInt32ByType_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        int part2 = value.@data;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetInt32ByType_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetInt32ByType_Response ReadRos2Xarm_msgsSrvGetInt32ByType_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetInt32ByType_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@data = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetSetModbusData_Request fields.
     * @details 6 ordered fields, canonical extent 11..4107 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetSetModbusData_Request
    {
        public byte[] @modbus_data = new byte[0];
        public short @modbus_length = 0;
        public short @ret_length = 0;
        public byte @host_id = 9;
        public bool @is_transparent_transmission = false;
        public bool @use_503_port = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetSetModbusData_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetSetModbusData_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetSetModbusData_Request fields.
     * @details 6 ordered fields, canonical extent 11..4107 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetSetModbusData_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec Instance = new Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetSetModbusData_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetSetModbusData_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetSetModbusData_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd";
        public const int MIN_WIRE_BYTES = 11, MAX_WIRE_BYTES = 4107;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetSetModbusData_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetSetModbusData_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetSetModbusData_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetSetModbusData_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetSetModbusData_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetSetModbusData_Request value = ReadRos2Xarm_msgsSrvGetSetModbusData_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetSetModbusData_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetSetModbusData_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetSetModbusData_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte[] part0 = value.@modbus_data;
        if(part0 == null || part0.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            byte element = part0[index];
            writer.Unsigned(element, 1);
        }
        short part1 = value.@modbus_length;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@ret_length;
        writer.Unsigned(unchecked((ushort)part2), 2);
        byte part3 = value.@host_id;
        writer.Unsigned(part3, 1);
        bool part4 = value.@is_transparent_transmission;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@use_503_port;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/GetSetModbusData_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetSetModbusData_Request ReadRos2Xarm_msgsSrvGetSetModbusData_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetSetModbusData_Request();
        value.@modbus_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@modbus_data.Length; ++index)
            value.@modbus_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@modbus_length = unchecked((short)reader.Unsigned(2));
        value.@ret_length = unchecked((short)reader.Unsigned(2));
        value.@host_id = unchecked((byte)reader.Unsigned(1));
        value.@is_transparent_transmission = ReadBool(reader);
        value.@use_503_port = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetSetModbusData_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGetSetModbusData_Response
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @ret_data = new byte[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetSetModbusData_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetSetModbusData_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GetSetModbusData_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGetSetModbusData_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec Instance = new Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GetSetModbusData_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGetSetModbusData_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GetSetModbusData_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GetSetModbusData_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGetSetModbusData_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGetSetModbusData_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GetSetModbusData_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGetSetModbusData_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGetSetModbusData_Response value = ReadRos2Xarm_msgsSrvGetSetModbusData_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GetSetModbusData_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGetSetModbusData_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGetSetModbusData_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@ret_data;
        if(part2 == null || part2.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/GetSetModbusData_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGetSetModbusData_Response ReadRos2Xarm_msgsSrvGetSetModbusData_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGetSetModbusData_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@ret_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@ret_data.Length; ++index)
            value.@ret_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GripperMove_Request fields.
     * @details 3 ordered fields, canonical extent 9..9 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGripperMove_Request
    {
        public float @pos = 0;
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x41200000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GripperMove_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGripperMove_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GripperMove_Request fields.
     * @details 3 ordered fields, canonical extent 9..9 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGripperMove_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGripperMove_Request>
    {
        public static readonly Ros2Xarm_msgsSrvGripperMove_RequestCodec Instance = new Ros2Xarm_msgsSrvGripperMove_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GripperMove_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGripperMove_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GripperMove_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GripperMove_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGripperMove_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGripperMove_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GripperMove_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGripperMove_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGripperMove_Request value = ReadRos2Xarm_msgsSrvGripperMove_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GripperMove_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGripperMove_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGripperMove_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@pos;

        WriteFloat32(writer, part0);
        bool part1 = value.@wait;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@timeout;

        WriteFloat32(writer, part2);
    }

    /**
     * @brief Read one xarm_msgs/srv/GripperMove_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGripperMove_Request ReadRos2Xarm_msgsSrvGripperMove_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGripperMove_Request();
        value.@pos = ReadFloat32(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GripperMove_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvGripperMove_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GripperMove_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGripperMove_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/GripperMove_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvGripperMove_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvGripperMove_Response>
    {
        public static readonly Ros2Xarm_msgsSrvGripperMove_ResponseCodec Instance = new Ros2Xarm_msgsSrvGripperMove_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/GripperMove_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvGripperMove_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/GripperMove_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/GripperMove_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvGripperMove_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvGripperMove_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/GripperMove_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvGripperMove_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvGripperMove_Response value = ReadRos2Xarm_msgsSrvGripperMove_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/GripperMove_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvGripperMove_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvGripperMove_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/GripperMove_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvGripperMove_Response ReadRos2Xarm_msgsSrvGripperMove_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvGripperMove_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/IdenLoad_Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvIdenLoad_Request
    {
        public float @estimated_mass = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/IdenLoad_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvIdenLoad_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/IdenLoad_Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvIdenLoad_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvIdenLoad_Request>
    {
        public static readonly Ros2Xarm_msgsSrvIdenLoad_RequestCodec Instance = new Ros2Xarm_msgsSrvIdenLoad_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/IdenLoad_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvIdenLoad_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/IdenLoad_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/IdenLoad_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvIdenLoad_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvIdenLoad_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/IdenLoad_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvIdenLoad_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvIdenLoad_Request value = ReadRos2Xarm_msgsSrvIdenLoad_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/IdenLoad_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvIdenLoad_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvIdenLoad_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@estimated_mass;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/srv/IdenLoad_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvIdenLoad_Request ReadRos2Xarm_msgsSrvIdenLoad_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvIdenLoad_Request();
        value.@estimated_mass = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/IdenLoad_Response fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvIdenLoad_Response
    {
        public short @ret = 0;
        public string @message = "";
        public float[] @datas = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/IdenLoad_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvIdenLoad_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/IdenLoad_Response fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvIdenLoad_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvIdenLoad_Response>
    {
        public static readonly Ros2Xarm_msgsSrvIdenLoad_ResponseCodec Instance = new Ros2Xarm_msgsSrvIdenLoad_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/IdenLoad_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvIdenLoad_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/IdenLoad_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/IdenLoad_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvIdenLoad_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvIdenLoad_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/IdenLoad_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvIdenLoad_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvIdenLoad_Response value = ReadRos2Xarm_msgsSrvIdenLoad_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/IdenLoad_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvIdenLoad_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvIdenLoad_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        float[] part2 = value.@datas;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/IdenLoad_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvIdenLoad_Response ReadRos2Xarm_msgsSrvIdenLoad_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvIdenLoad_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorBackOrigin_Request fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request
    {
        public bool @wait = true;
        public bool @auto_enable = true;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorBackOrigin_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorBackOrigin_Request fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request>
    {
        public static readonly Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec Instance = new Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorBackOrigin_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearMotorBackOrigin_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearMotorBackOrigin_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c9d87b79119e9fd9efcf7cd7bdbe40f3e3a2244b1c97149da5c2ff93163a6b45";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorBackOrigin_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorBackOrigin_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value = ReadRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearMotorBackOrigin_Request component into checked
     * staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@wait;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        bool part1 = value.@auto_enable;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearMotorBackOrigin_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request ReadRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request();
        value.@wait = ReadBool(reader);
        value.@auto_enable = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorBackOrigin_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorBackOrigin_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorBackOrigin_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response>
    {
        public static readonly Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec Instance = new Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorBackOrigin_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearMotorBackOrigin_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearMotorBackOrigin_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_159fa7c79b6d14e044085bc7969a984af68bfab04cfd092a4982b2de24e9e02d";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorBackOrigin_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorBackOrigin_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value = ReadRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearMotorBackOrigin_Response component into checked
     * staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearMotorBackOrigin_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response ReadRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorSetPos_Request fields.
     * @details 5 ordered fields, canonical extent 10..10 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearMotorSetPos_Request
    {
        public short @pos = 0;
        public short @speed = 0;
        public bool @wait = true;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x42c80000U));
        public bool @auto_enable = true;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorSetPos_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorSetPos_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorSetPos_Request fields.
     * @details 5 ordered fields, canonical extent 10..10 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearMotorSetPos_Request>
    {
        public static readonly Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec Instance = new Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorSetPos_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearMotorSetPos_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearMotorSetPos_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5babc4a61d86991a7be456e48f86c175f0189b96e5506b779adcbe6e4ece97dd";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorSetPos_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearMotorSetPos_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearMotorSetPos_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorSetPos_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorSetPos_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearMotorSetPos_Request value = ReadRos2Xarm_msgsSrvLinearMotorSetPos_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearMotorSetPos_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearMotorSetPos_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearMotorSetPos_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@pos;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@speed;
        writer.Unsigned(unchecked((ushort)part1), 2);
        bool part2 = value.@wait;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        float part3 = value.@timeout;

        WriteFloat32(writer, part3);
        bool part4 = value.@auto_enable;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearMotorSetPos_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearMotorSetPos_Request ReadRos2Xarm_msgsSrvLinearMotorSetPos_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearMotorSetPos_Request();
        value.@pos = unchecked((short)reader.Unsigned(2));
        value.@speed = unchecked((short)reader.Unsigned(2));
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@auto_enable = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorSetPos_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearMotorSetPos_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorSetPos_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorSetPos_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearMotorSetPos_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearMotorSetPos_Response>
    {
        public static readonly Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec Instance = new Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearMotorSetPos_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearMotorSetPos_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearMotorSetPos_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f2bc623880b42ee6f94117ecdf846785cac064a2c5e81df5f2ff8c3e9179106d";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorSetPos_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearMotorSetPos_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearMotorSetPos_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorSetPos_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearMotorSetPos_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearMotorSetPos_Response value = ReadRos2Xarm_msgsSrvLinearMotorSetPos_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearMotorSetPos_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearMotorSetPos_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearMotorSetPos_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearMotorSetPos_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearMotorSetPos_Response ReadRos2Xarm_msgsSrvLinearMotorSetPos_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearMotorSetPos_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackBackOrigin_Request fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
    {
        public bool @wait = true;
        public bool @auto_enable = true;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackBackOrigin_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackBackOrigin_Request fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request>
    {
        public static readonly Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec Instance = new Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackBackOrigin_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearTrackBackOrigin_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearTrackBackOrigin_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackBackOrigin_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackBackOrigin_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value = ReadRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearTrackBackOrigin_Request component into checked
     * staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@wait;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        bool part1 = value.@auto_enable;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearTrackBackOrigin_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request ReadRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request();
        value.@wait = ReadBool(reader);
        value.@auto_enable = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackBackOrigin_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackBackOrigin_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackBackOrigin_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>
    {
        public static readonly Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec Instance = new Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackBackOrigin_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearTrackBackOrigin_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearTrackBackOrigin_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackBackOrigin_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackBackOrigin_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value = ReadRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearTrackBackOrigin_Response component into checked
     * staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearTrackBackOrigin_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response ReadRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackSetPos_Request fields.
     * @details 5 ordered fields, canonical extent 10..10 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearTrackSetPos_Request
    {
        public short @pos = 0;
        public short @speed = 0;
        public bool @wait = true;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x42c80000U));
        public bool @auto_enable = true;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackSetPos_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackSetPos_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackSetPos_Request fields.
     * @details 5 ordered fields, canonical extent 10..10 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearTrackSetPos_Request>
    {
        public static readonly Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec Instance = new Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackSetPos_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearTrackSetPos_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearTrackSetPos_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackSetPos_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearTrackSetPos_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearTrackSetPos_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackSetPos_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackSetPos_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearTrackSetPos_Request value = ReadRos2Xarm_msgsSrvLinearTrackSetPos_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearTrackSetPos_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearTrackSetPos_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearTrackSetPos_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@pos;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@speed;
        writer.Unsigned(unchecked((ushort)part1), 2);
        bool part2 = value.@wait;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        float part3 = value.@timeout;

        WriteFloat32(writer, part3);
        bool part4 = value.@auto_enable;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearTrackSetPos_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearTrackSetPos_Request ReadRos2Xarm_msgsSrvLinearTrackSetPos_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearTrackSetPos_Request();
        value.@pos = unchecked((short)reader.Unsigned(2));
        value.@speed = unchecked((short)reader.Unsigned(2));
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@auto_enable = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackSetPos_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvLinearTrackSetPos_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackSetPos_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackSetPos_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/LinearTrackSetPos_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvLinearTrackSetPos_Response>
    {
        public static readonly Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec Instance = new Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/LinearTrackSetPos_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvLinearTrackSetPos_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/LinearTrackSetPos_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackSetPos_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvLinearTrackSetPos_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvLinearTrackSetPos_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackSetPos_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvLinearTrackSetPos_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvLinearTrackSetPos_Response value = ReadRos2Xarm_msgsSrvLinearTrackSetPos_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/LinearTrackSetPos_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvLinearTrackSetPos_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvLinearTrackSetPos_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/LinearTrackSetPos_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvLinearTrackSetPos_Response ReadRos2Xarm_msgsSrvLinearTrackSetPos_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvLinearTrackSetPos_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCartesian_Request fields.
     * @details 10 ordered fields, canonical extent 28..156 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveCartesian_Request
    {
        public float[] @pose = new float[0];
        public float @speed = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @acc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @mvtime = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));
        public float @radius = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));
        public bool @is_tool_coord = false;
        public bool @relative = false;
        public byte @motion_type = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCartesian_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCartesian_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCartesian_Request fields.
     * @details 10 ordered fields, canonical extent 28..156 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveCartesian_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveCartesian_Request>
    {
        public static readonly Ros2Xarm_msgsSrvMoveCartesian_RequestCodec Instance = new Ros2Xarm_msgsSrvMoveCartesian_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCartesian_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveCartesian_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveCartesian_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_42c90af2eabc1a42376918d5cb862b4d8f8b2a3f958b7c444c8d8cccb2435512";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCartesian_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveCartesian_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveCartesian_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCartesian_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCartesian_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveCartesian_Request value = ReadRos2Xarm_msgsSrvMoveCartesian_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveCartesian_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveCartesian_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveCartesian_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@pose;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];
            WriteFloat32(writer, element);
        }
        float part1 = value.@speed;

        WriteFloat32(writer, part1);
        float part2 = value.@acc;

        WriteFloat32(writer, part2);
        float part3 = value.@mvtime;

        WriteFloat32(writer, part3);
        bool part4 = value.@wait;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        float part5 = value.@timeout;

        WriteFloat32(writer, part5);
        float part6 = value.@radius;

        WriteFloat32(writer, part6);
        bool part7 = value.@is_tool_coord;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
        bool part8 = value.@relative;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        byte part9 = value.@motion_type;
        writer.Unsigned(part9, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveCartesian_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveCartesian_Request ReadRos2Xarm_msgsSrvMoveCartesian_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveCartesian_Request();
        value.@pose = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@pose.Length; ++index)
            value.@pose[index] = ReadFloat32(reader);
        value.@speed = ReadFloat32(reader);
        value.@acc = ReadFloat32(reader);
        value.@mvtime = ReadFloat32(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@radius = ReadFloat32(reader);
        value.@is_tool_coord = ReadBool(reader);
        value.@relative = ReadBool(reader);
        value.@motion_type = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCartesian_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveCartesian_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCartesian_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCartesian_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCartesian_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveCartesian_Response>
    {
        public static readonly Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec Instance = new Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCartesian_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveCartesian_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveCartesian_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCartesian_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveCartesian_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveCartesian_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCartesian_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCartesian_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveCartesian_Response value = ReadRos2Xarm_msgsSrvMoveCartesian_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveCartesian_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveCartesian_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveCartesian_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveCartesian_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveCartesian_Response ReadRos2Xarm_msgsSrvMoveCartesian_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveCartesian_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCircle_Request fields.
     * @details 10 ordered fields, canonical extent 31..287 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveCircle_Request
    {
        public float[] @pose1 = new float[0];
        public float[] @pose2 = new float[0];
        public float @percent = 0;
        public float @speed = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @acc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @mvtime = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));
        public bool @is_tool_coord = false;
        public bool @is_axis_angle = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCircle_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCircle_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCircle_Request fields.
     * @details 10 ordered fields, canonical extent 31..287 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveCircle_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveCircle_Request>
    {
        public static readonly Ros2Xarm_msgsSrvMoveCircle_RequestCodec Instance = new Ros2Xarm_msgsSrvMoveCircle_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCircle_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveCircle_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveCircle_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1ad9d0ee80dfb636f7cdbccd1b510bd123f13615a16bed966bd5e8829a3b7f1b";
        public const int MIN_WIRE_BYTES = 31, MAX_WIRE_BYTES = 287;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCircle_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveCircle_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveCircle_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCircle_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCircle_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveCircle_Request value = ReadRos2Xarm_msgsSrvMoveCircle_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveCircle_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveCircle_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveCircle_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@pose1;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float[] part1 = value.@pose2;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
        float part2 = value.@percent;

        WriteFloat32(writer, part2);
        float part3 = value.@speed;

        WriteFloat32(writer, part3);
        float part4 = value.@acc;

        WriteFloat32(writer, part4);
        float part5 = value.@mvtime;

        WriteFloat32(writer, part5);
        bool part6 = value.@wait;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        float part7 = value.@timeout;

        WriteFloat32(writer, part7);
        bool part8 = value.@is_tool_coord;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        bool part9 = value.@is_axis_angle;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveCircle_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveCircle_Request ReadRos2Xarm_msgsSrvMoveCircle_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveCircle_Request();
        value.@pose1 = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@pose1.Length; ++index)
            value.@pose1[index] = ReadFloat32(reader);
        value.@pose2 = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@pose2.Length; ++index)
            value.@pose2[index] = ReadFloat32(reader);
        value.@percent = ReadFloat32(reader);
        value.@speed = ReadFloat32(reader);
        value.@acc = ReadFloat32(reader);
        value.@mvtime = ReadFloat32(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@is_tool_coord = ReadBool(reader);
        value.@is_axis_angle = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCircle_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveCircle_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCircle_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCircle_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveCircle_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveCircle_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveCircle_Response>
    {
        public static readonly Ros2Xarm_msgsSrvMoveCircle_ResponseCodec Instance = new Ros2Xarm_msgsSrvMoveCircle_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveCircle_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveCircle_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveCircle_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCircle_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveCircle_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveCircle_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCircle_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveCircle_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveCircle_Response value = ReadRos2Xarm_msgsSrvMoveCircle_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveCircle_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveCircle_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveCircle_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveCircle_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveCircle_Response ReadRos2Xarm_msgsSrvMoveCircle_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveCircle_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveHome_Request fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveHome_Request
    {
        public float @speed = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @acc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @mvtime = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveHome_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveHome_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveHome_Request fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveHome_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveHome_Request>
    {
        public static readonly Ros2Xarm_msgsSrvMoveHome_RequestCodec Instance = new Ros2Xarm_msgsSrvMoveHome_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveHome_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveHome_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveHome_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveHome_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveHome_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveHome_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveHome_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveHome_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveHome_Request value = ReadRos2Xarm_msgsSrvMoveHome_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveHome_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveHome_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveHome_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@speed;

        WriteFloat32(writer, part0);
        float part1 = value.@acc;

        WriteFloat32(writer, part1);
        float part2 = value.@mvtime;

        WriteFloat32(writer, part2);
        bool part3 = value.@wait;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        float part4 = value.@timeout;

        WriteFloat32(writer, part4);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveHome_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveHome_Request ReadRos2Xarm_msgsSrvMoveHome_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveHome_Request();
        value.@speed = ReadFloat32(reader);
        value.@acc = ReadFloat32(reader);
        value.@mvtime = ReadFloat32(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveHome_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveHome_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveHome_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveHome_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveHome_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveHome_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveHome_Response>
    {
        public static readonly Ros2Xarm_msgsSrvMoveHome_ResponseCodec Instance = new Ros2Xarm_msgsSrvMoveHome_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveHome_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveHome_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveHome_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveHome_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveHome_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveHome_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveHome_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveHome_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveHome_Response value = ReadRos2Xarm_msgsSrvMoveHome_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveHome_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveHome_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveHome_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveHome_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveHome_Response ReadRos2Xarm_msgsSrvMoveHome_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveHome_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveJoint_Request fields.
     * @details 8 ordered fields, canonical extent 26..154 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveJoint_Request
    {
        public float[] @angles = new float[0];
        public float @speed = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @acc = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float @mvtime = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));
        public float @radius = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));
        public bool @relative = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveJoint_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveJoint_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveJoint_Request fields.
     * @details 8 ordered fields, canonical extent 26..154 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveJoint_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveJoint_Request>
    {
        public static readonly Ros2Xarm_msgsSrvMoveJoint_RequestCodec Instance = new Ros2Xarm_msgsSrvMoveJoint_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveJoint_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveJoint_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveJoint_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0216b4ff8cf8baff2e2891d6a8d6d1397a42a750f68698d97dfc08d00e7c8d7";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 154;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveJoint_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveJoint_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveJoint_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveJoint_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveJoint_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveJoint_Request value = ReadRos2Xarm_msgsSrvMoveJoint_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveJoint_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveJoint_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveJoint_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@angles;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float part1 = value.@speed;

        WriteFloat32(writer, part1);
        float part2 = value.@acc;

        WriteFloat32(writer, part2);
        float part3 = value.@mvtime;

        WriteFloat32(writer, part3);
        bool part4 = value.@wait;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        float part5 = value.@timeout;

        WriteFloat32(writer, part5);
        float part6 = value.@radius;

        WriteFloat32(writer, part6);
        bool part7 = value.@relative;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveJoint_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveJoint_Request ReadRos2Xarm_msgsSrvMoveJoint_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveJoint_Request();
        value.@angles = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@angles.Length; ++index)
            value.@angles[index] = ReadFloat32(reader);
        value.@speed = ReadFloat32(reader);
        value.@acc = ReadFloat32(reader);
        value.@mvtime = ReadFloat32(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@radius = ReadFloat32(reader);
        value.@relative = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveJoint_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveJoint_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveJoint_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveJoint_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveJoint_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveJoint_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveJoint_Response>
    {
        public static readonly Ros2Xarm_msgsSrvMoveJoint_ResponseCodec Instance = new Ros2Xarm_msgsSrvMoveJoint_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveJoint_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveJoint_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveJoint_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveJoint_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveJoint_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveJoint_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveJoint_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveJoint_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveJoint_Response value = ReadRos2Xarm_msgsSrvMoveJoint_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveJoint_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveJoint_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveJoint_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveJoint_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveJoint_Response ReadRos2Xarm_msgsSrvMoveJoint_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveJoint_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveVelocity_Request fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveVelocity_Request
    {
        public float[] @speeds = new float[0];
        public bool @is_sync = true;
        public bool @is_tool_coord = false;
        public float @duration = BitConverter.Int32BitsToSingle(unchecked((int)0xbf800000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveVelocity_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveVelocity_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveVelocity_Request fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveVelocity_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveVelocity_Request>
    {
        public static readonly Ros2Xarm_msgsSrvMoveVelocity_RequestCodec Instance = new Ros2Xarm_msgsSrvMoveVelocity_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveVelocity_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveVelocity_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveVelocity_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveVelocity_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveVelocity_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveVelocity_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveVelocity_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveVelocity_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveVelocity_Request value = ReadRos2Xarm_msgsSrvMoveVelocity_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveVelocity_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveVelocity_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveVelocity_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@speeds;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        bool part1 = value.@is_sync;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        bool part2 = value.@is_tool_coord;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        float part3 = value.@duration;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveVelocity_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveVelocity_Request ReadRos2Xarm_msgsSrvMoveVelocity_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveVelocity_Request();
        value.@speeds = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@speeds.Length; ++index)
            value.@speeds[index] = ReadFloat32(reader);
        value.@is_sync = ReadBool(reader);
        value.@is_tool_coord = ReadBool(reader);
        value.@duration = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveVelocity_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvMoveVelocity_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveVelocity_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveVelocity_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/MoveVelocity_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvMoveVelocity_Response>
    {
        public static readonly Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec Instance = new Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/MoveVelocity_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvMoveVelocity_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/MoveVelocity_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/MoveVelocity_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvMoveVelocity_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvMoveVelocity_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/MoveVelocity_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvMoveVelocity_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvMoveVelocity_Response value = ReadRos2Xarm_msgsSrvMoveVelocity_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/MoveVelocity_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvMoveVelocity_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvMoveVelocity_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/MoveVelocity_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvMoveVelocity_Response ReadRos2Xarm_msgsSrvMoveVelocity_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvMoveVelocity_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanExec_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanExec_Request
    {
        public bool @wait = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanExec_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanExec_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanExec_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanExec_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanExec_Request>
    {
        public static readonly Ros2Xarm_msgsSrvPlanExec_RequestCodec Instance = new Ros2Xarm_msgsSrvPlanExec_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanExec_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanExec_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanExec_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanExec_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanExec_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanExec_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanExec_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanExec_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanExec_Request value = ReadRos2Xarm_msgsSrvPlanExec_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanExec_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanExec_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanExec_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@wait;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanExec_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanExec_Request ReadRos2Xarm_msgsSrvPlanExec_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanExec_Request();
        value.@wait = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanExec_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanExec_Response
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanExec_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanExec_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanExec_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanExec_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanExec_Response>
    {
        public static readonly Ros2Xarm_msgsSrvPlanExec_ResponseCodec Instance = new Ros2Xarm_msgsSrvPlanExec_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanExec_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanExec_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanExec_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanExec_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanExec_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanExec_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanExec_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanExec_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanExec_Response value = ReadRos2Xarm_msgsSrvPlanExec_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanExec_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanExec_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanExec_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanExec_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanExec_Response ReadRos2Xarm_msgsSrvPlanExec_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanExec_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanJoint_Request fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanJoint_Request
    {
        public double[] @target = new double[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanJoint_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanJoint_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanJoint_Request fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanJoint_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanJoint_Request>
    {
        public static readonly Ros2Xarm_msgsSrvPlanJoint_RequestCodec Instance = new Ros2Xarm_msgsSrvPlanJoint_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanJoint_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanJoint_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanJoint_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanJoint_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanJoint_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanJoint_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanJoint_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanJoint_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanJoint_Request value = ReadRos2Xarm_msgsSrvPlanJoint_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanJoint_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanJoint_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanJoint_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        double[] part0 = value.@target;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            double element = part0[index];
            writer.Float64(element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanJoint_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanJoint_Request ReadRos2Xarm_msgsSrvPlanJoint_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanJoint_Request();
        value.@target = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@target.Length; ++index)
            value.@target[index] = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanJoint_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanJoint_Response
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanJoint_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanJoint_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanJoint_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanJoint_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanJoint_Response>
    {
        public static readonly Ros2Xarm_msgsSrvPlanJoint_ResponseCodec Instance = new Ros2Xarm_msgsSrvPlanJoint_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanJoint_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanJoint_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanJoint_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanJoint_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanJoint_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanJoint_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanJoint_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanJoint_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanJoint_Response value = ReadRos2Xarm_msgsSrvPlanJoint_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanJoint_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanJoint_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanJoint_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanJoint_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanJoint_Response ReadRos2Xarm_msgsSrvPlanJoint_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanJoint_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanPose_Request fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanPose_Request
    {
        public _Ros2Geometry_msgsMsgPose @target = new _Ros2Geometry_msgsMsgPose();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanPose_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanPose_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanPose_Request fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanPose_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanPose_Request>
    {
        public static readonly Ros2Xarm_msgsSrvPlanPose_RequestCodec Instance = new Ros2Xarm_msgsSrvPlanPose_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanPose_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanPose_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanPose_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanPose_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanPose_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanPose_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanPose_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanPose_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanPose_Request value = ReadRos2Xarm_msgsSrvPlanPose_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanPose_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanPose_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanPose_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@target;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanPose_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanPose_Request ReadRos2Xarm_msgsSrvPlanPose_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanPose_Request();
        value.@target = ReadRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanPose_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanPose_Response
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanPose_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanPose_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanPose_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanPose_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanPose_Response>
    {
        public static readonly Ros2Xarm_msgsSrvPlanPose_ResponseCodec Instance = new Ros2Xarm_msgsSrvPlanPose_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanPose_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanPose_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanPose_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanPose_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanPose_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanPose_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanPose_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanPose_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanPose_Response value = ReadRos2Xarm_msgsSrvPlanPose_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanPose_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanPose_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanPose_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanPose_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanPose_Response ReadRos2Xarm_msgsSrvPlanPose_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanPose_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanSingleStraight_Request fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanSingleStraight_Request
    {
        public _Ros2Geometry_msgsMsgPose @target = new _Ros2Geometry_msgsMsgPose();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanSingleStraight_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanSingleStraight_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanSingleStraight_Request fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanSingleStraight_Request>
    {
        public static readonly Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec Instance = new Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanSingleStraight_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanSingleStraight_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanSingleStraight_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanSingleStraight_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanSingleStraight_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanSingleStraight_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanSingleStraight_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanSingleStraight_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanSingleStraight_Request value = ReadRos2Xarm_msgsSrvPlanSingleStraight_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanSingleStraight_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanSingleStraight_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanSingleStraight_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@target;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanSingleStraight_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanSingleStraight_Request ReadRos2Xarm_msgsSrvPlanSingleStraight_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanSingleStraight_Request();
        value.@target = ReadRos2Geometry_msgsMsgPose(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanSingleStraight_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvPlanSingleStraight_Response
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanSingleStraight_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanSingleStraight_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/PlanSingleStraight_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvPlanSingleStraight_Response>
    {
        public static readonly Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec Instance = new Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/PlanSingleStraight_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvPlanSingleStraight_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/PlanSingleStraight_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/PlanSingleStraight_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvPlanSingleStraight_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvPlanSingleStraight_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/PlanSingleStraight_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvPlanSingleStraight_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvPlanSingleStraight_Response value = ReadRos2Xarm_msgsSrvPlanSingleStraight_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/PlanSingleStraight_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvPlanSingleStraight_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvPlanSingleStraight_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/PlanSingleStraight_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvPlanSingleStraight_Response ReadRos2Xarm_msgsSrvPlanSingleStraight_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvPlanSingleStraight_Response();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqActivate_Request fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqActivate_Request
    {
        public bool @wait = true;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x40400000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqActivate_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqActivate_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqActivate_Request fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqActivate_Request>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec Instance = new Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqActivate_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqActivate_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqActivate_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqActivate_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqActivate_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqActivate_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqActivate_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqActivate_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqActivate_Request value = ReadRos2Xarm_msgsSrvRobotiqActivate_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqActivate_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqActivate_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqActivate_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@wait;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        float part1 = value.@timeout;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqActivate_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqActivate_Request ReadRos2Xarm_msgsSrvRobotiqActivate_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqActivate_Request();
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqActivate_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqActivate_Response
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @ret_data = new byte[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqActivate_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqActivate_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqActivate_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqActivate_Response>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec Instance = new Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqActivate_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqActivate_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqActivate_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqActivate_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqActivate_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqActivate_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqActivate_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqActivate_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqActivate_Response value = ReadRos2Xarm_msgsSrvRobotiqActivate_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqActivate_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqActivate_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqActivate_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@ret_data;
        if(part2 == null || part2.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqActivate_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqActivate_Response ReadRos2Xarm_msgsSrvRobotiqActivate_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqActivate_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@ret_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@ret_data.Length; ++index)
            value.@ret_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqGetStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqGetStatus_Request
    {
        public byte @number_of_registers = 3;

        /**
         * @brief Check the complete finite representation of xarm_msgs/srv/RobotiqGetStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqGetStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqGetStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqGetStatus_Request>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec Instance = new Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of xarm_msgs/srv/RobotiqGetStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqGetStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqGetStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqGetStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqGetStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqGetStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqGetStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqGetStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqGetStatus_Request value = ReadRos2Xarm_msgsSrvRobotiqGetStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqGetStatus_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqGetStatus_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqGetStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@number_of_registers;
        writer.Unsigned(part0, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqGetStatus_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqGetStatus_Request ReadRos2Xarm_msgsSrvRobotiqGetStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqGetStatus_Request();
        value.@number_of_registers = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqGetStatus_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqGetStatus_Response
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @ret_data = new byte[0];

        /**
         * @brief Check the complete finite representation of xarm_msgs/srv/RobotiqGetStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqGetStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqGetStatus_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqGetStatus_Response>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec Instance = new Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of xarm_msgs/srv/RobotiqGetStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqGetStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqGetStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqGetStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqGetStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqGetStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqGetStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqGetStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqGetStatus_Response value = ReadRos2Xarm_msgsSrvRobotiqGetStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqGetStatus_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqGetStatus_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqGetStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@ret_data;
        if(part2 == null || part2.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqGetStatus_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqGetStatus_Response ReadRos2Xarm_msgsSrvRobotiqGetStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqGetStatus_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@ret_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@ret_data.Length; ++index)
            value.@ret_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqMove_Request fields.
     * @details 5 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqMove_Request
    {
        public byte @pos = 0;
        public byte @speed = 255;
        public byte @force = 255;
        public bool @wait = true;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x40a00000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqMove_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqMove_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqMove_Request fields.
     * @details 5 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqMove_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqMove_Request>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqMove_RequestCodec Instance = new Ros2Xarm_msgsSrvRobotiqMove_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqMove_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqMove_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqMove_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqMove_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqMove_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqMove_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqMove_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqMove_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqMove_Request value = ReadRos2Xarm_msgsSrvRobotiqMove_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqMove_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqMove_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqMove_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@pos;
        writer.Unsigned(part0, 1);
        byte part1 = value.@speed;
        writer.Unsigned(part1, 1);
        byte part2 = value.@force;
        writer.Unsigned(part2, 1);
        bool part3 = value.@wait;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        float part4 = value.@timeout;

        WriteFloat32(writer, part4);
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqMove_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqMove_Request ReadRos2Xarm_msgsSrvRobotiqMove_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqMove_Request();
        value.@pos = unchecked((byte)reader.Unsigned(1));
        value.@speed = unchecked((byte)reader.Unsigned(1));
        value.@force = unchecked((byte)reader.Unsigned(1));
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqMove_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqMove_Response
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @ret_data = new byte[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqMove_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqMove_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqMove_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqMove_Response>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec Instance = new Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqMove_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqMove_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqMove_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqMove_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqMove_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqMove_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqMove_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqMove_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqMove_Response value = ReadRos2Xarm_msgsSrvRobotiqMove_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqMove_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqMove_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqMove_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@ret_data;
        if(part2 == null || part2.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqMove_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqMove_Response ReadRos2Xarm_msgsSrvRobotiqMove_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqMove_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@ret_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@ret_data.Length; ++index)
            value.@ret_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqReset_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqReset_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqReset_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqReset_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqReset_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqReset_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqReset_Request>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqReset_RequestCodec Instance = new Ros2Xarm_msgsSrvRobotiqReset_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqReset_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqReset_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqReset_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqReset_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqReset_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqReset_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqReset_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqReset_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqReset_Request value = ReadRos2Xarm_msgsSrvRobotiqReset_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqReset_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqReset_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqReset_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqReset_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqReset_Request ReadRos2Xarm_msgsSrvRobotiqReset_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqReset_Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqReset_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvRobotiqReset_Response
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @ret_data = new byte[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqReset_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqReset_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/RobotiqReset_Response fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvRobotiqReset_Response>
    {
        public static readonly Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec Instance = new Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/RobotiqReset_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvRobotiqReset_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/RobotiqReset_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqReset_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvRobotiqReset_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvRobotiqReset_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqReset_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvRobotiqReset_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvRobotiqReset_Response value = ReadRos2Xarm_msgsSrvRobotiqReset_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/RobotiqReset_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvRobotiqReset_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvRobotiqReset_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@ret_data;
        if(part2 == null || part2.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            byte element = part2[index];
            writer.Unsigned(element, 1);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/RobotiqReset_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvRobotiqReset_Response ReadRos2Xarm_msgsSrvRobotiqReset_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvRobotiqReset_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@ret_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@ret_data.Length; ++index)
            value.@ret_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetAnalogIO_Request fields.
     * @details 4 ordered fields, canonical extent 14..142 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetAnalogIO_Request
    {
        public short @ionum = 0;
        public float @value = 0;
        public float[] @xyz = new float[0];
        public float @tol_r = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetAnalogIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetAnalogIO_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetAnalogIO_Request fields.
     * @details 4 ordered fields, canonical extent 14..142 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetAnalogIO_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec Instance = new Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetAnalogIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetAnalogIO_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetAnalogIO_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 142;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetAnalogIO_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetAnalogIO_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetAnalogIO_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetAnalogIO_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetAnalogIO_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            /**
             * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
             * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            _Ros2Xarm_msgsSrvSetAnalogIO_Request value = ReadRos2Xarm_msgsSrvSetAnalogIO_Request(reader);
            reader.End();
            /**
             * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
             * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetAnalogIO_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetAnalogIO_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetAnalogIO_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ionum;
        writer.Unsigned(unchecked((ushort)part0), 2);
        float part1 = value.@value;

        WriteFloat32(writer, part1);
        float[] part2 = value.@xyz;
        if(part2 == null || part2.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            float element = part2[index];

            WriteFloat32(writer, element);
        }
        float part3 = value.@tol_r;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetAnalogIO_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetAnalogIO_Request ReadRos2Xarm_msgsSrvSetAnalogIO_Request(_Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        var value = new _Ros2Xarm_msgsSrvSetAnalogIO_Request();
        value.@ionum = unchecked((short)reader.Unsigned(2));
        value.@value = ReadFloat32(reader);
        value.@xyz = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@xyz.Length; ++index)
            value.@xyz[index] = ReadFloat32(reader);
        value.@tol_r = ReadFloat32(reader);
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetAnalogIO_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetAnalogIO_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetAnalogIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetAnalogIO_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetAnalogIO_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetAnalogIO_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetAnalogIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetAnalogIO_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetAnalogIO_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetAnalogIO_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetAnalogIO_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetAnalogIO_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetAnalogIO_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetAnalogIO_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetAnalogIO_Response value = ReadRos2Xarm_msgsSrvSetAnalogIO_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetAnalogIO_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetAnalogIO_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetAnalogIO_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetAnalogIO_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetAnalogIO_Response ReadRos2Xarm_msgsSrvSetAnalogIO_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetAnalogIO_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetDigitalIO_Request fields.
     * @details 5 ordered fields, canonical extent 16..144 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetDigitalIO_Request
    {
        public short @ionum = 0;
        public short @value = 0;
        public float @delay_sec = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public float[] @xyz = new float[0];
        public float @tol_r = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetDigitalIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetDigitalIO_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetDigitalIO_Request fields.
     * @details 5 ordered fields, canonical extent 16..144 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetDigitalIO_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec Instance = new Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetDigitalIO_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetDigitalIO_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetDigitalIO_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetDigitalIO_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetDigitalIO_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetDigitalIO_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetDigitalIO_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetDigitalIO_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            /**
             * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
             * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            _Ros2Xarm_msgsSrvSetDigitalIO_Request value = ReadRos2Xarm_msgsSrvSetDigitalIO_Request(reader);
            reader.End();
            /**
             * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
             * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetDigitalIO_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetDigitalIO_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetDigitalIO_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ionum;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@value;
        writer.Unsigned(unchecked((ushort)part1), 2);
        float part2 = value.@delay_sec;

        WriteFloat32(writer, part2);
        float[] part3 = value.@xyz;
        if(part3 == null || part3.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            float element = part3[index];

            WriteFloat32(writer, element);
        }
        float part4 = value.@tol_r;

        WriteFloat32(writer, part4);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetDigitalIO_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetDigitalIO_Request ReadRos2Xarm_msgsSrvSetDigitalIO_Request(_Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        var value = new _Ros2Xarm_msgsSrvSetDigitalIO_Request();
        value.@ionum = unchecked((short)reader.Unsigned(2));
        value.@value = unchecked((short)reader.Unsigned(2));
        value.@delay_sec = ReadFloat32(reader);
        value.@xyz = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@xyz.Length; ++index)
            value.@xyz[index] = ReadFloat32(reader);
        value.@tol_r = ReadFloat32(reader);
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetDigitalIO_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetDigitalIO_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetDigitalIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetDigitalIO_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetDigitalIO_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetDigitalIO_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetDigitalIO_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetDigitalIO_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetDigitalIO_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetDigitalIO_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetDigitalIO_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetDigitalIO_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetDigitalIO_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetDigitalIO_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetDigitalIO_Response value = ReadRos2Xarm_msgsSrvSetDigitalIO_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetDigitalIO_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetDigitalIO_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetDigitalIO_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetDigitalIO_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetDigitalIO_Response ReadRos2Xarm_msgsSrvSetDigitalIO_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetDigitalIO_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32_Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetFloat32_Request
    {
        public float @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32_Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetFloat32_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetFloat32_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetFloat32_RequestCodec Instance = new Ros2Xarm_msgsSrvSetFloat32_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetFloat32_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetFloat32_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetFloat32_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetFloat32_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetFloat32_Request value = ReadRos2Xarm_msgsSrvSetFloat32_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetFloat32_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetFloat32_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetFloat32_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@data;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetFloat32_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetFloat32_Request ReadRos2Xarm_msgsSrvSetFloat32_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetFloat32_Request();
        value.@data = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetFloat32_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetFloat32_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetFloat32_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetFloat32_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetFloat32_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetFloat32_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetFloat32_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetFloat32_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetFloat32_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetFloat32_Response value = ReadRos2Xarm_msgsSrvSetFloat32_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetFloat32_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetFloat32_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetFloat32_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetFloat32_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetFloat32_Response ReadRos2Xarm_msgsSrvSetFloat32_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetFloat32_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32List_Request fields.
     * @details 1 ordered fields, canonical extent 4..132 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetFloat32List_Request
    {
        public float[] @datas = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32List_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32List_Request fields.
     * @details 1 ordered fields, canonical extent 4..132 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetFloat32List_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetFloat32List_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetFloat32List_RequestCodec Instance = new Ros2Xarm_msgsSrvSetFloat32List_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetFloat32List_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetFloat32List_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 132;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32List_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetFloat32List_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetFloat32List_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32List_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32List_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetFloat32List_Request value = ReadRos2Xarm_msgsSrvSetFloat32List_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetFloat32List_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetFloat32List_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetFloat32List_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@datas;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/SetFloat32List_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetFloat32List_Request ReadRos2Xarm_msgsSrvSetFloat32List_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetFloat32List_Request();
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32List_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetFloat32List_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32List_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetFloat32List_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetFloat32List_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetFloat32List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetFloat32List_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetFloat32List_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32List_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetFloat32List_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetFloat32List_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32List_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetFloat32List_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetFloat32List_Response value = ReadRos2Xarm_msgsSrvSetFloat32List_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetFloat32List_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetFloat32List_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetFloat32List_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetFloat32List_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetFloat32List_Response ReadRos2Xarm_msgsSrvSetFloat32List_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetFloat32List_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16_Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt16_Request
    {
        public short @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16_Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt16_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt16_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt16_RequestCodec Instance = new Ros2Xarm_msgsSrvSetInt16_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt16_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt16_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt16_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt16_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt16_Request value = ReadRos2Xarm_msgsSrvSetInt16_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt16_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt16_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt16_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@data;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt16_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt16_Request ReadRos2Xarm_msgsSrvSetInt16_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt16_Request();
        value.@data = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt16_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt16_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt16_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt16_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetInt16_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt16_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt16_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt16_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt16_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt16_Response value = ReadRos2Xarm_msgsSrvSetInt16_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt16_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt16_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt16_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt16_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt16_Response ReadRos2Xarm_msgsSrvSetInt16_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt16_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16ById_Request fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt16ById_Request
    {
        public short @id = 0;
        public short @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16ById_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16ById_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16ById_Request fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt16ById_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt16ById_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt16ById_RequestCodec Instance = new Ros2Xarm_msgsSrvSetInt16ById_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16ById_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt16ById_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt16ById_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16ById_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt16ById_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt16ById_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16ById_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16ById_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt16ById_Request value = ReadRos2Xarm_msgsSrvSetInt16ById_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt16ById_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt16ById_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt16ById_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@id;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@data;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt16ById_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt16ById_Request ReadRos2Xarm_msgsSrvSetInt16ById_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt16ById_Request();
        value.@id = unchecked((short)reader.Unsigned(2));
        value.@data = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16ById_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt16ById_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16ById_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16ById_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16ById_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt16ById_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16ById_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt16ById_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt16ById_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16ById_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt16ById_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt16ById_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16ById_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16ById_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt16ById_Response value = ReadRos2Xarm_msgsSrvSetInt16ById_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt16ById_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt16ById_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt16ById_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt16ById_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt16ById_Response ReadRos2Xarm_msgsSrvSetInt16ById_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt16ById_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16List_Request fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt16List_Request
    {
        public short[] @datas = new short[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16List_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16List_Request fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt16List_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt16List_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt16List_RequestCodec Instance = new Ros2Xarm_msgsSrvSetInt16List_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16List_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt16List_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt16List_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16List_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt16List_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt16List_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16List_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16List_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt16List_Request value = ReadRos2Xarm_msgsSrvSetInt16List_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt16List_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt16List_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt16List_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short[] part0 = value.@datas;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            short element = part0[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt16List_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt16List_Request ReadRos2Xarm_msgsSrvSetInt16List_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt16List_Request();
        value.@datas = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16List_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt16List_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16List_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt16List_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt16List_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt16List_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt16List_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetInt16List_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt16List_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt16List_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt16List_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16List_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt16List_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt16List_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16List_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt16List_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt16List_Response value = ReadRos2Xarm_msgsSrvSetInt16List_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt16List_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt16List_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt16List_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt16List_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt16List_Response ReadRos2Xarm_msgsSrvSetInt16List_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt16List_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32_Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt32_Request
    {
        public int @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32_Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt32_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt32_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt32_RequestCodec Instance = new Ros2Xarm_msgsSrvSetInt32_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt32_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt32_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt32_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt32_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt32_Request value = ReadRos2Xarm_msgsSrvSetInt32_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt32_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt32_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt32_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@data;
        writer.Unsigned(unchecked((uint)part0), 4);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt32_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt32_Request ReadRos2Xarm_msgsSrvSetInt32_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt32_Request();
        value.@data = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt32_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt32_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt32_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt32_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetInt32_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt32_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt32_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt32_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt32_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt32_Response value = ReadRos2Xarm_msgsSrvSetInt32_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt32_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt32_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt32_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt32_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt32_Response ReadRos2Xarm_msgsSrvSetInt32_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt32_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32ByType_Request fields.
     * @details 2 ordered fields, canonical extent 6..6 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt32ByType_Request
    {
        public short @type = 0;
        public int @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32ByType_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32ByType_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32ByType_Request fields.
     * @details 2 ordered fields, canonical extent 6..6 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt32ByType_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec Instance = new Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32ByType_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt32ByType_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt32ByType_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32ByType_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt32ByType_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt32ByType_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32ByType_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32ByType_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt32ByType_Request value = ReadRos2Xarm_msgsSrvSetInt32ByType_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt32ByType_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt32ByType_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt32ByType_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@type;
        writer.Unsigned(unchecked((ushort)part0), 2);
        int part1 = value.@data;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt32ByType_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt32ByType_Request ReadRos2Xarm_msgsSrvSetInt32ByType_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt32ByType_Request();
        value.@type = unchecked((short)reader.Unsigned(2));
        value.@data = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32ByType_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetInt32ByType_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32ByType_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32ByType_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetInt32ByType_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetInt32ByType_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetInt32ByType_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetInt32ByType_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetInt32ByType_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32ByType_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetInt32ByType_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetInt32ByType_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32ByType_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetInt32ByType_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetInt32ByType_Response value = ReadRos2Xarm_msgsSrvSetInt32ByType_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetInt32ByType_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetInt32ByType_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetInt32ByType_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetInt32ByType_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetInt32ByType_Response ReadRos2Xarm_msgsSrvSetInt32ByType_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetInt32ByType_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetModbusTimeout_Request fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetModbusTimeout_Request
    {
        public int @timeout = 0;
        public bool @is_transparent_transmission = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetModbusTimeout_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetModbusTimeout_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetModbusTimeout_Request fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetModbusTimeout_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec Instance = new Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetModbusTimeout_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetModbusTimeout_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetModbusTimeout_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetModbusTimeout_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetModbusTimeout_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetModbusTimeout_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetModbusTimeout_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetModbusTimeout_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetModbusTimeout_Request value = ReadRos2Xarm_msgsSrvSetModbusTimeout_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetModbusTimeout_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetModbusTimeout_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetModbusTimeout_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@timeout;
        writer.Unsigned(unchecked((uint)part0), 4);
        bool part1 = value.@is_transparent_transmission;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetModbusTimeout_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetModbusTimeout_Request ReadRos2Xarm_msgsSrvSetModbusTimeout_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetModbusTimeout_Request();
        value.@timeout = unchecked((int)reader.Unsigned(4));
        value.@is_transparent_transmission = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetModbusTimeout_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetModbusTimeout_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetModbusTimeout_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetModbusTimeout_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetModbusTimeout_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetModbusTimeout_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetModbusTimeout_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetModbusTimeout_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetModbusTimeout_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetModbusTimeout_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetModbusTimeout_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetModbusTimeout_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetModbusTimeout_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetModbusTimeout_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetModbusTimeout_Response value = ReadRos2Xarm_msgsSrvSetModbusTimeout_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetModbusTimeout_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetModbusTimeout_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetModbusTimeout_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetModbusTimeout_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetModbusTimeout_Response ReadRos2Xarm_msgsSrvSetModbusTimeout_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetModbusTimeout_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetTcpLoad_Request fields.
     * @details 2 ordered fields, canonical extent 8..136 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetTcpLoad_Request
    {
        public float @weight = 0;
        public float[] @center_of_gravity = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetTcpLoad_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetTcpLoad_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetTcpLoad_Request fields.
     * @details 2 ordered fields, canonical extent 8..136 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetTcpLoad_Request>
    {
        public static readonly Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec Instance = new Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetTcpLoad_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetTcpLoad_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetTcpLoad_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetTcpLoad_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetTcpLoad_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetTcpLoad_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetTcpLoad_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetTcpLoad_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetTcpLoad_Request value = ReadRos2Xarm_msgsSrvSetTcpLoad_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetTcpLoad_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetTcpLoad_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetTcpLoad_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@weight;

        WriteFloat32(writer, part0);
        float[] part1 = value.@center_of_gravity;
        if(part1 == null || part1.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/srv/SetTcpLoad_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetTcpLoad_Request ReadRos2Xarm_msgsSrvSetTcpLoad_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetTcpLoad_Request();
        value.@weight = ReadFloat32(reader);
        value.@center_of_gravity = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@center_of_gravity.Length; ++index)
            value.@center_of_gravity[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetTcpLoad_Response fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvSetTcpLoad_Response
    {
        public int @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetTcpLoad_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetTcpLoad_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/SetTcpLoad_Response fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvSetTcpLoad_Response>
    {
        public static readonly Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec Instance = new Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/SetTcpLoad_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvSetTcpLoad_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/SetTcpLoad_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/SetTcpLoad_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvSetTcpLoad_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvSetTcpLoad_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/SetTcpLoad_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvSetTcpLoad_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvSetTcpLoad_Response value = ReadRos2Xarm_msgsSrvSetTcpLoad_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/SetTcpLoad_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvSetTcpLoad_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvSetTcpLoad_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@ret;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/SetTcpLoad_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvSetTcpLoad_Response ReadRos2Xarm_msgsSrvSetTcpLoad_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvSetTcpLoad_Response();
        value.@ret = unchecked((int)reader.Unsigned(4));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajCtrl_Request fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvTrajCtrl_Request
    {
        public string @filename = "";
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x41200000U));

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajCtrl_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajCtrl_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajCtrl_Request fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvTrajCtrl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvTrajCtrl_Request>
    {
        public static readonly Ros2Xarm_msgsSrvTrajCtrl_RequestCodec Instance = new Ros2Xarm_msgsSrvTrajCtrl_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajCtrl_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvTrajCtrl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/TrajCtrl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/TrajCtrl_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvTrajCtrl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvTrajCtrl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/TrajCtrl_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajCtrl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvTrajCtrl_Request value = ReadRos2Xarm_msgsSrvTrajCtrl_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/TrajCtrl_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvTrajCtrl_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvTrajCtrl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@filename;

        WriteText(writer, part0, 256);
        float part1 = value.@timeout;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one xarm_msgs/srv/TrajCtrl_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvTrajCtrl_Request ReadRos2Xarm_msgsSrvTrajCtrl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvTrajCtrl_Request();
        value.@filename = ReadText(reader, 256);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajCtrl_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvTrajCtrl_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajCtrl_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajCtrl_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajCtrl_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvTrajCtrl_Response>
    {
        public static readonly Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec Instance = new Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajCtrl_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvTrajCtrl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/TrajCtrl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/TrajCtrl_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvTrajCtrl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvTrajCtrl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/TrajCtrl_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajCtrl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvTrajCtrl_Response value = ReadRos2Xarm_msgsSrvTrajCtrl_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/TrajCtrl_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvTrajCtrl_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvTrajCtrl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/TrajCtrl_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvTrajCtrl_Response ReadRos2Xarm_msgsSrvTrajCtrl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvTrajCtrl_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajPlay_Request fields.
     * @details 4 ordered fields, canonical extent 9..265 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvTrajPlay_Request
    {
        public string @filename = "";
        public short @times = 1;
        public short @double_speed = 1;
        public bool @wait = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajPlay_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajPlay_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajPlay_Request fields.
     * @details 4 ordered fields, canonical extent 9..265 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvTrajPlay_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvTrajPlay_Request>
    {
        public static readonly Ros2Xarm_msgsSrvTrajPlay_RequestCodec Instance = new Ros2Xarm_msgsSrvTrajPlay_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajPlay_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvTrajPlay_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/TrajPlay_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 265;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/TrajPlay_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvTrajPlay_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvTrajPlay_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/TrajPlay_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajPlay_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvTrajPlay_Request value = ReadRos2Xarm_msgsSrvTrajPlay_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/TrajPlay_Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvTrajPlay_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvTrajPlay_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@filename;

        WriteText(writer, part0, 256);
        short part1 = value.@times;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@double_speed;
        writer.Unsigned(unchecked((ushort)part2), 2);
        bool part3 = value.@wait;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/srv/TrajPlay_Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvTrajPlay_Request ReadRos2Xarm_msgsSrvTrajPlay_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvTrajPlay_Request();
        value.@filename = ReadText(reader, 256);
        value.@times = unchecked((short)reader.Unsigned(2));
        value.@double_speed = unchecked((short)reader.Unsigned(2));
        value.@wait = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajPlay_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvTrajPlay_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajPlay_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajPlay_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/TrajPlay_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvTrajPlay_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvTrajPlay_Response>
    {
        public static readonly Ros2Xarm_msgsSrvTrajPlay_ResponseCodec Instance = new Ros2Xarm_msgsSrvTrajPlay_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/TrajPlay_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvTrajPlay_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/TrajPlay_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/TrajPlay_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvTrajPlay_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvTrajPlay_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/TrajPlay_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvTrajPlay_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvTrajPlay_Response value = ReadRos2Xarm_msgsSrvTrajPlay_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/TrajPlay_Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvTrajPlay_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvTrajPlay_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/TrajPlay_Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvTrajPlay_Response ReadRos2Xarm_msgsSrvTrajPlay_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvTrajPlay_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/VacuumGripperCtrl_Request fields.
     * @details 6 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
    {
        public bool @on = false;
        public bool @wait = false;
        public float @timeout = BitConverter.Int32BitsToSingle(unchecked((int)0x40400000U));
        public float @delay_sec = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000U));
        public bool @sync = true;
        public short @hardware_version = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/VacuumGripperCtrl_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/VacuumGripperCtrl_Request fields.
     * @details 6 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request>
    {
        public static readonly Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec Instance = new Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/VacuumGripperCtrl_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvVacuumGripperCtrl_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/VacuumGripperCtrl_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d6da957d39ce9cb96d064172db86907b162f95385fdf5e5bfd066eba8c1a4888";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/VacuumGripperCtrl_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvVacuumGripperCtrl_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/VacuumGripperCtrl_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value = ReadRos2Xarm_msgsSrvVacuumGripperCtrl_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/VacuumGripperCtrl_Request component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvVacuumGripperCtrl_Request(_Codecs.Writer writer, _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@on;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        bool part1 = value.@wait;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@timeout;

        WriteFloat32(writer, part2);
        float part3 = value.@delay_sec;

        WriteFloat32(writer, part3);
        bool part4 = value.@sync;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        short part5 = value.@hardware_version;
        writer.Unsigned(unchecked((ushort)part5), 2);
    }

    /**
     * @brief Read one xarm_msgs/srv/VacuumGripperCtrl_Request candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request ReadRos2Xarm_msgsSrvVacuumGripperCtrl_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvVacuumGripperCtrl_Request();
        value.@on = ReadBool(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@delay_sec = ReadFloat32(reader);
        value.@sync = ReadBool(reader);
        value.@hardware_version = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/VacuumGripperCtrl_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/VacuumGripperCtrl_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/srv/VacuumGripperCtrl_Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>
    {
        public static readonly Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec Instance = new Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/srv/VacuumGripperCtrl_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Xarm_msgsSrvVacuumGripperCtrl_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "xarm_msgs/srv/VacuumGripperCtrl_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/srv/VacuumGripperCtrl_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Xarm_msgsSrvVacuumGripperCtrl_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/srv/VacuumGripperCtrl_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value = ReadRos2Xarm_msgsSrvVacuumGripperCtrl_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/srv/VacuumGripperCtrl_Response component into checked staging
     * storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Xarm_msgsSrvVacuumGripperCtrl_Response(_Codecs.Writer writer, _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/srv/VacuumGripperCtrl_Response candidate through the checked canonical
     * cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response ReadRos2Xarm_msgsSrvVacuumGripperCtrl_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Xarm_msgsSrvVacuumGripperCtrl_Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }
}
