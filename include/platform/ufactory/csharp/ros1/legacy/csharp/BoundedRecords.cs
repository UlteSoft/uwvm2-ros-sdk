/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
 * @details The selected domain contains 29 complete record/components and 67 original fields. Declared
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
namespace Uwvm.Ufactory.ros1_legacy;

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
     * @brief Preserve all original geometry_msgs/Point fields.
     * @details 3 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Geometry_msgsPoint
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/Point.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Geometry_msgsPoint()
        {
        }
    }

    /**
     * @brief Preserve all original geometry_msgs/Point fields.
     * @details 3 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Geometry_msgsPointCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPoint>
    {
        public static readonly Ros1Geometry_msgsPointCodec Instance = new Ros1Geometry_msgsPointCodec();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/Point.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Geometry_msgsPointCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Point";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for geometry_msgs/Point.
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
        public byte[] Encode(_Ros1Geometry_msgsPoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Geometry_msgsPoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for geometry_msgs/Point.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Geometry_msgsPoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPoint value = ReadRos1Geometry_msgsPoint(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated geometry_msgs/Point component into checked staging storage.
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
    private static void WriteRos1Geometry_msgsPoint(_Codecs.Writer writer, _Ros1Geometry_msgsPoint value)
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
     * @brief Read one geometry_msgs/Point candidate through the checked canonical cursor.
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
    private static _Ros1Geometry_msgsPoint ReadRos1Geometry_msgsPoint(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPoint();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original geometry_msgs/Quaternion fields.
     * @details 4 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Geometry_msgsQuaternion
    {
        public double @x = 0;
        public double @y = 0;
        public double @z = 0;
        public double @w = 0;

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/Quaternion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Geometry_msgsQuaternion()
        {
        }
    }

    /**
     * @brief Preserve all original geometry_msgs/Quaternion fields.
     * @details 4 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Geometry_msgsQuaternionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsQuaternion>
    {
        public static readonly Ros1Geometry_msgsQuaternionCodec Instance = new Ros1Geometry_msgsQuaternionCodec();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/Quaternion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Geometry_msgsQuaternionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Quaternion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        /**
         * @brief Encode the complete ordered value for geometry_msgs/Quaternion.
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
        public byte[] Encode(_Ros1Geometry_msgsQuaternion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Geometry_msgsQuaternion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for geometry_msgs/Quaternion.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Geometry_msgsQuaternion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsQuaternion value = ReadRos1Geometry_msgsQuaternion(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated geometry_msgs/Quaternion component into checked staging storage.
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
    private static void WriteRos1Geometry_msgsQuaternion(_Codecs.Writer writer, _Ros1Geometry_msgsQuaternion value)
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
     * @brief Read one geometry_msgs/Quaternion candidate through the checked canonical cursor.
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
    private static _Ros1Geometry_msgsQuaternion ReadRos1Geometry_msgsQuaternion(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsQuaternion();
        value.@x = reader.Float64();
        value.@y = reader.Float64();
        value.@z = reader.Float64();
        value.@w = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original geometry_msgs/Pose fields.
     * @details 2 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Geometry_msgsPose
    {
        public _Ros1Geometry_msgsPoint @position = new _Ros1Geometry_msgsPoint();
        public _Ros1Geometry_msgsQuaternion @orientation = new _Ros1Geometry_msgsQuaternion();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Geometry_msgsPose()
        {
        }
    }

    /**
     * @brief Preserve all original geometry_msgs/Pose fields.
     * @details 2 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Geometry_msgsPoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Geometry_msgsPose>
    {
        public static readonly Ros1Geometry_msgsPoseCodec Instance = new Ros1Geometry_msgsPoseCodec();

        /**
         * @brief Maintain the bounded local protocol state for geometry_msgs/Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Geometry_msgsPoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "geometry_msgs/Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for geometry_msgs/Pose.
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
        public byte[] Encode(_Ros1Geometry_msgsPose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Geometry_msgsPose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for geometry_msgs/Pose.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Geometry_msgsPose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Geometry_msgsPose value = ReadRos1Geometry_msgsPose(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated geometry_msgs/Pose component into checked staging storage.
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
    private static void WriteRos1Geometry_msgsPose(_Codecs.Writer writer, _Ros1Geometry_msgsPose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPoint part0 = value.@position;

        WriteRos1Geometry_msgsPoint(writer, part0);
        _Ros1Geometry_msgsQuaternion part1 = value.@orientation;

        WriteRos1Geometry_msgsQuaternion(writer, part1);
    }

    /**
     * @brief Read one geometry_msgs/Pose candidate through the checked canonical cursor.
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
    private static _Ros1Geometry_msgsPose ReadRos1Geometry_msgsPose(_Codecs.Reader reader)
    {
        var value = new _Ros1Geometry_msgsPose();
        value.@position = ReadRos1Geometry_msgsPoint(reader);
        value.@orientation = ReadRos1Geometry_msgsQuaternion(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/IOState fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsIOState
    {
        public int @digital_1 = 0;
        public int @digital_2 = 0;
        public float @analog_1 = 0;
        public float @analog_2 = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/IOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsIOState()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/IOState fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsIOStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsIOState>
    {
        public static readonly Ros1Xarm_msgsIOStateCodec Instance = new Ros1Xarm_msgsIOStateCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/IOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsIOStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/IOState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/IOState.
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
        public byte[] Encode(_Ros1Xarm_msgsIOState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsIOState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/IOState.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsIOState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsIOState value = ReadRos1Xarm_msgsIOState(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/IOState component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsIOState(_Codecs.Writer writer, _Ros1Xarm_msgsIOState value)
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
     * @brief Read one xarm_msgs/IOState candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsIOState ReadRos1Xarm_msgsIOState(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsIOState();
        value.@digital_1 = unchecked((int)reader.Unsigned(4));
        value.@digital_2 = unchecked((int)reader.Unsigned(4));
        value.@analog_1 = ReadFloat32(reader);
        value.@analog_2 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/RobotMsg fields.
     * @details 10 ordered fields, canonical extent 66..94 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsRobotMsg
    {
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
         * @brief Maintain the bounded local protocol state for xarm_msgs/RobotMsg.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsRobotMsg()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/RobotMsg fields.
     * @details 10 ordered fields, canonical extent 66..94 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsRobotMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsRobotMsg>
    {
        public static readonly Ros1Xarm_msgsRobotMsgCodec Instance = new Ros1Xarm_msgsRobotMsgCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/RobotMsg.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsRobotMsgCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/RobotMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
        public const int MIN_WIRE_BYTES = 66, MAX_WIRE_BYTES = 94;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/RobotMsg.
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
        public byte[] Encode(_Ros1Xarm_msgsRobotMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsRobotMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/RobotMsg.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsRobotMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsRobotMsg value = ReadRos1Xarm_msgsRobotMsg(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/RobotMsg component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsRobotMsg(_Codecs.Writer writer, _Ros1Xarm_msgsRobotMsg value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@state;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@mode;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@cmdnum;
        writer.Unsigned(unchecked((ushort)part2), 2);
        short part3 = value.@mt_brake;
        writer.Unsigned(unchecked((ushort)part3), 2);
        short part4 = value.@mt_able;
        writer.Unsigned(unchecked((ushort)part4), 2);
        short part5 = value.@err;
        writer.Unsigned(unchecked((ushort)part5), 2);
        short part6 = value.@warn;
        writer.Unsigned(unchecked((ushort)part6), 2);
        float[] part7 = value.@angle;
        if(part7 == null || part7.Length > 7)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            float element = part7[index];

            WriteFloat32(writer, element);
        }
        float[] part8 = value.@pose;
        if(part8 == null || part8.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            float element = part8[index];

            WriteFloat32(writer, element);
        }
        float[] part9 = value.@offset;
        if(part9 == null || part9.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part9.Length; ++index)
        {
            float element = part9[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one xarm_msgs/RobotMsg candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsRobotMsg ReadRos1Xarm_msgsRobotMsg(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsRobotMsg();
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
     * @brief Preserve all original xarm_msgs/ClearErrRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsClearErrRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ClearErrRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsClearErrRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/ClearErrRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsClearErrRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsClearErrRequest>
    {
        public static readonly Ros1Xarm_msgsClearErrRequestCodec Instance = new Ros1Xarm_msgsClearErrRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ClearErrRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsClearErrRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/ClearErrRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/ClearErrRequest.
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
        public byte[] Encode(_Ros1Xarm_msgsClearErrRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsClearErrRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/ClearErrRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsClearErrRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsClearErrRequest value = ReadRos1Xarm_msgsClearErrRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/ClearErrRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsClearErrRequest(_Codecs.Writer writer, _Ros1Xarm_msgsClearErrRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/ClearErrRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsClearErrRequest ReadRos1Xarm_msgsClearErrRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsClearErrRequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/ClearErrResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsClearErrResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ClearErrResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsClearErrResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/ClearErrResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsClearErrResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsClearErrResponse>
    {
        public static readonly Ros1Xarm_msgsClearErrResponseCodec Instance = new Ros1Xarm_msgsClearErrResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ClearErrResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsClearErrResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/ClearErrResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/ClearErrResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsClearErrResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsClearErrResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/ClearErrResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsClearErrResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsClearErrResponse value = ReadRos1Xarm_msgsClearErrResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/ClearErrResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsClearErrResponse(_Codecs.Writer writer, _Ros1Xarm_msgsClearErrResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/ClearErrResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsClearErrResponse ReadRos1Xarm_msgsClearErrResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsClearErrResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetAnalogIORequest fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetAnalogIORequest
    {
        public short @port_num = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetAnalogIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetAnalogIORequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetAnalogIORequest fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetAnalogIORequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetAnalogIORequest>
    {
        public static readonly Ros1Xarm_msgsGetAnalogIORequestCodec Instance = new Ros1Xarm_msgsGetAnalogIORequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetAnalogIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetAnalogIORequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetAnalogIORequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIORequest.
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
        public byte[] Encode(_Ros1Xarm_msgsGetAnalogIORequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetAnalogIORequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIORequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetAnalogIORequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetAnalogIORequest value = ReadRos1Xarm_msgsGetAnalogIORequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetAnalogIORequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsGetAnalogIORequest(_Codecs.Writer writer, _Ros1Xarm_msgsGetAnalogIORequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@port_num;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one xarm_msgs/GetAnalogIORequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsGetAnalogIORequest ReadRos1Xarm_msgsGetAnalogIORequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetAnalogIORequest();
        value.@port_num = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetAnalogIOResponse fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetAnalogIOResponse
    {
        public float @analog_value = 0;
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetAnalogIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetAnalogIOResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetAnalogIOResponse fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetAnalogIOResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetAnalogIOResponse>
    {
        public static readonly Ros1Xarm_msgsGetAnalogIOResponseCodec Instance = new Ros1Xarm_msgsGetAnalogIOResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetAnalogIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetAnalogIOResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetAnalogIOResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIOResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsGetAnalogIOResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetAnalogIOResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIOResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetAnalogIOResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetAnalogIOResponse value = ReadRos1Xarm_msgsGetAnalogIOResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetAnalogIOResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsGetAnalogIOResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGetAnalogIOResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@analog_value;

        WriteFloat32(writer, part0);
        short part1 = value.@ret;
        writer.Unsigned(unchecked((ushort)part1), 2);
        string part2 = value.@message;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one xarm_msgs/GetAnalogIOResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsGetAnalogIOResponse ReadRos1Xarm_msgsGetAnalogIOResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetAnalogIOResponse();
        value.@analog_value = ReadFloat32(reader);
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetDigitalIORequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetDigitalIORequest
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetDigitalIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetDigitalIORequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetDigitalIORequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetDigitalIORequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetDigitalIORequest>
    {
        public static readonly Ros1Xarm_msgsGetDigitalIORequestCodec Instance = new Ros1Xarm_msgsGetDigitalIORequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetDigitalIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetDigitalIORequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetDigitalIORequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIORequest.
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
        public byte[] Encode(_Ros1Xarm_msgsGetDigitalIORequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetDigitalIORequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIORequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetDigitalIORequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetDigitalIORequest value = ReadRos1Xarm_msgsGetDigitalIORequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetDigitalIORequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsGetDigitalIORequest(_Codecs.Writer writer, _Ros1Xarm_msgsGetDigitalIORequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/GetDigitalIORequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsGetDigitalIORequest ReadRos1Xarm_msgsGetDigitalIORequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetDigitalIORequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetDigitalIOResponse fields.
     * @details 4 ordered fields, canonical extent 14..270 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetDigitalIOResponse
    {
        public int @digital_1 = 0;
        public int @digital_2 = 0;
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetDigitalIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetDigitalIOResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetDigitalIOResponse fields.
     * @details 4 ordered fields, canonical extent 14..270 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetDigitalIOResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetDigitalIOResponse>
    {
        public static readonly Ros1Xarm_msgsGetDigitalIOResponseCodec Instance = new Ros1Xarm_msgsGetDigitalIOResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetDigitalIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetDigitalIOResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetDigitalIOResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 270;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIOResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsGetDigitalIOResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetDigitalIOResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIOResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetDigitalIOResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetDigitalIOResponse value = ReadRos1Xarm_msgsGetDigitalIOResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetDigitalIOResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsGetDigitalIOResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGetDigitalIOResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@digital_1;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@digital_2;
        writer.Unsigned(unchecked((uint)part1), 4);
        short part2 = value.@ret;
        writer.Unsigned(unchecked((ushort)part2), 2);
        string part3 = value.@message;

        WriteText(writer, part3, 256);
    }

    /**
     * @brief Read one xarm_msgs/GetDigitalIOResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsGetDigitalIOResponse ReadRos1Xarm_msgsGetDigitalIOResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetDigitalIOResponse();
        value.@digital_1 = unchecked((int)reader.Unsigned(4));
        value.@digital_2 = unchecked((int)reader.Unsigned(4));
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveRequest fields.
     * @details 5 ordered fields, canonical extent 20..148 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveRequest
    {
        public float[] @pose = new float[0];
        public float @mvvelo = 0;
        public float @mvacc = 0;
        public float @mvtime = 0;
        public float @mvradii = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveRequest fields.
     * @details 5 ordered fields, canonical extent 20..148 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveRequest>
    {
        public static readonly Ros1Xarm_msgsMoveRequestCodec Instance = new Ros1Xarm_msgsMoveRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveRequest.
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
        public byte[] Encode(_Ros1Xarm_msgsMoveRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveRequest value = ReadRos1Xarm_msgsMoveRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsMoveRequest(_Codecs.Writer writer, _Ros1Xarm_msgsMoveRequest value)
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
        float part1 = value.@mvvelo;

        WriteFloat32(writer, part1);
        float part2 = value.@mvacc;

        WriteFloat32(writer, part2);
        float part3 = value.@mvtime;

        WriteFloat32(writer, part3);
        float part4 = value.@mvradii;

        WriteFloat32(writer, part4);
    }

    /**
     * @brief Read one xarm_msgs/MoveRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsMoveRequest ReadRos1Xarm_msgsMoveRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveRequest();
        value.@pose = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@pose.Length; ++index)
            value.@pose[index] = ReadFloat32(reader);
        value.@mvvelo = ReadFloat32(reader);
        value.@mvacc = ReadFloat32(reader);
        value.@mvtime = ReadFloat32(reader);
        value.@mvradii = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveResponse>
    {
        public static readonly Ros1Xarm_msgsMoveResponseCodec Instance = new Ros1Xarm_msgsMoveResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsMoveResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveResponse value = ReadRos1Xarm_msgsMoveResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsMoveResponse(_Codecs.Writer writer, _Ros1Xarm_msgsMoveResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/MoveResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsMoveResponse ReadRos1Xarm_msgsMoveResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetAxisRequest fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetAxisRequest
    {
        public short @id = 0;
        public short @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetAxisRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetAxisRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetAxisRequest fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetAxisRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetAxisRequest>
    {
        public static readonly Ros1Xarm_msgsSetAxisRequestCodec Instance = new Ros1Xarm_msgsSetAxisRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetAxisRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetAxisRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetAxisRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetAxisRequest.
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
        public byte[] Encode(_Ros1Xarm_msgsSetAxisRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetAxisRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetAxisRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetAxisRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetAxisRequest value = ReadRos1Xarm_msgsSetAxisRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetAxisRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsSetAxisRequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetAxisRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@id;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@data;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_msgs/SetAxisRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsSetAxisRequest ReadRos1Xarm_msgsSetAxisRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetAxisRequest();
        value.@id = unchecked((short)reader.Unsigned(2));
        value.@data = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetAxisResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetAxisResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetAxisResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetAxisResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetAxisResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetAxisResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetAxisResponse>
    {
        public static readonly Ros1Xarm_msgsSetAxisResponseCodec Instance = new Ros1Xarm_msgsSetAxisResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetAxisResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetAxisResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetAxisResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetAxisResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsSetAxisResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetAxisResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetAxisResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetAxisResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetAxisResponse value = ReadRos1Xarm_msgsSetAxisResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetAxisResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsSetAxisResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetAxisResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetAxisResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsSetAxisResponse ReadRos1Xarm_msgsSetAxisResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetAxisResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetDigitalIORequest fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetDigitalIORequest
    {
        public short @io_num = 0;
        public short @value = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetDigitalIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetDigitalIORequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetDigitalIORequest fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetDigitalIORequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetDigitalIORequest>
    {
        public static readonly Ros1Xarm_msgsSetDigitalIORequestCodec Instance = new Ros1Xarm_msgsSetDigitalIORequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetDigitalIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetDigitalIORequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetDigitalIORequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIORequest.
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
        public byte[] Encode(_Ros1Xarm_msgsSetDigitalIORequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetDigitalIORequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIORequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetDigitalIORequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            /**
             * @brief Original xarm_msgs/SetDigitalIORequest.value field.
             * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            _Ros1Xarm_msgsSetDigitalIORequest value = ReadRos1Xarm_msgsSetDigitalIORequest(reader);
            reader.End();
            /**
             * @brief Original xarm_msgs/SetDigitalIORequest.value field.
             * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetDigitalIORequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsSetDigitalIORequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetDigitalIORequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@io_num;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@value;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_msgs/SetDigitalIORequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsSetDigitalIORequest ReadRos1Xarm_msgsSetDigitalIORequest(_Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        var value = new _Ros1Xarm_msgsSetDigitalIORequest();
        value.@io_num = unchecked((short)reader.Unsigned(2));
        value.@value = unchecked((short)reader.Unsigned(2));
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetDigitalIOResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetDigitalIOResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetDigitalIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetDigitalIOResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetDigitalIOResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetDigitalIOResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetDigitalIOResponse>
    {
        public static readonly Ros1Xarm_msgsSetDigitalIOResponseCodec Instance = new Ros1Xarm_msgsSetDigitalIOResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetDigitalIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetDigitalIOResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetDigitalIOResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIOResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsSetDigitalIOResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetDigitalIOResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIOResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetDigitalIOResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetDigitalIOResponse value = ReadRos1Xarm_msgsSetDigitalIOResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetDigitalIOResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsSetDigitalIOResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetDigitalIOResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetDigitalIOResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsSetDigitalIOResponse ReadRos1Xarm_msgsSetDigitalIOResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetDigitalIOResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetInt16Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetInt16Request
    {
        public short @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetInt16Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetInt16Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetInt16Request fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetInt16RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetInt16Request>
    {
        public static readonly Ros1Xarm_msgsSetInt16RequestCodec Instance = new Ros1Xarm_msgsSetInt16RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetInt16Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetInt16RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetInt16Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetInt16Request.
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
        public byte[] Encode(_Ros1Xarm_msgsSetInt16Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetInt16Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetInt16Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetInt16Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetInt16Request value = ReadRos1Xarm_msgsSetInt16Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetInt16Request component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsSetInt16Request(_Codecs.Writer writer, _Ros1Xarm_msgsSetInt16Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@data;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one xarm_msgs/SetInt16Request candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsSetInt16Request ReadRos1Xarm_msgsSetInt16Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetInt16Request();
        value.@data = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetInt16Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetInt16Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetInt16Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetInt16Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetInt16Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetInt16ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetInt16Response>
    {
        public static readonly Ros1Xarm_msgsSetInt16ResponseCodec Instance = new Ros1Xarm_msgsSetInt16ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetInt16Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetInt16ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetInt16Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetInt16Response.
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
        public byte[] Encode(_Ros1Xarm_msgsSetInt16Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetInt16Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetInt16Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetInt16Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetInt16Response value = ReadRos1Xarm_msgsSetInt16Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetInt16Response component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsSetInt16Response(_Codecs.Writer writer, _Ros1Xarm_msgsSetInt16Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetInt16Response candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsSetInt16Response ReadRos1Xarm_msgsSetInt16Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetInt16Response();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/TCPOffsetRequest fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsTCPOffsetRequest
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @roll = 0;
        public float @pitch = 0;
        public float @yaw = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/TCPOffsetRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsTCPOffsetRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/TCPOffsetRequest fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsTCPOffsetRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsTCPOffsetRequest>
    {
        public static readonly Ros1Xarm_msgsTCPOffsetRequestCodec Instance = new Ros1Xarm_msgsTCPOffsetRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/TCPOffsetRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsTCPOffsetRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/TCPOffsetRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetRequest.
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
        public byte[] Encode(_Ros1Xarm_msgsTCPOffsetRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsTCPOffsetRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsTCPOffsetRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsTCPOffsetRequest value = ReadRos1Xarm_msgsTCPOffsetRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/TCPOffsetRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsTCPOffsetRequest(_Codecs.Writer writer, _Ros1Xarm_msgsTCPOffsetRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@roll;

        WriteFloat32(writer, part3);
        float part4 = value.@pitch;

        WriteFloat32(writer, part4);
        float part5 = value.@yaw;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one xarm_msgs/TCPOffsetRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsTCPOffsetRequest ReadRos1Xarm_msgsTCPOffsetRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsTCPOffsetRequest();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@roll = ReadFloat32(reader);
        value.@pitch = ReadFloat32(reader);
        value.@yaw = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/TCPOffsetResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsTCPOffsetResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/TCPOffsetResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsTCPOffsetResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/TCPOffsetResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsTCPOffsetResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsTCPOffsetResponse>
    {
        public static readonly Ros1Xarm_msgsTCPOffsetResponseCodec Instance = new Ros1Xarm_msgsTCPOffsetResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/TCPOffsetResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsTCPOffsetResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/TCPOffsetResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetResponse.
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
        public byte[] Encode(_Ros1Xarm_msgsTCPOffsetResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsTCPOffsetResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsTCPOffsetResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsTCPOffsetResponse value = ReadRos1Xarm_msgsTCPOffsetResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/TCPOffsetResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_msgsTCPOffsetResponse(_Codecs.Writer writer, _Ros1Xarm_msgsTCPOffsetResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/TCPOffsetResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_msgsTCPOffsetResponse ReadRos1Xarm_msgsTCPOffsetResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsTCPOffsetResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/exec_planRequest fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerExec_planRequest
    {
        public bool @exec = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/exec_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerExec_planRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/exec_planRequest fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerExec_planRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerExec_planRequest>
    {
        public static readonly Ros1Xarm_plannerExec_planRequestCodec Instance = new Ros1Xarm_plannerExec_planRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/exec_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerExec_planRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/exec_planRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_planner/exec_planRequest.
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
        public byte[] Encode(_Ros1Xarm_plannerExec_planRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerExec_planRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/exec_planRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerExec_planRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerExec_planRequest value = ReadRos1Xarm_plannerExec_planRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/exec_planRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_plannerExec_planRequest(_Codecs.Writer writer, _Ros1Xarm_plannerExec_planRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@exec;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_planner/exec_planRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_plannerExec_planRequest ReadRos1Xarm_plannerExec_planRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerExec_planRequest();
        value.@exec = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/exec_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerExec_planResponse
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/exec_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerExec_planResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/exec_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerExec_planResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerExec_planResponse>
    {
        public static readonly Ros1Xarm_plannerExec_planResponseCodec Instance = new Ros1Xarm_plannerExec_planResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/exec_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerExec_planResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/exec_planResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_planner/exec_planResponse.
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
        public byte[] Encode(_Ros1Xarm_plannerExec_planResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerExec_planResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/exec_planResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerExec_planResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerExec_planResponse value = ReadRos1Xarm_plannerExec_planResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/exec_planResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_plannerExec_planResponse(_Codecs.Writer writer, _Ros1Xarm_plannerExec_planResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_planner/exec_planResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_plannerExec_planResponse ReadRos1Xarm_plannerExec_planResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerExec_planResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/joint_planRequest fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerJoint_planRequest
    {
        public double[] @target = new double[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/joint_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerJoint_planRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/joint_planRequest fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerJoint_planRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerJoint_planRequest>
    {
        public static readonly Ros1Xarm_plannerJoint_planRequestCodec Instance = new Ros1Xarm_plannerJoint_planRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/joint_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerJoint_planRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/joint_planRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for xarm_planner/joint_planRequest.
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
        public byte[] Encode(_Ros1Xarm_plannerJoint_planRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerJoint_planRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/joint_planRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerJoint_planRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerJoint_planRequest value = ReadRos1Xarm_plannerJoint_planRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/joint_planRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_plannerJoint_planRequest(_Codecs.Writer writer, _Ros1Xarm_plannerJoint_planRequest value)
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
     * @brief Read one xarm_planner/joint_planRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_plannerJoint_planRequest ReadRos1Xarm_plannerJoint_planRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerJoint_planRequest();
        value.@target = new double[ReadCount(reader, 32, 8)];
        for(int index = 0; index < value.@target.Length; ++index)
            value.@target[index] = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/joint_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerJoint_planResponse
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/joint_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerJoint_planResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/joint_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerJoint_planResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerJoint_planResponse>
    {
        public static readonly Ros1Xarm_plannerJoint_planResponseCodec Instance = new Ros1Xarm_plannerJoint_planResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/joint_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerJoint_planResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/joint_planResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_planner/joint_planResponse.
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
        public byte[] Encode(_Ros1Xarm_plannerJoint_planResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerJoint_planResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/joint_planResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerJoint_planResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerJoint_planResponse value = ReadRos1Xarm_plannerJoint_planResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/joint_planResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_plannerJoint_planResponse(_Codecs.Writer writer, _Ros1Xarm_plannerJoint_planResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_planner/joint_planResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_plannerJoint_planResponse ReadRos1Xarm_plannerJoint_planResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerJoint_planResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/pose_planRequest fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerPose_planRequest
    {
        public _Ros1Geometry_msgsPose @target = new _Ros1Geometry_msgsPose();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/pose_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerPose_planRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/pose_planRequest fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerPose_planRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerPose_planRequest>
    {
        public static readonly Ros1Xarm_plannerPose_planRequestCodec Instance = new Ros1Xarm_plannerPose_planRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/pose_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerPose_planRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/pose_planRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for xarm_planner/pose_planRequest.
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
        public byte[] Encode(_Ros1Xarm_plannerPose_planRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerPose_planRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/pose_planRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerPose_planRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerPose_planRequest value = ReadRos1Xarm_plannerPose_planRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/pose_planRequest component into checked staging storage.
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
    private static void WriteRos1Xarm_plannerPose_planRequest(_Codecs.Writer writer, _Ros1Xarm_plannerPose_planRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@target;

        WriteRos1Geometry_msgsPose(writer, part0);
    }

    /**
     * @brief Read one xarm_planner/pose_planRequest candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_plannerPose_planRequest ReadRos1Xarm_plannerPose_planRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerPose_planRequest();
        value.@target = ReadRos1Geometry_msgsPose(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/pose_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerPose_planResponse
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/pose_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerPose_planResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/pose_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerPose_planResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerPose_planResponse>
    {
        public static readonly Ros1Xarm_plannerPose_planResponseCodec Instance = new Ros1Xarm_plannerPose_planResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/pose_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerPose_planResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/pose_planResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_planner/pose_planResponse.
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
        public byte[] Encode(_Ros1Xarm_plannerPose_planResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerPose_planResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/pose_planResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerPose_planResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerPose_planResponse value = ReadRos1Xarm_plannerPose_planResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/pose_planResponse component into checked staging storage.
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
    private static void WriteRos1Xarm_plannerPose_planResponse(_Codecs.Writer writer, _Ros1Xarm_plannerPose_planResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_planner/pose_planResponse candidate through the checked canonical cursor.
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
    private static _Ros1Xarm_plannerPose_planResponse ReadRos1Xarm_plannerPose_planResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerPose_planResponse();
        value.@success = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/single_straight_planRequest fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerSingle_straight_planRequest
    {
        public _Ros1Geometry_msgsPose @target = new _Ros1Geometry_msgsPose();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/single_straight_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerSingle_straight_planRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/single_straight_planRequest fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerSingle_straight_planRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerSingle_straight_planRequest>
    {
        public static readonly Ros1Xarm_plannerSingle_straight_planRequestCodec Instance = new Ros1Xarm_plannerSingle_straight_planRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/single_straight_planRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerSingle_straight_planRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/single_straight_planRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for xarm_planner/single_straight_planRequest.
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
        public byte[] Encode(_Ros1Xarm_plannerSingle_straight_planRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerSingle_straight_planRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/single_straight_planRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerSingle_straight_planRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerSingle_straight_planRequest value = ReadRos1Xarm_plannerSingle_straight_planRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/single_straight_planRequest component into checked staging
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
    private static void WriteRos1Xarm_plannerSingle_straight_planRequest(_Codecs.Writer writer, _Ros1Xarm_plannerSingle_straight_planRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@target;

        WriteRos1Geometry_msgsPose(writer, part0);
    }

    /**
     * @brief Read one xarm_planner/single_straight_planRequest candidate through the checked canonical
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
    private static _Ros1Xarm_plannerSingle_straight_planRequest ReadRos1Xarm_plannerSingle_straight_planRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerSingle_straight_planRequest();
        value.@target = ReadRos1Geometry_msgsPose(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_planner/single_straight_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_plannerSingle_straight_planResponse
    {
        public bool @success = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/single_straight_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerSingle_straight_planResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_planner/single_straight_planResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_plannerSingle_straight_planResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_plannerSingle_straight_planResponse>
    {
        public static readonly Ros1Xarm_plannerSingle_straight_planResponseCodec Instance = new Ros1Xarm_plannerSingle_straight_planResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_planner/single_straight_planResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_plannerSingle_straight_planResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_planner/single_straight_planResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for xarm_planner/single_straight_planResponse.
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
        public byte[] Encode(_Ros1Xarm_plannerSingle_straight_planResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_plannerSingle_straight_planResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_planner/single_straight_planResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_plannerSingle_straight_planResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_plannerSingle_straight_planResponse value = ReadRos1Xarm_plannerSingle_straight_planResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_planner/single_straight_planResponse component into checked staging
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
    private static void WriteRos1Xarm_plannerSingle_straight_planResponse(_Codecs.Writer writer, _Ros1Xarm_plannerSingle_straight_planResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_planner/single_straight_planResponse candidate through the checked canonical
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
    private static _Ros1Xarm_plannerSingle_straight_planResponse ReadRos1Xarm_plannerSingle_straight_planResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_plannerSingle_straight_planResponse();
        value.@success = ReadBool(reader);
        return value;
    }
}
