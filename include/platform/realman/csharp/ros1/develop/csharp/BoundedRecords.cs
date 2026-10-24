/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original realman/ros1_develop canonical value domain.
 * @details The selected domain contains 101 complete record/components and 335 original fields. Declared
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
namespace Uwvm.Realman.ros1_develop;

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
     * @brief Preserve all original rm_msgs/ArmState fields.
     * @details 4 ordered fields, canonical extent 65..161 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArmState
    {
        public float[] @joint = new float[0];
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();
        public ushort[] @err = new ushort[0];
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ArmState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArmState()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/ArmState fields.
     * @details 4 ordered fields, canonical extent 65..161 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArmStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArmState>
    {
        public static readonly Ros1Rm_msgsArmStateCodec Instance = new Ros1Rm_msgsArmStateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ArmState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArmStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/ArmState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93";
        public const int MIN_WIRE_BYTES = 65, MAX_WIRE_BYTES = 161;

        /**
         * @brief Encode the complete ordered value for rm_msgs/ArmState.
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
        public byte[] Encode(_Ros1Rm_msgsArmState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArmState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/ArmState.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArmState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArmState value = ReadRos1Rm_msgsArmState(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/ArmState component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArmState(_Codecs.Writer writer, _Ros1Rm_msgsArmState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        _Ros1Geometry_msgsPose part1 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part1);
        ushort[] part2 = value.@err;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            ushort element = part2[index];
            writer.Unsigned(element, 2);
        }
        byte part3 = value.@dof;
        writer.Unsigned(part3, 1);
    }

    /**
     * @brief Read one rm_msgs/ArmState candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArmState ReadRos1Rm_msgsArmState(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArmState();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        value.@err = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@err.Length; ++index)
            value.@err[index] = unchecked((ushort)reader.Unsigned(2));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Analog_Output fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Analog_Output
    {
        public byte @num = 0;
        public float @voltage = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Analog_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Analog_Output()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Analog_Output fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Analog_OutputCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Analog_Output>
    {
        public static readonly Ros1Rm_msgsArm_Analog_OutputCodec Instance = new Ros1Rm_msgsArm_Analog_OutputCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Analog_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Analog_OutputCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Analog_Output";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Analog_Output.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Analog_Output value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Analog_Output(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Analog_Output.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Analog_Output Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Analog_Output value = ReadRos1Rm_msgsArm_Analog_Output(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Analog_Output component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Analog_Output(_Codecs.Writer writer, _Ros1Rm_msgsArm_Analog_Output value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@num;
        writer.Unsigned(part0, 1);
        float part1 = value.@voltage;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one rm_msgs/Arm_Analog_Output candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Analog_Output ReadRos1Rm_msgsArm_Analog_Output(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Analog_Output();
        value.@num = unchecked((byte)reader.Unsigned(1));
        value.@voltage = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Current_State fields.
     * @details 4 ordered fields, canonical extent 33..129 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Current_State
    {
        public float[] @joint = new float[0];
        public float[] @Pose = new float[6];
        public ushort[] @err = new ushort[0];
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Current_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Current_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Current_State fields.
     * @details 4 ordered fields, canonical extent 33..129 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Current_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Current_State>
    {
        public static readonly Ros1Rm_msgsArm_Current_StateCodec Instance = new Ros1Rm_msgsArm_Current_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Current_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Current_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Current_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844";
        public const int MIN_WIRE_BYTES = 33, MAX_WIRE_BYTES = 129;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Current_State.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Current_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Current_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Current_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Current_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Current_State value = ReadRos1Rm_msgsArm_Current_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Current_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Current_State(_Codecs.Writer writer, _Ros1Rm_msgsArm_Current_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float[] part1 = value.@Pose;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
        ushort[] part2 = value.@err;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            ushort element = part2[index];
            writer.Unsigned(element, 2);
        }
        byte part3 = value.@dof;
        writer.Unsigned(part3, 1);
    }

    /**
     * @brief Read one rm_msgs/Arm_Current_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Current_State ReadRos1Rm_msgsArm_Current_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Current_State();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@Pose = new float[6];
        for(int index = 0; index < value.@Pose.Length; ++index)
            value.@Pose[index] = ReadFloat32(reader);
        value.@err = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@err.Length; ++index)
            value.@err[index] = unchecked((ushort)reader.Unsigned(2));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Current_Status fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Current_Status
    {
        public string @arm_current_status = "";

        /**
         * @brief Check the complete finite representation of rm_msgs/Arm_Current_Status.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Current_Status()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Current_Status fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Current_StatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Current_Status>
    {
        public static readonly Ros1Rm_msgsArm_Current_StatusCodec Instance = new Ros1Rm_msgsArm_Current_StatusCodec();

        /**
         * @brief Check the complete finite representation of rm_msgs/Arm_Current_Status.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Current_StatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Current_Status";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Current_Status.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Current_Status value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Current_Status(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Current_Status.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Current_Status Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Current_Status value = ReadRos1Rm_msgsArm_Current_Status(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Current_Status component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Current_Status(_Codecs.Writer writer, _Ros1Rm_msgsArm_Current_Status value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@arm_current_status;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_msgs/Arm_Current_Status candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Current_Status ReadRos1Rm_msgsArm_Current_Status(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Current_Status();
        value.@arm_current_status = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Digital_Output fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Digital_Output
    {
        public byte @num = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Digital_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Digital_Output()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Digital_Output fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Digital_OutputCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Digital_Output>
    {
        public static readonly Ros1Rm_msgsArm_Digital_OutputCodec Instance = new Ros1Rm_msgsArm_Digital_OutputCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Digital_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Digital_OutputCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Digital_Output";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Digital_Output.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Digital_Output value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Digital_Output(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Digital_Output.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Digital_Output Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Digital_Output value = ReadRos1Rm_msgsArm_Digital_Output(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Digital_Output component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Digital_Output(_Codecs.Writer writer, _Ros1Rm_msgsArm_Digital_Output value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@num;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Arm_Digital_Output candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Digital_Output ReadRos1Rm_msgsArm_Digital_Output(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Digital_Output();
        value.@num = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_IO_State fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_IO_State
    {
        public sbyte[] @Arm_Digital_Input = new sbyte[4];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_IO_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_IO_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_IO_State fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_IO_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_IO_State>
    {
        public static readonly Ros1Rm_msgsArm_IO_StateCodec Instance = new Ros1Rm_msgsArm_IO_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_IO_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_IO_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_IO_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_IO_State.
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
        public byte[] Encode(_Ros1Rm_msgsArm_IO_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_IO_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_IO_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_IO_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_IO_State value = ReadRos1Rm_msgsArm_IO_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_IO_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_IO_State(_Codecs.Writer writer, _Ros1Rm_msgsArm_IO_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte[] part0 = value.@Arm_Digital_Input;
        if(part0 == null || part0.Length != 4)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            sbyte element = part0[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
    }

    /**
     * @brief Read one rm_msgs/Arm_IO_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_IO_State ReadRos1Rm_msgsArm_IO_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_IO_State();
        value.@Arm_Digital_Input = new sbyte[4];
        for(int index = 0; index < value.@Arm_Digital_Input.Length; ++index)
            value.@Arm_Digital_Input[index] = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original time fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Time
    {
        public uint @sec = 0;
        public uint @nsec = 0;

        /**
         * @brief Maintain the bounded local protocol state for time.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Time()
        {
        }
    }

    /**
     * @brief Preserve all original time fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1TimeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Time>
    {
        public static readonly Ros1TimeCodec Instance = new Ros1TimeCodec();

        /**
         * @brief Maintain the bounded local protocol state for time.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1TimeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "time";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for time.
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
        public byte[] Encode(_Ros1Time value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Time(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for time.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Time Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Time value = ReadRos1Time(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated time component into checked staging storage.
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
    private static void WriteRos1Time(_Codecs.Writer writer, _Ros1Time value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@sec;
        writer.Unsigned(part0, 4);
        uint part1 = value.@nsec;
        writer.Unsigned(part1, 4);
        if((long)part1 < 0 || (long)part1 >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
    }

    /**
     * @brief Read one time candidate through the checked canonical cursor.
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
    private static _Ros1Time ReadRos1Time(_Codecs.Reader reader)
    {
        var value = new _Ros1Time();
        value.@sec = unchecked((uint)reader.Unsigned(4));
        value.@nsec = unchecked((uint)reader.Unsigned(4));
        if((long)value.@nsec < 0 || (long)value.@nsec >= 1000000000L)
            throw new ArgumentException("normalized subsecond field required");
        return value;
    }

    /**
     * @brief Preserve all original std_msgs/Header fields.
     * @details 3 ordered fields, canonical extent 16..272 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Std_msgsHeader
    {
        public uint @seq = 0;
        public _Ros1Time @stamp = new _Ros1Time();
        public string @frame_id = "";

        /**
         * @brief Maintain the bounded local protocol state for std_msgs/Header.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Std_msgsHeader()
        {
        }
    }

    /**
     * @brief Preserve all original std_msgs/Header fields.
     * @details 3 ordered fields, canonical extent 16..272 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Std_msgsHeaderCodec : global::Uwvm.RosWasm.ICodec<_Ros1Std_msgsHeader>
    {
        public static readonly Ros1Std_msgsHeaderCodec Instance = new Ros1Std_msgsHeaderCodec();

        /**
         * @brief Maintain the bounded local protocol state for std_msgs/Header.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Std_msgsHeaderCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "std_msgs/Header";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        /**
         * @brief Encode the complete ordered value for std_msgs/Header.
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
        public byte[] Encode(_Ros1Std_msgsHeader value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Std_msgsHeader(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for std_msgs/Header.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Std_msgsHeader Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Std_msgsHeader value = ReadRos1Std_msgsHeader(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated std_msgs/Header component into checked staging storage.
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
    private static void WriteRos1Std_msgsHeader(_Codecs.Writer writer, _Ros1Std_msgsHeader value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@seq;
        writer.Unsigned(part0, 4);
        _Ros1Time part1 = value.@stamp;

        WriteRos1Time(writer, part1);
        string part2 = value.@frame_id;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one std_msgs/Header candidate through the checked canonical cursor.
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
    private static _Ros1Std_msgsHeader ReadRos1Std_msgsHeader(_Codecs.Reader reader)
    {
        var value = new _Ros1Std_msgsHeader();
        value.@seq = unchecked((uint)reader.Unsigned(4));
        value.@stamp = ReadRos1Time(reader);
        value.@frame_id = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Joint_Speed_Max fields.
     * @details 3 ordered fields, canonical extent 24..4568 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Joint_Speed_Max
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public string[] @name = new string[0];
        public double[] @max_velocity = new double[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Joint_Speed_Max.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Joint_Speed_Max()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Joint_Speed_Max fields.
     * @details 3 ordered fields, canonical extent 24..4568 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Joint_Speed_MaxCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Joint_Speed_Max>
    {
        public static readonly Ros1Rm_msgsArm_Joint_Speed_MaxCodec Instance = new Ros1Rm_msgsArm_Joint_Speed_MaxCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Joint_Speed_Max.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Joint_Speed_MaxCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Joint_Speed_Max";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 4568;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Joint_Speed_Max.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Joint_Speed_Max value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Joint_Speed_Max(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Joint_Speed_Max.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Joint_Speed_Max Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Joint_Speed_Max value = ReadRos1Rm_msgsArm_Joint_Speed_Max(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Joint_Speed_Max component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Joint_Speed_Max(_Codecs.Writer writer, _Ros1Rm_msgsArm_Joint_Speed_Max value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;

        WriteRos1Std_msgsHeader(writer, part0);
        string[] part1 = value.@name;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            string element = part1[index];

            WriteText(writer, element, 256);
        }
        double[] part2 = value.@max_velocity;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            double element = part2[index];
            writer.Float64(element);
        }
    }

    /**
     * @brief Read one rm_msgs/Arm_Joint_Speed_Max candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Joint_Speed_Max ReadRos1Rm_msgsArm_Joint_Speed_Max(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Joint_Speed_Max();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@name = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@name.Length; ++index)
            value.@name[index] = ReadText(reader, 256);
        value.@max_velocity = new double[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@max_velocity.Length; ++index)
            value.@max_velocity[index] = reader.Float64();
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Softwarebuildinfo fields.
     * @details 2 ordered fields, canonical extent 8..520 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsSoftwarebuildinfo
    {
        public string @build_time = "";
        public string @version = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Softwarebuildinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSoftwarebuildinfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Softwarebuildinfo fields.
     * @details 2 ordered fields, canonical extent 8..520 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsSoftwarebuildinfoCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsSoftwarebuildinfo>
    {
        public static readonly Ros1Rm_msgsSoftwarebuildinfoCodec Instance = new Ros1Rm_msgsSoftwarebuildinfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Softwarebuildinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsSoftwarebuildinfoCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Softwarebuildinfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Softwarebuildinfo.
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
        public byte[] Encode(_Ros1Rm_msgsSoftwarebuildinfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsSoftwarebuildinfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Softwarebuildinfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSoftwarebuildinfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsSoftwarebuildinfo value = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Softwarebuildinfo component into checked staging storage.
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
    private static void WriteRos1Rm_msgsSoftwarebuildinfo(_Codecs.Writer writer, _Ros1Rm_msgsSoftwarebuildinfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@build_time;

        WriteText(writer, part0, 256);
        string part1 = value.@version;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one rm_msgs/Softwarebuildinfo candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsSoftwarebuildinfo ReadRos1Rm_msgsSoftwarebuildinfo(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsSoftwarebuildinfo();
        value.@build_time = ReadText(reader, 256);
        value.@version = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Softversion_v3 fields.
     * @details 5 ordered fields, canonical extent 28..1820 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Softversion_v3
    {
        public string @product_version = "";
        public string @algorithm_info = "";
        public _Ros1Rm_msgsSoftwarebuildinfo @ctrl_info = new _Ros1Rm_msgsSoftwarebuildinfo();
        public string @dynamic_info = "";
        public _Ros1Rm_msgsSoftwarebuildinfo @plan_info = new _Ros1Rm_msgsSoftwarebuildinfo();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Softversion_v3.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Softversion_v3()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Softversion_v3 fields.
     * @details 5 ordered fields, canonical extent 28..1820 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Softversion_v3Codec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Softversion_v3>
    {
        public static readonly Ros1Rm_msgsArm_Softversion_v3Codec Instance = new Ros1Rm_msgsArm_Softversion_v3Codec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Softversion_v3.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Softversion_v3Codec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Softversion_v3";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1820;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Softversion_v3.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Softversion_v3 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Softversion_v3(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Softversion_v3.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Softversion_v3 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Softversion_v3 value = ReadRos1Rm_msgsArm_Softversion_v3(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Softversion_v3 component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Softversion_v3(_Codecs.Writer writer, _Ros1Rm_msgsArm_Softversion_v3 value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@product_version;

        WriteText(writer, part0, 256);
        string part1 = value.@algorithm_info;

        WriteText(writer, part1, 256);
        _Ros1Rm_msgsSoftwarebuildinfo part2 = value.@ctrl_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part2);
        string part3 = value.@dynamic_info;

        WriteText(writer, part3, 256);
        _Ros1Rm_msgsSoftwarebuildinfo part4 = value.@plan_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part4);
    }

    /**
     * @brief Read one rm_msgs/Arm_Softversion_v3 candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Softversion_v3 ReadRos1Rm_msgsArm_Softversion_v3(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Softversion_v3();
        value.@product_version = ReadText(reader, 256);
        value.@algorithm_info = ReadText(reader, 256);
        value.@ctrl_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        value.@dynamic_info = ReadText(reader, 256);
        value.@plan_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Softversion_v4 fields.
     * @details 6 ordered fields, canonical extent 36..2340 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Softversion_v4
    {
        public string @product_version = "";
        public string @controller_version = "";
        public string @algorithm_info = "";
        public _Ros1Rm_msgsSoftwarebuildinfo @ctrl_info = new _Ros1Rm_msgsSoftwarebuildinfo();
        public _Ros1Rm_msgsSoftwarebuildinfo @com_info = new _Ros1Rm_msgsSoftwarebuildinfo();
        public _Ros1Rm_msgsSoftwarebuildinfo @program_info = new _Ros1Rm_msgsSoftwarebuildinfo();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Softversion_v4.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Softversion_v4()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Softversion_v4 fields.
     * @details 6 ordered fields, canonical extent 36..2340 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Softversion_v4Codec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Softversion_v4>
    {
        public static readonly Ros1Rm_msgsArm_Softversion_v4Codec Instance = new Ros1Rm_msgsArm_Softversion_v4Codec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Softversion_v4.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Softversion_v4Codec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Softversion_v4";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 2340;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Softversion_v4.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Softversion_v4 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Softversion_v4(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Softversion_v4.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Softversion_v4 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Softversion_v4 value = ReadRos1Rm_msgsArm_Softversion_v4(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Softversion_v4 component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Softversion_v4(_Codecs.Writer writer, _Ros1Rm_msgsArm_Softversion_v4 value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@product_version;

        WriteText(writer, part0, 256);
        string part1 = value.@controller_version;

        WriteText(writer, part1, 256);
        string part2 = value.@algorithm_info;

        WriteText(writer, part2, 256);
        _Ros1Rm_msgsSoftwarebuildinfo part3 = value.@ctrl_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part3);
        _Ros1Rm_msgsSoftwarebuildinfo part4 = value.@com_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part4);
        _Ros1Rm_msgsSoftwarebuildinfo part5 = value.@program_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part5);
    }

    /**
     * @brief Read one rm_msgs/Arm_Softversion_v4 candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Softversion_v4 ReadRos1Rm_msgsArm_Softversion_v4(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Softversion_v4();
        value.@product_version = ReadText(reader, 256);
        value.@controller_version = ReadText(reader, 256);
        value.@algorithm_info = ReadText(reader, 256);
        value.@ctrl_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        value.@com_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        value.@program_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Software_Version fields.
     * @details 8 ordered fields, canonical extent 48..3120 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsArm_Software_Version
    {
        public string @product_version = "";
        public string @algorithm_info = "";
        public _Ros1Rm_msgsSoftwarebuildinfo @ctrl_info = new _Ros1Rm_msgsSoftwarebuildinfo();
        public string @dynamic_info = "";
        public _Ros1Rm_msgsSoftwarebuildinfo @plan_info = new _Ros1Rm_msgsSoftwarebuildinfo();
        public string @controller_version = "";
        public _Ros1Rm_msgsSoftwarebuildinfo @com_info = new _Ros1Rm_msgsSoftwarebuildinfo();
        public _Ros1Rm_msgsSoftwarebuildinfo @program_info = new _Ros1Rm_msgsSoftwarebuildinfo();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Software_Version.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Software_Version()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Arm_Software_Version fields.
     * @details 8 ordered fields, canonical extent 48..3120 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsArm_Software_VersionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsArm_Software_Version>
    {
        public static readonly Ros1Rm_msgsArm_Software_VersionCodec Instance = new Ros1Rm_msgsArm_Software_VersionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Arm_Software_Version.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsArm_Software_VersionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Arm_Software_Version";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5";
        public const int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 3120;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Arm_Software_Version.
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
        public byte[] Encode(_Ros1Rm_msgsArm_Software_Version value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsArm_Software_Version(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Arm_Software_Version.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsArm_Software_Version Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsArm_Software_Version value = ReadRos1Rm_msgsArm_Software_Version(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Arm_Software_Version component into checked staging storage.
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
    private static void WriteRos1Rm_msgsArm_Software_Version(_Codecs.Writer writer, _Ros1Rm_msgsArm_Software_Version value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@product_version;

        WriteText(writer, part0, 256);
        string part1 = value.@algorithm_info;

        WriteText(writer, part1, 256);
        _Ros1Rm_msgsSoftwarebuildinfo part2 = value.@ctrl_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part2);
        string part3 = value.@dynamic_info;

        WriteText(writer, part3, 256);
        _Ros1Rm_msgsSoftwarebuildinfo part4 = value.@plan_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part4);
        string part5 = value.@controller_version;

        WriteText(writer, part5, 256);
        _Ros1Rm_msgsSoftwarebuildinfo part6 = value.@com_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part6);
        _Ros1Rm_msgsSoftwarebuildinfo part7 = value.@program_info;

        WriteRos1Rm_msgsSoftwarebuildinfo(writer, part7);
    }

    /**
     * @brief Read one rm_msgs/Arm_Software_Version candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsArm_Software_Version ReadRos1Rm_msgsArm_Software_Version(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsArm_Software_Version();
        value.@product_version = ReadText(reader, 256);
        value.@algorithm_info = ReadText(reader, 256);
        value.@ctrl_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        value.@dynamic_info = ReadText(reader, 256);
        value.@plan_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        value.@controller_version = ReadText(reader, 256);
        value.@com_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        value.@program_info = ReadRos1Rm_msgsSoftwarebuildinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Cabinet fields.
     * @details 4 ordered fields, canonical extent 78..334 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsCabinet
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public _Ros1Geometry_msgsPose @pose = new _Ros1Geometry_msgsPose();
        public short @label = 0;
        public float @angle = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Cabinet.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsCabinet()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Cabinet fields.
     * @details 4 ordered fields, canonical extent 78..334 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsCabinetCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsCabinet>
    {
        public static readonly Ros1Rm_msgsCabinetCodec Instance = new Ros1Rm_msgsCabinetCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Cabinet.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsCabinetCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Cabinet";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf";
        public const int MIN_WIRE_BYTES = 78, MAX_WIRE_BYTES = 334;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Cabinet.
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
        public byte[] Encode(_Ros1Rm_msgsCabinet value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsCabinet(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Cabinet.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsCabinet Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsCabinet value = ReadRos1Rm_msgsCabinet(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Cabinet component into checked staging storage.
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
    private static void WriteRos1Rm_msgsCabinet(_Codecs.Writer writer, _Ros1Rm_msgsCabinet value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;

        WriteRos1Std_msgsHeader(writer, part0);
        _Ros1Geometry_msgsPose part1 = value.@pose;

        WriteRos1Geometry_msgsPose(writer, part1);
        short part2 = value.@label;
        writer.Unsigned(unchecked((ushort)part2), 2);
        float part3 = value.@angle;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one rm_msgs/Cabinet candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsCabinet ReadRos1Rm_msgsCabinet(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsCabinet();
        value.@header = ReadRos1Std_msgsHeader(reader);
        value.@pose = ReadRos1Geometry_msgsPose(reader);
        value.@label = unchecked((short)reader.Unsigned(2));
        value.@angle = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/CartePos fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsCartePos
    {
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/CartePos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsCartePos()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/CartePos fields.
     * @details 1 ordered fields, canonical extent 56..56 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsCartePosCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsCartePos>
    {
        public static readonly Ros1Rm_msgsCartePosCodec Instance = new Ros1Rm_msgsCartePosCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/CartePos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsCartePosCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/CartePos";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9";
        public const int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;

        /**
         * @brief Encode the complete ordered value for rm_msgs/CartePos.
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
        public byte[] Encode(_Ros1Rm_msgsCartePos value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsCartePos(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/CartePos.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsCartePos Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsCartePos value = ReadRos1Rm_msgsCartePos(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/CartePos component into checked staging storage.
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
    private static void WriteRos1Rm_msgsCartePos(_Codecs.Writer writer, _Ros1Rm_msgsCartePos value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
    }

    /**
     * @brief Read one rm_msgs/CartePos candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsCartePos ReadRos1Rm_msgsCartePos(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsCartePos();
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/CartePosCustom fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsCartePosCustom
    {
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();
        public bool @follow = false;
        public byte @trajectory_mode = 0;
        public byte @radio = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/CartePosCustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsCartePosCustom()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/CartePosCustom fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsCartePosCustomCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsCartePosCustom>
    {
        public static readonly Ros1Rm_msgsCartePosCustomCodec Instance = new Ros1Rm_msgsCartePosCustomCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/CartePosCustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsCartePosCustomCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/CartePosCustom";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c";
        public const int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;

        /**
         * @brief Encode the complete ordered value for rm_msgs/CartePosCustom.
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
        public byte[] Encode(_Ros1Rm_msgsCartePosCustom value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsCartePosCustom(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/CartePosCustom.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsCartePosCustom Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsCartePosCustom value = ReadRos1Rm_msgsCartePosCustom(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/CartePosCustom component into checked staging storage.
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
    private static void WriteRos1Rm_msgsCartePosCustom(_Codecs.Writer writer, _Ros1Rm_msgsCartePosCustom value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
        bool part1 = value.@follow;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        byte part2 = value.@trajectory_mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@radio;
        writer.Unsigned(part3, 1);
    }

    /**
     * @brief Read one rm_msgs/CartePosCustom candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsCartePosCustom ReadRos1Rm_msgsCartePosCustom(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsCartePosCustom();
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        value.@follow = ReadBool(reader);
        value.@trajectory_mode = unchecked((byte)reader.Unsigned(1));
        value.@radio = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeTool_Name fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsChangeTool_Name
    {
        public string @toolname = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeTool_Name.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeTool_Name()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeTool_Name fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsChangeTool_NameCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsChangeTool_Name>
    {
        public static readonly Ros1Rm_msgsChangeTool_NameCodec Instance = new Ros1Rm_msgsChangeTool_NameCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeTool_Name.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsChangeTool_NameCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/ChangeTool_Name";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_msgs/ChangeTool_Name.
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
        public byte[] Encode(_Ros1Rm_msgsChangeTool_Name value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsChangeTool_Name(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/ChangeTool_Name.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeTool_Name Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsChangeTool_Name value = ReadRos1Rm_msgsChangeTool_Name(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/ChangeTool_Name component into checked staging storage.
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
    private static void WriteRos1Rm_msgsChangeTool_Name(_Codecs.Writer writer, _Ros1Rm_msgsChangeTool_Name value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@toolname;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_msgs/ChangeTool_Name candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsChangeTool_Name ReadRos1Rm_msgsChangeTool_Name(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsChangeTool_Name();
        value.@toolname = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeTool_State fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsChangeTool_State
    {
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeTool_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeTool_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeTool_State fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsChangeTool_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsChangeTool_State>
    {
        public static readonly Ros1Rm_msgsChangeTool_StateCodec Instance = new Ros1Rm_msgsChangeTool_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeTool_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsChangeTool_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/ChangeTool_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_msgs/ChangeTool_State.
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
        public byte[] Encode(_Ros1Rm_msgsChangeTool_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsChangeTool_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/ChangeTool_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeTool_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsChangeTool_State value = ReadRos1Rm_msgsChangeTool_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/ChangeTool_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsChangeTool_State(_Codecs.Writer writer, _Ros1Rm_msgsChangeTool_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@state;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/ChangeTool_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsChangeTool_State ReadRos1Rm_msgsChangeTool_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsChangeTool_State();
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeWorkFrame_Name fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsChangeWorkFrame_Name
    {
        public string @WorkFrame_name = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeWorkFrame_Name.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeWorkFrame_Name()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeWorkFrame_Name fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsChangeWorkFrame_NameCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsChangeWorkFrame_Name>
    {
        public static readonly Ros1Rm_msgsChangeWorkFrame_NameCodec Instance = new Ros1Rm_msgsChangeWorkFrame_NameCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeWorkFrame_Name.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsChangeWorkFrame_NameCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/ChangeWorkFrame_Name";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_msgs/ChangeWorkFrame_Name.
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
        public byte[] Encode(_Ros1Rm_msgsChangeWorkFrame_Name value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsChangeWorkFrame_Name(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/ChangeWorkFrame_Name.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeWorkFrame_Name Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsChangeWorkFrame_Name value = ReadRos1Rm_msgsChangeWorkFrame_Name(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/ChangeWorkFrame_Name component into checked staging storage.
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
    private static void WriteRos1Rm_msgsChangeWorkFrame_Name(_Codecs.Writer writer, _Ros1Rm_msgsChangeWorkFrame_Name value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@WorkFrame_name;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_msgs/ChangeWorkFrame_Name candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsChangeWorkFrame_Name ReadRos1Rm_msgsChangeWorkFrame_Name(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsChangeWorkFrame_Name();
        value.@WorkFrame_name = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeWorkFrame_State fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsChangeWorkFrame_State
    {
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeWorkFrame_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeWorkFrame_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/ChangeWorkFrame_State fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsChangeWorkFrame_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsChangeWorkFrame_State>
    {
        public static readonly Ros1Rm_msgsChangeWorkFrame_StateCodec Instance = new Ros1Rm_msgsChangeWorkFrame_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ChangeWorkFrame_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsChangeWorkFrame_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/ChangeWorkFrame_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_msgs/ChangeWorkFrame_State.
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
        public byte[] Encode(_Ros1Rm_msgsChangeWorkFrame_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsChangeWorkFrame_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/ChangeWorkFrame_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsChangeWorkFrame_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsChangeWorkFrame_State value = ReadRos1Rm_msgsChangeWorkFrame_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/ChangeWorkFrame_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsChangeWorkFrame_State(_Codecs.Writer writer, _Ros1Rm_msgsChangeWorkFrame_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@state;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/ChangeWorkFrame_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsChangeWorkFrame_State ReadRos1Rm_msgsChangeWorkFrame_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsChangeWorkFrame_State();
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Err fields.
     * @details 1 ordered fields, canonical extent 4..36 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsErr
    {
        public ushort[] @err = new ushort[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Err.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsErr()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Err fields.
     * @details 1 ordered fields, canonical extent 4..36 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsErrCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsErr>
    {
        public static readonly Ros1Rm_msgsErrCodec Instance = new Ros1Rm_msgsErrCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Err.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsErrCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Err";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 36;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Err.
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
        public byte[] Encode(_Ros1Rm_msgsErr value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsErr(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Err.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsErr Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsErr value = ReadRos1Rm_msgsErr(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Err component into checked staging storage.
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
    private static void WriteRos1Rm_msgsErr(_Codecs.Writer writer, _Ros1Rm_msgsErr value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort[] part0 = value.@err;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            ushort element = part0[index];
            writer.Unsigned(element, 2);
        }
    }

    /**
     * @brief Read one rm_msgs/Err candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsErr ReadRos1Rm_msgsErr(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsErr();
        value.@err = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@err.Length; ++index)
            value.@err[index] = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Flowchartrunstate fields.
     * @details 6 ordered fields, canonical extent 12..524 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsFlowchartrunstate
    {
        public byte @run_state = 0;
        public byte @id = 0;
        public string @name = "";
        public byte @plan_speed = 0;
        public byte @step_mode = 0;
        public string @modal_id = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Flowchartrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsFlowchartrunstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Flowchartrunstate fields.
     * @details 6 ordered fields, canonical extent 12..524 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsFlowchartrunstateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsFlowchartrunstate>
    {
        public static readonly Ros1Rm_msgsFlowchartrunstateCodec Instance = new Ros1Rm_msgsFlowchartrunstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Flowchartrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsFlowchartrunstateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Flowchartrunstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 524;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Flowchartrunstate.
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
        public byte[] Encode(_Ros1Rm_msgsFlowchartrunstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsFlowchartrunstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Flowchartrunstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsFlowchartrunstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsFlowchartrunstate value = ReadRos1Rm_msgsFlowchartrunstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Flowchartrunstate component into checked staging storage.
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
    private static void WriteRos1Rm_msgsFlowchartrunstate(_Codecs.Writer writer, _Ros1Rm_msgsFlowchartrunstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@run_state;
        writer.Unsigned(part0, 1);
        byte part1 = value.@id;
        writer.Unsigned(part1, 1);
        string part2 = value.@name;

        WriteText(writer, part2, 256);
        byte part3 = value.@plan_speed;
        writer.Unsigned(part3, 1);
        byte part4 = value.@step_mode;
        writer.Unsigned(part4, 1);
        string part5 = value.@modal_id;

        WriteText(writer, part5, 256);
    }

    /**
     * @brief Read one rm_msgs/Flowchartrunstate candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsFlowchartrunstate ReadRos1Rm_msgsFlowchartrunstate(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsFlowchartrunstate();
        value.@run_state = unchecked((byte)reader.Unsigned(1));
        value.@id = unchecked((byte)reader.Unsigned(1));
        value.@name = ReadText(reader, 256);
        value.@plan_speed = unchecked((byte)reader.Unsigned(1));
        value.@step_mode = unchecked((byte)reader.Unsigned(1));
        value.@modal_id = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_Move_Joint fields.
     * @details 6 ordered fields, canonical extent 10..74 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsForce_Position_Move_Joint
    {
        public float[] @joint = new float[0];
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte @dir = 0;
        public short @force = 0;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_Move_Joint.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_Move_Joint()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_Move_Joint fields.
     * @details 6 ordered fields, canonical extent 10..74 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsForce_Position_Move_JointCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsForce_Position_Move_Joint>
    {
        public static readonly Ros1Rm_msgsForce_Position_Move_JointCodec Instance = new Ros1Rm_msgsForce_Position_Move_JointCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_Move_Joint.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsForce_Position_Move_JointCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Force_Position_Move_Joint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 74;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Force_Position_Move_Joint.
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
        public byte[] Encode(_Ros1Rm_msgsForce_Position_Move_Joint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsForce_Position_Move_Joint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Force_Position_Move_Joint.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_Move_Joint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsForce_Position_Move_Joint value = ReadRos1Rm_msgsForce_Position_Move_Joint(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Force_Position_Move_Joint component into checked staging
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
    private static void WriteRos1Rm_msgsForce_Position_Move_Joint(_Codecs.Writer writer, _Ros1Rm_msgsForce_Position_Move_Joint value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        byte part1 = value.@sensor;
        writer.Unsigned(part1, 1);
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@dir;
        writer.Unsigned(part3, 1);
        short part4 = value.@force;
        writer.Unsigned(unchecked((ushort)part4), 2);
        byte part5 = value.@dof;
        writer.Unsigned(part5, 1);
    }

    /**
     * @brief Read one rm_msgs/Force_Position_Move_Joint candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsForce_Position_Move_Joint ReadRos1Rm_msgsForce_Position_Move_Joint(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsForce_Position_Move_Joint();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@dir = unchecked((byte)reader.Unsigned(1));
        value.@force = unchecked((short)reader.Unsigned(2));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_Move_Pose fields.
     * @details 5 ordered fields, canonical extent 61..61 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsForce_Position_Move_Pose
    {
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte @dir = 0;
        public short @force = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_Move_Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_Move_Pose()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_Move_Pose fields.
     * @details 5 ordered fields, canonical extent 61..61 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsForce_Position_Move_PoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsForce_Position_Move_Pose>
    {
        public static readonly Ros1Rm_msgsForce_Position_Move_PoseCodec Instance = new Ros1Rm_msgsForce_Position_Move_PoseCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_Move_Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsForce_Position_Move_PoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Force_Position_Move_Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02";
        public const int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 61;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Force_Position_Move_Pose.
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
        public byte[] Encode(_Ros1Rm_msgsForce_Position_Move_Pose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsForce_Position_Move_Pose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Force_Position_Move_Pose.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_Move_Pose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsForce_Position_Move_Pose value = ReadRos1Rm_msgsForce_Position_Move_Pose(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Force_Position_Move_Pose component into checked staging storage.
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
    private static void WriteRos1Rm_msgsForce_Position_Move_Pose(_Codecs.Writer writer, _Ros1Rm_msgsForce_Position_Move_Pose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
        byte part1 = value.@sensor;
        writer.Unsigned(part1, 1);
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@dir;
        writer.Unsigned(part3, 1);
        short part4 = value.@force;
        writer.Unsigned(unchecked((ushort)part4), 2);
    }

    /**
     * @brief Read one rm_msgs/Force_Position_Move_Pose candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsForce_Position_Move_Pose ReadRos1Rm_msgsForce_Position_Move_Pose(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsForce_Position_Move_Pose();
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@dir = unchecked((byte)reader.Unsigned(1));
        value.@force = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_Move_Pose_Custom fields.
     * @details 8 ordered fields, canonical extent 64..64 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsForce_Position_Move_Pose_Custom
    {
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte @dir = 0;
        public short @force = 0;
        public bool @follow = false;
        public byte @trajectory_mode = 0;
        public byte @radio = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_Move_Pose_Custom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_Move_Pose_Custom()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_Move_Pose_Custom fields.
     * @details 8 ordered fields, canonical extent 64..64 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsForce_Position_Move_Pose_CustomCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsForce_Position_Move_Pose_Custom>
    {
        public static readonly Ros1Rm_msgsForce_Position_Move_Pose_CustomCodec Instance = new Ros1Rm_msgsForce_Position_Move_Pose_CustomCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_Move_Pose_Custom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsForce_Position_Move_Pose_CustomCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Force_Position_Move_Pose_Custom";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Force_Position_Move_Pose_Custom.
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
        public byte[] Encode(_Ros1Rm_msgsForce_Position_Move_Pose_Custom value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsForce_Position_Move_Pose_Custom(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Force_Position_Move_Pose_Custom.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_Move_Pose_Custom Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsForce_Position_Move_Pose_Custom value = ReadRos1Rm_msgsForce_Position_Move_Pose_Custom(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Force_Position_Move_Pose_Custom component into checked staging
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
    private static void WriteRos1Rm_msgsForce_Position_Move_Pose_Custom(_Codecs.Writer writer, _Ros1Rm_msgsForce_Position_Move_Pose_Custom value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
        byte part1 = value.@sensor;
        writer.Unsigned(part1, 1);
        byte part2 = value.@mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@dir;
        writer.Unsigned(part3, 1);
        short part4 = value.@force;
        writer.Unsigned(unchecked((ushort)part4), 2);
        bool part5 = value.@follow;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        byte part6 = value.@trajectory_mode;
        writer.Unsigned(part6, 1);
        byte part7 = value.@radio;
        writer.Unsigned(part7, 1);
    }

    /**
     * @brief Read one rm_msgs/Force_Position_Move_Pose_Custom candidate through the checked canonical
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
    private static _Ros1Rm_msgsForce_Position_Move_Pose_Custom ReadRos1Rm_msgsForce_Position_Move_Pose_Custom(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsForce_Position_Move_Pose_Custom();
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@dir = unchecked((byte)reader.Unsigned(1));
        value.@force = unchecked((short)reader.Unsigned(2));
        value.@follow = ReadBool(reader);
        value.@trajectory_mode = unchecked((byte)reader.Unsigned(1));
        value.@radio = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_State fields.
     * @details 4 ordered fields, canonical extent 11..75 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsForce_Position_State
    {
        public float[] @joint = new float[0];
        public float @force = 0;
        public ushort @arm_err = 0;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Force_Position_State fields.
     * @details 4 ordered fields, canonical extent 11..75 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsForce_Position_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsForce_Position_State>
    {
        public static readonly Ros1Rm_msgsForce_Position_StateCodec Instance = new Ros1Rm_msgsForce_Position_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Force_Position_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsForce_Position_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Force_Position_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367";
        public const int MIN_WIRE_BYTES = 11, MAX_WIRE_BYTES = 75;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Force_Position_State.
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
        public byte[] Encode(_Ros1Rm_msgsForce_Position_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsForce_Position_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Force_Position_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsForce_Position_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsForce_Position_State value = ReadRos1Rm_msgsForce_Position_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Force_Position_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsForce_Position_State(_Codecs.Writer writer, _Ros1Rm_msgsForce_Position_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float part1 = value.@force;

        WriteFloat32(writer, part1);
        ushort part2 = value.@arm_err;
        writer.Unsigned(part2, 2);
        byte part3 = value.@dof;
        writer.Unsigned(part3, 1);
    }

    /**
     * @brief Read one rm_msgs/Force_Position_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsForce_Position_State ReadRos1Rm_msgsForce_Position_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsForce_Position_State();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@force = ReadFloat32(reader);
        value.@arm_err = unchecked((ushort)reader.Unsigned(2));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/GetArmState_Command fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsGetArmState_Command
    {
        public string @command = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/GetArmState_Command.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGetArmState_Command()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/GetArmState_Command fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsGetArmState_CommandCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsGetArmState_Command>
    {
        public static readonly Ros1Rm_msgsGetArmState_CommandCodec Instance = new Ros1Rm_msgsGetArmState_CommandCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/GetArmState_Command.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsGetArmState_CommandCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/GetArmState_Command";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_msgs/GetArmState_Command.
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
        public byte[] Encode(_Ros1Rm_msgsGetArmState_Command value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsGetArmState_Command(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/GetArmState_Command.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGetArmState_Command Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsGetArmState_Command value = ReadRos1Rm_msgsGetArmState_Command(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/GetArmState_Command component into checked staging storage.
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
    private static void WriteRos1Rm_msgsGetArmState_Command(_Codecs.Writer writer, _Ros1Rm_msgsGetArmState_Command value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@command;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_msgs/GetArmState_Command candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsGetArmState_Command ReadRos1Rm_msgsGetArmState_Command(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsGetArmState_Command();
        value.@command = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Get_TCP_Master_List_Param fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsGet_TCP_Master_List_Param
    {
        public int @page_num = 0;
        public int @page_size = 0;
        public string @vague_search = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Get_TCP_Master_List_Param.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGet_TCP_Master_List_Param()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Get_TCP_Master_List_Param fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsGet_TCP_Master_List_ParamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsGet_TCP_Master_List_Param>
    {
        public static readonly Ros1Rm_msgsGet_TCP_Master_List_ParamCodec Instance = new Ros1Rm_msgsGet_TCP_Master_List_ParamCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Get_TCP_Master_List_Param.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsGet_TCP_Master_List_ParamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Get_TCP_Master_List_Param";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Get_TCP_Master_List_Param.
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
        public byte[] Encode(_Ros1Rm_msgsGet_TCP_Master_List_Param value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsGet_TCP_Master_List_Param(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Get_TCP_Master_List_Param.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGet_TCP_Master_List_Param Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsGet_TCP_Master_List_Param value = ReadRos1Rm_msgsGet_TCP_Master_List_Param(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Get_TCP_Master_List_Param component into checked staging
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
    private static void WriteRos1Rm_msgsGet_TCP_Master_List_Param(_Codecs.Writer writer, _Ros1Rm_msgsGet_TCP_Master_List_Param value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@page_num;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@page_size;
        writer.Unsigned(unchecked((uint)part1), 4);
        string part2 = value.@vague_search;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one rm_msgs/Get_TCP_Master_List_Param candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsGet_TCP_Master_List_Param ReadRos1Rm_msgsGet_TCP_Master_List_Param(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsGet_TCP_Master_List_Param();
        value.@page_num = unchecked((int)reader.Unsigned(4));
        value.@page_size = unchecked((int)reader.Unsigned(4));
        value.@vague_search = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Gettrajectorylist fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsGettrajectorylist
    {
        public int @page_num = 0;
        public int @page_size = 0;
        public string @vague_search = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Gettrajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGettrajectorylist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Gettrajectorylist fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsGettrajectorylistCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsGettrajectorylist>
    {
        public static readonly Ros1Rm_msgsGettrajectorylistCodec Instance = new Ros1Rm_msgsGettrajectorylistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Gettrajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsGettrajectorylistCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Gettrajectorylist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Gettrajectorylist.
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
        public byte[] Encode(_Ros1Rm_msgsGettrajectorylist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsGettrajectorylist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Gettrajectorylist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGettrajectorylist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsGettrajectorylist value = ReadRos1Rm_msgsGettrajectorylist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Gettrajectorylist component into checked staging storage.
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
    private static void WriteRos1Rm_msgsGettrajectorylist(_Codecs.Writer writer, _Ros1Rm_msgsGettrajectorylist value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@page_num;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@page_size;
        writer.Unsigned(unchecked((uint)part1), 4);
        string part2 = value.@vague_search;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one rm_msgs/Gettrajectorylist candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsGettrajectorylist ReadRos1Rm_msgsGettrajectorylist(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsGettrajectorylist();
        value.@page_num = unchecked((int)reader.Unsigned(4));
        value.@page_size = unchecked((int)reader.Unsigned(4));
        value.@vague_search = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Gripper_Pick fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsGripper_Pick
    {
        public ushort @speed = 0;
        public ushort @force = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Gripper_Pick.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGripper_Pick()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Gripper_Pick fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsGripper_PickCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsGripper_Pick>
    {
        public static readonly Ros1Rm_msgsGripper_PickCodec Instance = new Ros1Rm_msgsGripper_PickCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Gripper_Pick.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsGripper_PickCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Gripper_Pick";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Gripper_Pick.
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
        public byte[] Encode(_Ros1Rm_msgsGripper_Pick value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsGripper_Pick(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Gripper_Pick.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGripper_Pick Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsGripper_Pick value = ReadRos1Rm_msgsGripper_Pick(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Gripper_Pick component into checked staging storage.
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
    private static void WriteRos1Rm_msgsGripper_Pick(_Codecs.Writer writer, _Ros1Rm_msgsGripper_Pick value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@speed;
        writer.Unsigned(part0, 2);
        ushort part1 = value.@force;
        writer.Unsigned(part1, 2);
    }

    /**
     * @brief Read one rm_msgs/Gripper_Pick candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsGripper_Pick ReadRos1Rm_msgsGripper_Pick(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsGripper_Pick();
        value.@speed = unchecked((ushort)reader.Unsigned(2));
        value.@force = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Gripper_Set fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsGripper_Set
    {
        public ushort @position = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Gripper_Set.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGripper_Set()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Gripper_Set fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsGripper_SetCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsGripper_Set>
    {
        public static readonly Ros1Rm_msgsGripper_SetCodec Instance = new Ros1Rm_msgsGripper_SetCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Gripper_Set.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsGripper_SetCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Gripper_Set";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Gripper_Set.
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
        public byte[] Encode(_Ros1Rm_msgsGripper_Set value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsGripper_Set(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Gripper_Set.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsGripper_Set Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsGripper_Set value = ReadRos1Rm_msgsGripper_Set(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Gripper_Set component into checked staging storage.
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
    private static void WriteRos1Rm_msgsGripper_Set(_Codecs.Writer writer, _Ros1Rm_msgsGripper_Set value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@position;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_msgs/Gripper_Set candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsGripper_Set ReadRos1Rm_msgsGripper_Set(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsGripper_Set();
        value.@position = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Angle fields.
     * @details 2 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsHand_Angle
    {
        public short[] @hand_angle = new short[6];
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Angle.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Angle()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Angle fields.
     * @details 2 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsHand_AngleCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsHand_Angle>
    {
        public static readonly Ros1Rm_msgsHand_AngleCodec Instance = new Ros1Rm_msgsHand_AngleCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Angle.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsHand_AngleCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Hand_Angle";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Hand_Angle.
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
        public byte[] Encode(_Ros1Rm_msgsHand_Angle value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsHand_Angle(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Hand_Angle.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Angle Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsHand_Angle value = ReadRos1Rm_msgsHand_Angle(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Hand_Angle component into checked staging storage.
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
    private static void WriteRos1Rm_msgsHand_Angle(_Codecs.Writer writer, _Ros1Rm_msgsHand_Angle value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short[] part0 = value.@hand_angle;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            short element = part0[index];
            writer.Unsigned(unchecked((ushort)element), 2);
        }
        bool part1 = value.@block;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Hand_Angle candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsHand_Angle ReadRos1Rm_msgsHand_Angle(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsHand_Angle();
        value.@hand_angle = new short[6];
        for(int index = 0; index < value.@hand_angle.Length; ++index)
            value.@hand_angle[index] = unchecked((short)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Force fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsHand_Force
    {
        public ushort @hand_force = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Force.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Force()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Force fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsHand_ForceCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsHand_Force>
    {
        public static readonly Ros1Rm_msgsHand_ForceCodec Instance = new Ros1Rm_msgsHand_ForceCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Force.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsHand_ForceCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Hand_Force";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Hand_Force.
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
        public byte[] Encode(_Ros1Rm_msgsHand_Force value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsHand_Force(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Hand_Force.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Force Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsHand_Force value = ReadRos1Rm_msgsHand_Force(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Hand_Force component into checked staging storage.
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
    private static void WriteRos1Rm_msgsHand_Force(_Codecs.Writer writer, _Ros1Rm_msgsHand_Force value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@hand_force;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_msgs/Hand_Force candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsHand_Force ReadRos1Rm_msgsHand_Force(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsHand_Force();
        value.@hand_force = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Posture fields.
     * @details 2 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsHand_Posture
    {
        public ushort @posture_num = 0;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Posture.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Posture()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Posture fields.
     * @details 2 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsHand_PostureCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsHand_Posture>
    {
        public static readonly Ros1Rm_msgsHand_PostureCodec Instance = new Ros1Rm_msgsHand_PostureCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Posture.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsHand_PostureCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Hand_Posture";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Hand_Posture.
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
        public byte[] Encode(_Ros1Rm_msgsHand_Posture value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsHand_Posture(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Hand_Posture.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Posture Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsHand_Posture value = ReadRos1Rm_msgsHand_Posture(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Hand_Posture component into checked staging storage.
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
    private static void WriteRos1Rm_msgsHand_Posture(_Codecs.Writer writer, _Ros1Rm_msgsHand_Posture value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@posture_num;
        writer.Unsigned(part0, 2);
        bool part1 = value.@block;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Hand_Posture candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsHand_Posture ReadRos1Rm_msgsHand_Posture(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsHand_Posture();
        value.@posture_num = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Seq fields.
     * @details 2 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsHand_Seq
    {
        public ushort @seq_num = 0;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Seq.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Seq()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Seq fields.
     * @details 2 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsHand_SeqCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsHand_Seq>
    {
        public static readonly Ros1Rm_msgsHand_SeqCodec Instance = new Ros1Rm_msgsHand_SeqCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Seq.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsHand_SeqCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Hand_Seq";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Hand_Seq.
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
        public byte[] Encode(_Ros1Rm_msgsHand_Seq value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsHand_Seq(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Hand_Seq.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Seq Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsHand_Seq value = ReadRos1Rm_msgsHand_Seq(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Hand_Seq component into checked staging storage.
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
    private static void WriteRos1Rm_msgsHand_Seq(_Codecs.Writer writer, _Ros1Rm_msgsHand_Seq value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@seq_num;
        writer.Unsigned(part0, 2);
        bool part1 = value.@block;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Hand_Seq candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsHand_Seq ReadRos1Rm_msgsHand_Seq(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsHand_Seq();
        value.@seq_num = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Speed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsHand_Speed
    {
        public ushort @hand_speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Speed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Speed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsHand_SpeedCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsHand_Speed>
    {
        public static readonly Ros1Rm_msgsHand_SpeedCodec Instance = new Ros1Rm_msgsHand_SpeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Hand_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsHand_SpeedCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Hand_Speed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Hand_Speed.
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
        public byte[] Encode(_Ros1Rm_msgsHand_Speed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsHand_Speed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Hand_Speed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Speed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsHand_Speed value = ReadRos1Rm_msgsHand_Speed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Hand_Speed component into checked staging storage.
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
    private static void WriteRos1Rm_msgsHand_Speed(_Codecs.Writer writer, _Ros1Rm_msgsHand_Speed value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@hand_speed;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_msgs/Hand_Speed candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsHand_Speed ReadRos1Rm_msgsHand_Speed(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsHand_Speed();
        value.@hand_speed = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Status fields.
     * @details 5 ordered fields, canonical extent 50..50 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsHand_Status
    {
        public ushort[] @hand_angle = new ushort[6];
        public ushort[] @hand_pos = new ushort[6];
        public ushort[] @hand_state = new ushort[6];
        public ushort[] @hand_force = new ushort[6];
        public ushort @hand_err = 0;

        /**
         * @brief Check the complete finite representation of rm_msgs/Hand_Status.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Status()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Hand_Status fields.
     * @details 5 ordered fields, canonical extent 50..50 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsHand_StatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsHand_Status>
    {
        public static readonly Ros1Rm_msgsHand_StatusCodec Instance = new Ros1Rm_msgsHand_StatusCodec();

        /**
         * @brief Check the complete finite representation of rm_msgs/Hand_Status.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsHand_StatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Hand_Status";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Hand_Status.
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
        public byte[] Encode(_Ros1Rm_msgsHand_Status value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsHand_Status(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Hand_Status.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsHand_Status Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsHand_Status value = ReadRos1Rm_msgsHand_Status(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Hand_Status component into checked staging storage.
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
    private static void WriteRos1Rm_msgsHand_Status(_Codecs.Writer writer, _Ros1Rm_msgsHand_Status value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort[] part0 = value.@hand_angle;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            ushort element = part0[index];
            writer.Unsigned(element, 2);
        }
        ushort[] part1 = value.@hand_pos;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            ushort element = part1[index];
            writer.Unsigned(element, 2);
        }
        ushort[] part2 = value.@hand_state;
        if(part2 == null || part2.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            ushort element = part2[index];
            writer.Unsigned(element, 2);
        }
        ushort[] part3 = value.@hand_force;
        if(part3 == null || part3.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            ushort element = part3[index];
            writer.Unsigned(element, 2);
        }
        ushort part4 = value.@hand_err;
        writer.Unsigned(part4, 2);
    }

    /**
     * @brief Read one rm_msgs/Hand_Status candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsHand_Status ReadRos1Rm_msgsHand_Status(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsHand_Status();
        value.@hand_angle = new ushort[6];
        for(int index = 0; index < value.@hand_angle.Length; ++index)
            value.@hand_angle[index] = unchecked((ushort)reader.Unsigned(2));
        value.@hand_pos = new ushort[6];
        for(int index = 0; index < value.@hand_pos.Length; ++index)
            value.@hand_pos[index] = unchecked((ushort)reader.Unsigned(2));
        value.@hand_state = new ushort[6];
        for(int index = 0; index < value.@hand_state.Length; ++index)
            value.@hand_state[index] = unchecked((ushort)reader.Unsigned(2));
        value.@hand_force = new ushort[6];
        for(int index = 0; index < value.@hand_force.Length; ++index)
            value.@hand_force[index] = unchecked((ushort)reader.Unsigned(2));
        value.@hand_err = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/IO_Update fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsIO_Update
    {
        public byte @type = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/IO_Update.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsIO_Update()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/IO_Update fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsIO_UpdateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsIO_Update>
    {
        public static readonly Ros1Rm_msgsIO_UpdateCodec Instance = new Ros1Rm_msgsIO_UpdateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/IO_Update.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsIO_UpdateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/IO_Update";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_msgs/IO_Update.
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
        public byte[] Encode(_Ros1Rm_msgsIO_Update value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsIO_Update(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/IO_Update.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsIO_Update Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsIO_Update value = ReadRos1Rm_msgsIO_Update(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/IO_Update component into checked staging storage.
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
    private static void WriteRos1Rm_msgsIO_Update(_Codecs.Writer writer, _Ros1Rm_msgsIO_Update value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@type;
        writer.Unsigned(part0, 1);
    }

    /**
     * @brief Read one rm_msgs/IO_Update candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsIO_Update ReadRos1Rm_msgsIO_Update(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsIO_Update();
        value.@type = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/JointPos fields.
     * @details 2 ordered fields, canonical extent 8..72 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJointPos
    {
        public float[] @joint = new float[0];
        public float @expand = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/JointPos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJointPos()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/JointPos fields.
     * @details 2 ordered fields, canonical extent 8..72 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJointPosCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJointPos>
    {
        public static readonly Ros1Rm_msgsJointPosCodec Instance = new Ros1Rm_msgsJointPosCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/JointPos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJointPosCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/JointPos";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 72;

        /**
         * @brief Encode the complete ordered value for rm_msgs/JointPos.
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
        public byte[] Encode(_Ros1Rm_msgsJointPos value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJointPos(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/JointPos.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJointPos Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJointPos value = ReadRos1Rm_msgsJointPos(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/JointPos component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJointPos(_Codecs.Writer writer, _Ros1Rm_msgsJointPos value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float part1 = value.@expand;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one rm_msgs/JointPos candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJointPos ReadRos1Rm_msgsJointPos(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJointPos();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@expand = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/JointPosCustom fields.
     * @details 5 ordered fields, canonical extent 11..75 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJointPosCustom
    {
        public float[] @joint = new float[0];
        public float @expand = 0;
        public bool @follow = false;
        public byte @trajectory_mode = 0;
        public byte @radio = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/JointPosCustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJointPosCustom()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/JointPosCustom fields.
     * @details 5 ordered fields, canonical extent 11..75 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJointPosCustomCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJointPosCustom>
    {
        public static readonly Ros1Rm_msgsJointPosCustomCodec Instance = new Ros1Rm_msgsJointPosCustomCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/JointPosCustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJointPosCustomCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/JointPosCustom";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676";
        public const int MIN_WIRE_BYTES = 11, MAX_WIRE_BYTES = 75;

        /**
         * @brief Encode the complete ordered value for rm_msgs/JointPosCustom.
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
        public byte[] Encode(_Ros1Rm_msgsJointPosCustom value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJointPosCustom(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/JointPosCustom.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJointPosCustom Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJointPosCustom value = ReadRos1Rm_msgsJointPosCustom(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/JointPosCustom component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJointPosCustom(_Codecs.Writer writer, _Ros1Rm_msgsJointPosCustom value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float part1 = value.@expand;

        WriteFloat32(writer, part1);
        bool part2 = value.@follow;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        byte part3 = value.@trajectory_mode;
        writer.Unsigned(part3, 1);
        byte part4 = value.@radio;
        writer.Unsigned(part4, 1);
    }

    /**
     * @brief Read one rm_msgs/JointPosCustom candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJointPosCustom ReadRos1Rm_msgsJointPosCustom(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJointPosCustom();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@expand = ReadFloat32(reader);
        value.@follow = ReadBool(reader);
        value.@trajectory_mode = unchecked((byte)reader.Unsigned(1));
        value.@radio = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Current fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Current
    {
        public float[] @joint_current = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Current.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Current()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Current fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_CurrentCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Current>
    {
        public static readonly Ros1Rm_msgsJoint_CurrentCodec Instance = new Ros1Rm_msgsJoint_CurrentCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Current.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_CurrentCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Current";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Current.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Current value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Current(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Current.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Current Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Current value = ReadRos1Rm_msgsJoint_Current(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Current component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Current(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Current value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint_current;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_Current candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Current ReadRos1Rm_msgsJoint_Current(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Current();
        value.@joint_current = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_current.Length; ++index)
            value.@joint_current[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_En_Flag fields.
     * @details 1 ordered fields, canonical extent 4..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_En_Flag
    {
        public bool[] @joint_en_flag = new bool[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_En_Flag.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_En_Flag()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_En_Flag fields.
     * @details 1 ordered fields, canonical extent 4..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_En_FlagCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_En_Flag>
    {
        public static readonly Ros1Rm_msgsJoint_En_FlagCodec Instance = new Ros1Rm_msgsJoint_En_FlagCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_En_Flag.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_En_FlagCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_En_Flag";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 20;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_En_Flag.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_En_Flag value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_En_Flag(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_En_Flag.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_En_Flag Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_En_Flag value = ReadRos1Rm_msgsJoint_En_Flag(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_En_Flag component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_En_Flag(_Codecs.Writer writer, _Ros1Rm_msgsJoint_En_Flag value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool[] part0 = value.@joint_en_flag;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            bool element = part0[index];
            writer.Unsigned(element ? 1UL : 0UL, 1);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_En_Flag candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_En_Flag ReadRos1Rm_msgsJoint_En_Flag(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_En_Flag();
        value.@joint_en_flag = new bool[ReadCount(reader, 16, 1)];
        for(int index = 0; index < value.@joint_en_flag.Length; ++index)
            value.@joint_en_flag[index] = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Enable fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Enable
    {
        public byte @joint_num = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Enable.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Enable()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Enable fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_EnableCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Enable>
    {
        public static readonly Ros1Rm_msgsJoint_EnableCodec Instance = new Ros1Rm_msgsJoint_EnableCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Enable.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_EnableCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Enable";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Enable.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Enable value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Enable(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Enable.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Enable Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Enable value = ReadRos1Rm_msgsJoint_Enable(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Enable component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Enable(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Enable value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@joint_num;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Joint_Enable candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Enable ReadRos1Rm_msgsJoint_Enable(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Enable();
        value.@joint_num = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Error_Code fields.
     * @details 1 ordered fields, canonical extent 4..36 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Error_Code
    {
        public ushort[] @joint_error = new ushort[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Error_Code.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Error_Code()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Error_Code fields.
     * @details 1 ordered fields, canonical extent 4..36 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_Error_CodeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Error_Code>
    {
        public static readonly Ros1Rm_msgsJoint_Error_CodeCodec Instance = new Ros1Rm_msgsJoint_Error_CodeCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Error_Code.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_Error_CodeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Error_Code";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 36;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Error_Code.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Error_Code value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Error_Code(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Error_Code.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Error_Code Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Error_Code value = ReadRos1Rm_msgsJoint_Error_Code(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Error_Code component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Error_Code(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Error_Code value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort[] part0 = value.@joint_error;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            ushort element = part0[index];
            writer.Unsigned(element, 2);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_Error_Code candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Error_Code ReadRos1Rm_msgsJoint_Error_Code(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Error_Code();
        value.@joint_error = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@joint_error.Length; ++index)
            value.@joint_error[index] = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Max_Speed fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Max_Speed
    {
        public byte @joint_num = 0;
        public float @joint_max_speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Max_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Max_Speed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Max_Speed fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_Max_SpeedCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Max_Speed>
    {
        public static readonly Ros1Rm_msgsJoint_Max_SpeedCodec Instance = new Ros1Rm_msgsJoint_Max_SpeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Max_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_Max_SpeedCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Max_Speed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Max_Speed.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Max_Speed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Max_Speed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Max_Speed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Max_Speed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Max_Speed value = ReadRos1Rm_msgsJoint_Max_Speed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Max_Speed component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Max_Speed(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Max_Speed value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@joint_num;
        writer.Unsigned(part0, 1);
        float part1 = value.@joint_max_speed;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one rm_msgs/Joint_Max_Speed candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Max_Speed ReadRos1Rm_msgsJoint_Max_Speed(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Max_Speed();
        value.@joint_num = unchecked((byte)reader.Unsigned(1));
        value.@joint_max_speed = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_PoseEuler fields.
     * @details 2 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_PoseEuler
    {
        public float[] @euler = new float[3];
        public float[] @position = new float[3];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_PoseEuler.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_PoseEuler()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_PoseEuler fields.
     * @details 2 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_PoseEulerCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_PoseEuler>
    {
        public static readonly Ros1Rm_msgsJoint_PoseEulerCodec Instance = new Ros1Rm_msgsJoint_PoseEulerCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_PoseEuler.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_PoseEulerCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_PoseEuler";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_PoseEuler.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_PoseEuler value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_PoseEuler(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_PoseEuler.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_PoseEuler Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_PoseEuler value = ReadRos1Rm_msgsJoint_PoseEuler(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_PoseEuler component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_PoseEuler(_Codecs.Writer writer, _Ros1Rm_msgsJoint_PoseEuler value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@euler;
        if(part0 == null || part0.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float[] part1 = value.@position;
        if(part1 == null || part1.Length != 3)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_PoseEuler candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_PoseEuler ReadRos1Rm_msgsJoint_PoseEuler(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_PoseEuler();
        value.@euler = new float[3];
        for(int index = 0; index < value.@euler.Length; ++index)
            value.@euler[index] = ReadFloat32(reader);
        value.@position = new float[3];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Speed fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Speed
    {
        public float[] @joint_speed = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Speed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Speed fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_SpeedCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Speed>
    {
        public static readonly Ros1Rm_msgsJoint_SpeedCodec Instance = new Ros1Rm_msgsJoint_SpeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_SpeedCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Speed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Speed.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Speed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Speed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Speed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Speed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Speed value = ReadRos1Rm_msgsJoint_Speed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Speed component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Speed(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Speed value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint_speed;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_Speed candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Speed ReadRos1Rm_msgsJoint_Speed(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Speed();
        value.@joint_speed = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_speed.Length; ++index)
            value.@joint_speed[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Step fields.
     * @details 3 ordered fields, canonical extent 9..9 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Step
    {
        public byte @joint_num = 0;
        public float @step_angle = 0;
        public float @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Step.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Step()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Step fields.
     * @details 3 ordered fields, canonical extent 9..9 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_StepCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Step>
    {
        public static readonly Ros1Rm_msgsJoint_StepCodec Instance = new Ros1Rm_msgsJoint_StepCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Step.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_StepCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Step";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Step.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Step value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Step(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Step.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Step Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Step value = ReadRos1Rm_msgsJoint_Step(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Step component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Step(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Step value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@joint_num;
        writer.Unsigned(part0, 1);
        float part1 = value.@step_angle;

        WriteFloat32(writer, part1);
        float part2 = value.@speed;

        WriteFloat32(writer, part2);
    }

    /**
     * @brief Read one rm_msgs/Joint_Step candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Step ReadRos1Rm_msgsJoint_Step(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Step();
        value.@joint_num = unchecked((byte)reader.Unsigned(1));
        value.@step_angle = ReadFloat32(reader);
        value.@speed = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Teach fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Teach
    {
        public short @teach_joint = 0;
        public string @direction = "";
        public short @v = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Teach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Teach fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_TeachCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Teach>
    {
        public static readonly Ros1Rm_msgsJoint_TeachCodec Instance = new Ros1Rm_msgsJoint_TeachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_TeachCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Teach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Teach.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Teach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Teach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Teach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Teach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Teach value = ReadRos1Rm_msgsJoint_Teach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Teach component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Teach(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Teach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@teach_joint;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@direction;

        WriteText(writer, part1, 256);
        short part2 = value.@v;
        writer.Unsigned(unchecked((ushort)part2), 2);
    }

    /**
     * @brief Read one rm_msgs/Joint_Teach candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Teach ReadRos1Rm_msgsJoint_Teach(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Teach();
        value.@teach_joint = unchecked((short)reader.Unsigned(2));
        value.@direction = ReadText(reader, 256);
        value.@v = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Temperature fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Temperature
    {
        public float[] @joint_temperature = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Temperature.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Temperature()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Temperature fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_TemperatureCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Temperature>
    {
        public static readonly Ros1Rm_msgsJoint_TemperatureCodec Instance = new Ros1Rm_msgsJoint_TemperatureCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Temperature.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_TemperatureCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Temperature";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Temperature.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Temperature value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Temperature(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Temperature.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Temperature Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Temperature value = ReadRos1Rm_msgsJoint_Temperature(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Temperature component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Temperature(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Temperature value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint_temperature;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_Temperature candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Temperature ReadRos1Rm_msgsJoint_Temperature(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Temperature();
        value.@joint_temperature = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_temperature.Length; ++index)
            value.@joint_temperature[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Voltage fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJoint_Voltage
    {
        public float[] @joint_voltage = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Voltage.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Voltage()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Joint_Voltage fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJoint_VoltageCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJoint_Voltage>
    {
        public static readonly Ros1Rm_msgsJoint_VoltageCodec Instance = new Ros1Rm_msgsJoint_VoltageCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Joint_Voltage.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJoint_VoltageCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Joint_Voltage";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Joint_Voltage.
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
        public byte[] Encode(_Ros1Rm_msgsJoint_Voltage value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJoint_Voltage(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Joint_Voltage.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJoint_Voltage Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJoint_Voltage value = ReadRos1Rm_msgsJoint_Voltage(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Joint_Voltage component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJoint_Voltage(_Codecs.Writer writer, _Ros1Rm_msgsJoint_Voltage value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint_voltage;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Joint_Voltage candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJoint_Voltage ReadRos1Rm_msgsJoint_Voltage(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJoint_Voltage();
        value.@joint_voltage = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_voltage.Length; ++index)
            value.@joint_voltage[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Jointversion fields.
     * @details 1 ordered fields, canonical extent 28..1820 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsJointversion
    {
        public string[] @joint_version = new string[7];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Jointversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJointversion()
        {
            for(int index = 0; index < 7; ++index)
                this.@joint_version[index] = "";
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Jointversion fields.
     * @details 1 ordered fields, canonical extent 28..1820 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsJointversionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsJointversion>
    {
        public static readonly Ros1Rm_msgsJointversionCodec Instance = new Ros1Rm_msgsJointversionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Jointversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsJointversionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Jointversion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1820;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Jointversion.
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
        public byte[] Encode(_Ros1Rm_msgsJointversion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsJointversion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Jointversion.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsJointversion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsJointversion value = ReadRos1Rm_msgsJointversion(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Jointversion component into checked staging storage.
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
    private static void WriteRos1Rm_msgsJointversion(_Codecs.Writer writer, _Ros1Rm_msgsJointversion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string[] part0 = value.@joint_version;
        if(part0 == null || part0.Length != 7)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            string element = part0[index];

            WriteText(writer, element, 256);
        }
    }

    /**
     * @brief Read one rm_msgs/Jointversion candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsJointversion ReadRos1Rm_msgsJointversion(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsJointversion();
        value.@joint_version = new string[7];
        for(int index = 0; index < value.@joint_version.Length; ++index)
            value.@joint_version[index] = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/LiftState fields.
     * @details 4 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsLiftState
    {
        public short @height = 0;
        public short @current = 0;
        public ushort @err_flag = 0;
        public sbyte @mode = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/LiftState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLiftState()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/LiftState fields.
     * @details 4 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsLiftStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsLiftState>
    {
        public static readonly Ros1Rm_msgsLiftStateCodec Instance = new Ros1Rm_msgsLiftStateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/LiftState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsLiftStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/LiftState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea";
        public const int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;

        /**
         * @brief Encode the complete ordered value for rm_msgs/LiftState.
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
        public byte[] Encode(_Ros1Rm_msgsLiftState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsLiftState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/LiftState.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLiftState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsLiftState value = ReadRos1Rm_msgsLiftState(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/LiftState component into checked staging storage.
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
    private static void WriteRos1Rm_msgsLiftState(_Codecs.Writer writer, _Ros1Rm_msgsLiftState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@height;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@current;
        writer.Unsigned(unchecked((ushort)part1), 2);
        ushort part2 = value.@err_flag;
        writer.Unsigned(part2, 2);
        sbyte part3 = value.@mode;
        writer.Unsigned(unchecked((byte)part3), 1);
    }

    /**
     * @brief Read one rm_msgs/LiftState candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsLiftState ReadRos1Rm_msgsLiftState(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsLiftState();
        value.@height = unchecked((short)reader.Unsigned(2));
        value.@current = unchecked((short)reader.Unsigned(2));
        value.@err_flag = unchecked((ushort)reader.Unsigned(2));
        value.@mode = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Lift_Height fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsLift_Height
    {
        public ushort @height = 0;
        public ushort @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Lift_Height.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLift_Height()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Lift_Height fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsLift_HeightCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsLift_Height>
    {
        public static readonly Ros1Rm_msgsLift_HeightCodec Instance = new Ros1Rm_msgsLift_HeightCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Lift_Height.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsLift_HeightCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Lift_Height";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Lift_Height.
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
        public byte[] Encode(_Ros1Rm_msgsLift_Height value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsLift_Height(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Lift_Height.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLift_Height Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsLift_Height value = ReadRos1Rm_msgsLift_Height(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Lift_Height component into checked staging storage.
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
    private static void WriteRos1Rm_msgsLift_Height(_Codecs.Writer writer, _Ros1Rm_msgsLift_Height value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@height;
        writer.Unsigned(part0, 2);
        ushort part1 = value.@speed;
        writer.Unsigned(part1, 2);
    }

    /**
     * @brief Read one rm_msgs/Lift_Height candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsLift_Height ReadRos1Rm_msgsLift_Height(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsLift_Height();
        value.@height = unchecked((ushort)reader.Unsigned(2));
        value.@speed = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Lift_In_Position fields.
     * @details 4 ordered fields, canonical extent 7..263 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsLift_In_Position
    {
        public byte @device = 0;
        public string @state = "";
        public byte @trajectory_connect = 0;
        public bool @trajectory_state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Lift_In_Position.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLift_In_Position()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Lift_In_Position fields.
     * @details 4 ordered fields, canonical extent 7..263 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsLift_In_PositionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsLift_In_Position>
    {
        public static readonly Ros1Rm_msgsLift_In_PositionCodec Instance = new Ros1Rm_msgsLift_In_PositionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Lift_In_Position.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsLift_In_PositionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Lift_In_Position";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787";
        public const int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 263;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Lift_In_Position.
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
        public byte[] Encode(_Ros1Rm_msgsLift_In_Position value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsLift_In_Position(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Lift_In_Position.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLift_In_Position Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsLift_In_Position value = ReadRos1Rm_msgsLift_In_Position(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Lift_In_Position component into checked staging storage.
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
    private static void WriteRos1Rm_msgsLift_In_Position(_Codecs.Writer writer, _Ros1Rm_msgsLift_In_Position value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@device;
        writer.Unsigned(part0, 1);
        string part1 = value.@state;

        WriteText(writer, part1, 256);
        byte part2 = value.@trajectory_connect;
        writer.Unsigned(part2, 1);
        bool part3 = value.@trajectory_state;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Lift_In_Position candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsLift_In_Position ReadRos1Rm_msgsLift_In_Position(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsLift_In_Position();
        value.@device = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadText(reader, 256);
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        value.@trajectory_state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Lift_Speed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsLift_Speed
    {
        public short @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Lift_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLift_Speed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Lift_Speed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsLift_SpeedCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsLift_Speed>
    {
        public static readonly Ros1Rm_msgsLift_SpeedCodec Instance = new Ros1Rm_msgsLift_SpeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Lift_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsLift_SpeedCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Lift_Speed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Lift_Speed.
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
        public byte[] Encode(_Ros1Rm_msgsLift_Speed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsLift_Speed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Lift_Speed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsLift_Speed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsLift_Speed value = ReadRos1Rm_msgsLift_Speed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Lift_Speed component into checked staging storage.
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
    private static void WriteRos1Rm_msgsLift_Speed(_Codecs.Writer writer, _Ros1Rm_msgsLift_Speed value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@speed;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one rm_msgs/Lift_Speed candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsLift_Speed ReadRos1Rm_msgsLift_Speed(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsLift_Speed();
        value.@speed = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Manual_Set_Force_Pose fields.
     * @details 2 ordered fields, canonical extent 8..392 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsManual_Set_Force_Pose
    {
        public string @pose = "";
        public long[] @joint = new long[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Manual_Set_Force_Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsManual_Set_Force_Pose()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Manual_Set_Force_Pose fields.
     * @details 2 ordered fields, canonical extent 8..392 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsManual_Set_Force_PoseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsManual_Set_Force_Pose>
    {
        public static readonly Ros1Rm_msgsManual_Set_Force_PoseCodec Instance = new Ros1Rm_msgsManual_Set_Force_PoseCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Manual_Set_Force_Pose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsManual_Set_Force_PoseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Manual_Set_Force_Pose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 392;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Manual_Set_Force_Pose.
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
        public byte[] Encode(_Ros1Rm_msgsManual_Set_Force_Pose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsManual_Set_Force_Pose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Manual_Set_Force_Pose.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsManual_Set_Force_Pose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsManual_Set_Force_Pose value = ReadRos1Rm_msgsManual_Set_Force_Pose(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Manual_Set_Force_Pose component into checked staging storage.
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
    private static void WriteRos1Rm_msgsManual_Set_Force_Pose(_Codecs.Writer writer, _Ros1Rm_msgsManual_Set_Force_Pose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@pose;

        WriteText(writer, part0, 256);
        long[] part1 = value.@joint;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            long element = part1[index];
            writer.Unsigned(unchecked((ulong)element), 8);
        }
    }

    /**
     * @brief Read one rm_msgs/Manual_Set_Force_Pose candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsManual_Set_Force_Pose ReadRos1Rm_msgsManual_Set_Force_Pose(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsManual_Set_Force_Pose();
        value.@pose = ReadText(reader, 256);
        value.@joint = new long[ReadCount(reader, 16, 8)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = unchecked((long)reader.Unsigned(8));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Mastername fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsMastername
    {
        public string @master_name = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Mastername.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMastername()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Mastername fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsMasternameCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsMastername>
    {
        public static readonly Ros1Rm_msgsMasternameCodec Instance = new Ros1Rm_msgsMasternameCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Mastername.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsMasternameCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Mastername";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Mastername.
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
        public byte[] Encode(_Ros1Rm_msgsMastername value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsMastername(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Mastername.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMastername Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsMastername value = ReadRos1Rm_msgsMastername(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Mastername component into checked staging storage.
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
    private static void WriteRos1Rm_msgsMastername(_Codecs.Writer writer, _Ros1Rm_msgsMastername value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@master_name;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_msgs/Mastername candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsMastername ReadRos1Rm_msgsMastername(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsMastername();
        value.@master_name = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Modbusreaddata fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsModbusreaddata
    {
        public int[] @read_data = new int[0];

        /**
         * @brief Decode the whole canonical value for rm_msgs/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsModbusreaddata()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Modbusreaddata fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsModbusreaddataCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsModbusreaddata>
    {
        public static readonly Ros1Rm_msgsModbusreaddataCodec Instance = new Ros1Rm_msgsModbusreaddataCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsModbusreaddataCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Modbusreaddata";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Modbusreaddata.
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
        public byte[] Encode(_Ros1Rm_msgsModbusreaddata value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsModbusreaddata(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsModbusreaddata Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsModbusreaddata value = ReadRos1Rm_msgsModbusreaddata(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Modbusreaddata component into checked staging storage.
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
    private static void WriteRos1Rm_msgsModbusreaddata(_Codecs.Writer writer, _Ros1Rm_msgsModbusreaddata value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int[] part0 = value.@read_data;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            int element = part0[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_msgs/Modbusreaddata candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsModbusreaddata ReadRos1Rm_msgsModbusreaddata(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsModbusreaddata();
        value.@read_data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@read_data.Length; ++index)
            value.@read_data[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Modbustcpmasterinfo fields.
     * @details 3 ordered fields, canonical extent 12..524 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsModbustcpmasterinfo
    {
        public string @master_name = "";
        public string @ip = "";
        public int @port = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Modbustcpmasterinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsModbustcpmasterinfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Modbustcpmasterinfo fields.
     * @details 3 ordered fields, canonical extent 12..524 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsModbustcpmasterinfoCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsModbustcpmasterinfo>
    {
        public static readonly Ros1Rm_msgsModbustcpmasterinfoCodec Instance = new Ros1Rm_msgsModbustcpmasterinfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Modbustcpmasterinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsModbustcpmasterinfoCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Modbustcpmasterinfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 524;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Modbustcpmasterinfo.
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
        public byte[] Encode(_Ros1Rm_msgsModbustcpmasterinfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsModbustcpmasterinfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Modbustcpmasterinfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsModbustcpmasterinfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsModbustcpmasterinfo value = ReadRos1Rm_msgsModbustcpmasterinfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Modbustcpmasterinfo component into checked staging storage.
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
    private static void WriteRos1Rm_msgsModbustcpmasterinfo(_Codecs.Writer writer, _Ros1Rm_msgsModbustcpmasterinfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@master_name;

        WriteText(writer, part0, 256);
        string part1 = value.@ip;

        WriteText(writer, part1, 256);
        int part2 = value.@port;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    /**
     * @brief Read one rm_msgs/Modbustcpmasterinfo candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsModbustcpmasterinfo ReadRos1Rm_msgsModbustcpmasterinfo(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsModbustcpmasterinfo();
        value.@master_name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Modbustcpmasterlist fields.
     * @details 1 ordered fields, canonical extent 4..8388 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsModbustcpmasterlist
    {
        public _Ros1Rm_msgsModbustcpmasterinfo[] @master_list = new _Ros1Rm_msgsModbustcpmasterinfo[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Modbustcpmasterlist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsModbustcpmasterlist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Modbustcpmasterlist fields.
     * @details 1 ordered fields, canonical extent 4..8388 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsModbustcpmasterlistCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsModbustcpmasterlist>
    {
        public static readonly Ros1Rm_msgsModbustcpmasterlistCodec Instance = new Ros1Rm_msgsModbustcpmasterlistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Modbustcpmasterlist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsModbustcpmasterlistCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Modbustcpmasterlist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 8388;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Modbustcpmasterlist.
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
        public byte[] Encode(_Ros1Rm_msgsModbustcpmasterlist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsModbustcpmasterlist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Modbustcpmasterlist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsModbustcpmasterlist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsModbustcpmasterlist value = ReadRos1Rm_msgsModbustcpmasterlist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Modbustcpmasterlist component into checked staging storage.
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
    private static void WriteRos1Rm_msgsModbustcpmasterlist(_Codecs.Writer writer, _Ros1Rm_msgsModbustcpmasterlist value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Rm_msgsModbustcpmasterinfo[] part0 = value.@master_list;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            _Ros1Rm_msgsModbustcpmasterinfo element = part0[index];

            WriteRos1Rm_msgsModbustcpmasterinfo(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Modbustcpmasterlist candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsModbustcpmasterlist ReadRos1Rm_msgsModbustcpmasterlist(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsModbustcpmasterlist();
        value.@master_list = new _Ros1Rm_msgsModbustcpmasterinfo[ReadCount(reader, 16, 12)];
        for(int index = 0; index < value.@master_list.Length; ++index)
            value.@master_list[index] = ReadRos1Rm_msgsModbustcpmasterinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/MoveC fields.
     * @details 5 ordered fields, canonical extent 119..119 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsMoveC
    {
        public _Ros1Geometry_msgsPose @Mid_Pose = new _Ros1Geometry_msgsPose();
        public _Ros1Geometry_msgsPose @End_Pose = new _Ros1Geometry_msgsPose();
        public float @speed = 0;
        public ushort @loop = 0;
        public byte @trajectory_connect = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveC.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveC()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/MoveC fields.
     * @details 5 ordered fields, canonical extent 119..119 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsMoveCCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsMoveC>
    {
        public static readonly Ros1Rm_msgsMoveCCodec Instance = new Ros1Rm_msgsMoveCCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveC.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsMoveCCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/MoveC";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69";
        public const int MIN_WIRE_BYTES = 119, MAX_WIRE_BYTES = 119;

        /**
         * @brief Encode the complete ordered value for rm_msgs/MoveC.
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
        public byte[] Encode(_Ros1Rm_msgsMoveC value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsMoveC(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/MoveC.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveC Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsMoveC value = ReadRos1Rm_msgsMoveC(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/MoveC component into checked staging storage.
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
    private static void WriteRos1Rm_msgsMoveC(_Codecs.Writer writer, _Ros1Rm_msgsMoveC value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Mid_Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
        _Ros1Geometry_msgsPose part1 = value.@End_Pose;

        WriteRos1Geometry_msgsPose(writer, part1);
        float part2 = value.@speed;

        WriteFloat32(writer, part2);
        ushort part3 = value.@loop;
        writer.Unsigned(part3, 2);
        byte part4 = value.@trajectory_connect;
        writer.Unsigned(part4, 1);
    }

    /**
     * @brief Read one rm_msgs/MoveC candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsMoveC ReadRos1Rm_msgsMoveC(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsMoveC();
        value.@Mid_Pose = ReadRos1Geometry_msgsPose(reader);
        value.@End_Pose = ReadRos1Geometry_msgsPose(reader);
        value.@speed = ReadFloat32(reader);
        value.@loop = unchecked((ushort)reader.Unsigned(2));
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/MoveJ fields.
     * @details 3 ordered fields, canonical extent 9..73 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsMoveJ
    {
        public float[] @joint = new float[0];
        public float @speed = 0;
        public byte @trajectory_connect = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveJ.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveJ()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/MoveJ fields.
     * @details 3 ordered fields, canonical extent 9..73 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsMoveJCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsMoveJ>
    {
        public static readonly Ros1Rm_msgsMoveJCodec Instance = new Ros1Rm_msgsMoveJCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveJ.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsMoveJCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/MoveJ";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 73;

        /**
         * @brief Encode the complete ordered value for rm_msgs/MoveJ.
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
        public byte[] Encode(_Ros1Rm_msgsMoveJ value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsMoveJ(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/MoveJ.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveJ Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsMoveJ value = ReadRos1Rm_msgsMoveJ(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/MoveJ component into checked staging storage.
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
    private static void WriteRos1Rm_msgsMoveJ(_Codecs.Writer writer, _Ros1Rm_msgsMoveJ value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float part1 = value.@speed;

        WriteFloat32(writer, part1);
        byte part2 = value.@trajectory_connect;
        writer.Unsigned(part2, 1);
    }

    /**
     * @brief Read one rm_msgs/MoveJ candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsMoveJ ReadRos1Rm_msgsMoveJ(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsMoveJ();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@speed = ReadFloat32(reader);
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/MoveJ_P fields.
     * @details 3 ordered fields, canonical extent 61..61 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsMoveJ_P
    {
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();
        public float @speed = 0;
        public byte @trajectory_connect = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveJ_P.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveJ_P()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/MoveJ_P fields.
     * @details 3 ordered fields, canonical extent 61..61 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsMoveJ_PCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsMoveJ_P>
    {
        public static readonly Ros1Rm_msgsMoveJ_PCodec Instance = new Ros1Rm_msgsMoveJ_PCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveJ_P.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsMoveJ_PCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/MoveJ_P";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65";
        public const int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 61;

        /**
         * @brief Encode the complete ordered value for rm_msgs/MoveJ_P.
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
        public byte[] Encode(_Ros1Rm_msgsMoveJ_P value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsMoveJ_P(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/MoveJ_P.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveJ_P Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsMoveJ_P value = ReadRos1Rm_msgsMoveJ_P(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/MoveJ_P component into checked staging storage.
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
    private static void WriteRos1Rm_msgsMoveJ_P(_Codecs.Writer writer, _Ros1Rm_msgsMoveJ_P value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
        float part1 = value.@speed;

        WriteFloat32(writer, part1);
        byte part2 = value.@trajectory_connect;
        writer.Unsigned(part2, 1);
    }

    /**
     * @brief Read one rm_msgs/MoveJ_P candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsMoveJ_P ReadRos1Rm_msgsMoveJ_P(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsMoveJ_P();
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        value.@speed = ReadFloat32(reader);
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/MoveL fields.
     * @details 3 ordered fields, canonical extent 61..61 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsMoveL
    {
        public _Ros1Geometry_msgsPose @Pose = new _Ros1Geometry_msgsPose();
        public float @speed = 0;
        public byte @trajectory_connect = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveL.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveL()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/MoveL fields.
     * @details 3 ordered fields, canonical extent 61..61 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsMoveLCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsMoveL>
    {
        public static readonly Ros1Rm_msgsMoveLCodec Instance = new Ros1Rm_msgsMoveLCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/MoveL.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsMoveLCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/MoveL";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49";
        public const int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 61;

        /**
         * @brief Encode the complete ordered value for rm_msgs/MoveL.
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
        public byte[] Encode(_Ros1Rm_msgsMoveL value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsMoveL(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/MoveL.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveL Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsMoveL value = ReadRos1Rm_msgsMoveL(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/MoveL component into checked staging storage.
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
    private static void WriteRos1Rm_msgsMoveL(_Codecs.Writer writer, _Ros1Rm_msgsMoveL value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@Pose;

        WriteRos1Geometry_msgsPose(writer, part0);
        float part1 = value.@speed;

        WriteFloat32(writer, part1);
        byte part2 = value.@trajectory_connect;
        writer.Unsigned(part2, 1);
    }

    /**
     * @brief Read one rm_msgs/MoveL candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsMoveL ReadRos1Rm_msgsMoveL(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsMoveL();
        value.@Pose = ReadRos1Geometry_msgsPose(reader);
        value.@speed = ReadFloat32(reader);
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Moveloffset fields.
     * @details 6 ordered fields, canonical extent 67..67 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsMoveloffset
    {
        public _Ros1Geometry_msgsPose @offset = new _Ros1Geometry_msgsPose();
        public int @speed = 0;
        public int @r = 0;
        public bool @trajectory_connect = false;
        public bool @frame_type = false;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Moveloffset.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveloffset()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Moveloffset fields.
     * @details 6 ordered fields, canonical extent 67..67 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsMoveloffsetCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsMoveloffset>
    {
        public static readonly Ros1Rm_msgsMoveloffsetCodec Instance = new Ros1Rm_msgsMoveloffsetCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Moveloffset.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsMoveloffsetCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Moveloffset";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Moveloffset.
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
        public byte[] Encode(_Ros1Rm_msgsMoveloffset value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsMoveloffset(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Moveloffset.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsMoveloffset Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsMoveloffset value = ReadRos1Rm_msgsMoveloffset(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Moveloffset component into checked staging storage.
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
    private static void WriteRos1Rm_msgsMoveloffset(_Codecs.Writer writer, _Ros1Rm_msgsMoveloffset value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Geometry_msgsPose part0 = value.@offset;

        WriteRos1Geometry_msgsPose(writer, part0);
        int part1 = value.@speed;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@r;
        writer.Unsigned(unchecked((uint)part2), 4);
        bool part3 = value.@trajectory_connect;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        bool part4 = value.@frame_type;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@block;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Moveloffset candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsMoveloffset ReadRos1Rm_msgsMoveloffset(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsMoveloffset();
        value.@offset = ReadRos1Geometry_msgsPose(reader);
        value.@speed = unchecked((int)reader.Unsigned(4));
        value.@r = unchecked((int)reader.Unsigned(4));
        value.@trajectory_connect = ReadBool(reader);
        value.@frame_type = ReadBool(reader);
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Ort_Teach fields.
     * @details 3 ordered fields, canonical extent 10..522 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsOrt_Teach
    {
        public string @teach_type = "";
        public string @direction = "";
        public short @v = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Ort_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsOrt_Teach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Ort_Teach fields.
     * @details 3 ordered fields, canonical extent 10..522 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsOrt_TeachCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsOrt_Teach>
    {
        public static readonly Ros1Rm_msgsOrt_TeachCodec Instance = new Ros1Rm_msgsOrt_TeachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Ort_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsOrt_TeachCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Ort_Teach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Ort_Teach.
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
        public byte[] Encode(_Ros1Rm_msgsOrt_Teach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsOrt_Teach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Ort_Teach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsOrt_Teach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsOrt_Teach value = ReadRos1Rm_msgsOrt_Teach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Ort_Teach component into checked staging storage.
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
    private static void WriteRos1Rm_msgsOrt_Teach(_Codecs.Writer writer, _Ros1Rm_msgsOrt_Teach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@teach_type;

        WriteText(writer, part0, 256);
        string part1 = value.@direction;

        WriteText(writer, part1, 256);
        short part2 = value.@v;
        writer.Unsigned(unchecked((ushort)part2), 2);
    }

    /**
     * @brief Read one rm_msgs/Ort_Teach candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsOrt_Teach ReadRos1Rm_msgsOrt_Teach(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsOrt_Teach();
        value.@teach_type = ReadText(reader, 256);
        value.@direction = ReadText(reader, 256);
        value.@v = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Plan_State fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsPlan_State
    {
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Plan_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsPlan_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Plan_State fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsPlan_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsPlan_State>
    {
        public static readonly Ros1Rm_msgsPlan_StateCodec Instance = new Ros1Rm_msgsPlan_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Plan_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsPlan_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Plan_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Plan_State.
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
        public byte[] Encode(_Ros1Rm_msgsPlan_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsPlan_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Plan_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsPlan_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsPlan_State value = ReadRos1Rm_msgsPlan_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Plan_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsPlan_State(_Codecs.Writer writer, _Ros1Rm_msgsPlan_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@state;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Plan_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsPlan_State ReadRos1Rm_msgsPlan_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsPlan_State();
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Pos_Teach fields.
     * @details 3 ordered fields, canonical extent 10..522 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsPos_Teach
    {
        public string @teach_type = "";
        public string @direction = "";
        public short @v = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Pos_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsPos_Teach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Pos_Teach fields.
     * @details 3 ordered fields, canonical extent 10..522 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsPos_TeachCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsPos_Teach>
    {
        public static readonly Ros1Rm_msgsPos_TeachCodec Instance = new Ros1Rm_msgsPos_TeachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Pos_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsPos_TeachCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Pos_Teach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Pos_Teach.
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
        public byte[] Encode(_Ros1Rm_msgsPos_Teach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsPos_Teach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Pos_Teach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsPos_Teach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsPos_Teach value = ReadRos1Rm_msgsPos_Teach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Pos_Teach component into checked staging storage.
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
    private static void WriteRos1Rm_msgsPos_Teach(_Codecs.Writer writer, _Ros1Rm_msgsPos_Teach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@teach_type;

        WriteText(writer, part0, 256);
        string part1 = value.@direction;

        WriteText(writer, part1, 256);
        short part2 = value.@v;
        writer.Unsigned(unchecked((ushort)part2), 2);
    }

    /**
     * @brief Read one rm_msgs/Pos_Teach candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsPos_Teach ReadRos1Rm_msgsPos_Teach(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsPos_Teach();
        value.@teach_type = ReadText(reader, 256);
        value.@direction = ReadText(reader, 256);
        value.@v = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Programrunstate fields.
     * @details 9 ordered fields, canonical extent 36..164 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsProgramrunstate
    {
        public int @run_state = 0;
        public int @id = 0;
        public int @edit_id = 0;
        public int @plan_num = 0;
        public int @total_loop = 0;
        public int @step_mode = 0;
        public int @plan_speed = 0;
        public int[] @loop_num = new int[0];
        public int[] @loop_cont = new int[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Programrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsProgramrunstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Programrunstate fields.
     * @details 9 ordered fields, canonical extent 36..164 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsProgramrunstateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsProgramrunstate>
    {
        public static readonly Ros1Rm_msgsProgramrunstateCodec Instance = new Ros1Rm_msgsProgramrunstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Programrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsProgramrunstateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Programrunstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Programrunstate.
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
        public byte[] Encode(_Ros1Rm_msgsProgramrunstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsProgramrunstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Programrunstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsProgramrunstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsProgramrunstate value = ReadRos1Rm_msgsProgramrunstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Programrunstate component into checked staging storage.
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
    private static void WriteRos1Rm_msgsProgramrunstate(_Codecs.Writer writer, _Ros1Rm_msgsProgramrunstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@run_state;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@id;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@edit_id;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@plan_num;
        writer.Unsigned(unchecked((uint)part3), 4);
        int part4 = value.@total_loop;
        writer.Unsigned(unchecked((uint)part4), 4);
        int part5 = value.@step_mode;
        writer.Unsigned(unchecked((uint)part5), 4);
        int part6 = value.@plan_speed;
        writer.Unsigned(unchecked((uint)part6), 4);
        int[] part7 = value.@loop_num;
        if(part7 == null || part7.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            int element = part7[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part8 = value.@loop_cont;
        if(part8 == null || part8.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part8.Length, 4);
        for(int index = 0; index < part8.Length; ++index)
        {
            int element = part8[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_msgs/Programrunstate candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsProgramrunstate ReadRos1Rm_msgsProgramrunstate(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsProgramrunstate();
        value.@run_state = unchecked((int)reader.Unsigned(4));
        value.@id = unchecked((int)reader.Unsigned(4));
        value.@edit_id = unchecked((int)reader.Unsigned(4));
        value.@plan_num = unchecked((int)reader.Unsigned(4));
        value.@total_loop = unchecked((int)reader.Unsigned(4));
        value.@step_mode = unchecked((int)reader.Unsigned(4));
        value.@plan_speed = unchecked((int)reader.Unsigned(4));
        value.@loop_num = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@loop_num.Length; ++index)
            value.@loop_num[index] = unchecked((int)reader.Unsigned(4));
        value.@loop_cont = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@loop_cont.Length; ++index)
            value.@loop_cont[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/RS485_Mode fields.
     * @details 4 ordered fields, canonical extent 10..10 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRS485_Mode
    {
        public byte @controller_RS485_mode = 0;
        public byte @tool_RS485_mode = 0;
        public uint @baudrate = 0;
        public uint @modbus_timeout = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/RS485_Mode.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRS485_Mode()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/RS485_Mode fields.
     * @details 4 ordered fields, canonical extent 10..10 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRS485_ModeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRS485_Mode>
    {
        public static readonly Ros1Rm_msgsRS485_ModeCodec Instance = new Ros1Rm_msgsRS485_ModeCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/RS485_Mode.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRS485_ModeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/RS485_Mode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;

        /**
         * @brief Encode the complete ordered value for rm_msgs/RS485_Mode.
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
        public byte[] Encode(_Ros1Rm_msgsRS485_Mode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRS485_Mode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/RS485_Mode.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRS485_Mode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRS485_Mode value = ReadRos1Rm_msgsRS485_Mode(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/RS485_Mode component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRS485_Mode(_Codecs.Writer writer, _Ros1Rm_msgsRS485_Mode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@controller_RS485_mode;
        writer.Unsigned(part0, 1);
        byte part1 = value.@tool_RS485_mode;
        writer.Unsigned(part1, 1);
        uint part2 = value.@baudrate;
        writer.Unsigned(part2, 4);
        uint part3 = value.@modbus_timeout;
        writer.Unsigned(part3, 4);
    }

    /**
     * @brief Read one rm_msgs/RS485_Mode candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRS485_Mode ReadRos1Rm_msgsRS485_Mode(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRS485_Mode();
        value.@controller_RS485_mode = unchecked((byte)reader.Unsigned(1));
        value.@tool_RS485_mode = unchecked((byte)reader.Unsigned(1));
        value.@baudrate = unchecked((uint)reader.Unsigned(4));
        value.@modbus_timeout = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/RS485params fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRS485params
    {
        public int @mode = 0;
        public int @baudrate = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/RS485params.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRS485params()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/RS485params fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRS485paramsCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRS485params>
    {
        public static readonly Ros1Rm_msgsRS485paramsCodec Instance = new Ros1Rm_msgsRS485paramsCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/RS485params.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRS485paramsCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/RS485params";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for rm_msgs/RS485params.
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
        public byte[] Encode(_Ros1Rm_msgsRS485params value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRS485params(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/RS485params.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRS485params Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRS485params value = ReadRos1Rm_msgsRS485params(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/RS485params component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRS485params(_Codecs.Writer writer, _Ros1Rm_msgsRS485params value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@mode;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@baudrate;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    /**
     * @brief Read one rm_msgs/RS485params candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRS485params ReadRos1Rm_msgsRS485params(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRS485params();
        value.@mode = unchecked((int)reader.Unsigned(4));
        value.@baudrate = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Read_ModbusRTU fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRead_ModbusRTU
    {
        public int @address = 0;
        public int @device = 0;
        public int @num = 0;
        public int @type = 0;

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_ModbusRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRead_ModbusRTU()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Read_ModbusRTU fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRead_ModbusRTUCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRead_ModbusRTU>
    {
        public static readonly Ros1Rm_msgsRead_ModbusRTUCodec Instance = new Ros1Rm_msgsRead_ModbusRTUCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_ModbusRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRead_ModbusRTUCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Read_ModbusRTU";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Read_ModbusRTU.
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
        public byte[] Encode(_Ros1Rm_msgsRead_ModbusRTU value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRead_ModbusRTU(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_ModbusRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRead_ModbusRTU Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRead_ModbusRTU value = ReadRos1Rm_msgsRead_ModbusRTU(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Read_ModbusRTU component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRead_ModbusRTU(_Codecs.Writer writer, _Ros1Rm_msgsRead_ModbusRTU value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@device;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@num;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@type;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    /**
     * @brief Read one rm_msgs/Read_ModbusRTU candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRead_ModbusRTU ReadRos1Rm_msgsRead_ModbusRTU(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRead_ModbusRTU();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@device = unchecked((int)reader.Unsigned(4));
        value.@num = unchecked((int)reader.Unsigned(4));
        value.@type = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Read_Register fields.
     * @details 4 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRead_Register
    {
        public byte @port = 0;
        public uint @address = 0;
        public uint @num = 0;
        public uint @device = 0;

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_Register.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRead_Register()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Read_Register fields.
     * @details 4 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRead_RegisterCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRead_Register>
    {
        public static readonly Ros1Rm_msgsRead_RegisterCodec Instance = new Ros1Rm_msgsRead_RegisterCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_Register.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRead_RegisterCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Read_Register";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Read_Register.
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
        public byte[] Encode(_Ros1Rm_msgsRead_Register value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRead_Register(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_Register.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRead_Register Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRead_Register value = ReadRos1Rm_msgsRead_Register(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Read_Register component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRead_Register(_Codecs.Writer writer, _Ros1Rm_msgsRead_Register value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@port;
        writer.Unsigned(part0, 1);
        uint part1 = value.@address;
        writer.Unsigned(part1, 4);
        uint part2 = value.@num;
        writer.Unsigned(part2, 4);
        uint part3 = value.@device;
        writer.Unsigned(part3, 4);
    }

    /**
     * @brief Read one rm_msgs/Read_Register candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRead_Register ReadRos1Rm_msgsRead_Register(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRead_Register();
        value.@port = unchecked((byte)reader.Unsigned(1));
        value.@address = unchecked((uint)reader.Unsigned(4));
        value.@num = unchecked((uint)reader.Unsigned(4));
        value.@device = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Read_TCPandRTU fields.
     * @details 7 ordered fields, canonical extent 28..540 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRead_TCPandRTU
    {
        public int @address = 0;
        public int @num = 0;
        public string @ip = "";
        public int @port = 0;
        public string @master_name = "";
        public int @device = 0;
        public int @type = 0;

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_TCPandRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRead_TCPandRTU()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Read_TCPandRTU fields.
     * @details 7 ordered fields, canonical extent 28..540 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRead_TCPandRTUCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRead_TCPandRTU>
    {
        public static readonly Ros1Rm_msgsRead_TCPandRTUCodec Instance = new Ros1Rm_msgsRead_TCPandRTUCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_TCPandRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRead_TCPandRTUCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Read_TCPandRTU";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 540;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Read_TCPandRTU.
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
        public byte[] Encode(_Ros1Rm_msgsRead_TCPandRTU value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRead_TCPandRTU(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_TCPandRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRead_TCPandRTU Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRead_TCPandRTU value = ReadRos1Rm_msgsRead_TCPandRTU(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Read_TCPandRTU component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRead_TCPandRTU(_Codecs.Writer writer, _Ros1Rm_msgsRead_TCPandRTU value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@num;
        writer.Unsigned(unchecked((uint)part1), 4);
        string part2 = value.@ip;

        WriteText(writer, part2, 256);
        int part3 = value.@port;
        writer.Unsigned(unchecked((uint)part3), 4);
        string part4 = value.@master_name;

        WriteText(writer, part4, 256);
        int part5 = value.@device;
        writer.Unsigned(unchecked((uint)part5), 4);
        int part6 = value.@type;
        writer.Unsigned(unchecked((uint)part6), 4);
    }

    /**
     * @brief Read one rm_msgs/Read_TCPandRTU candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRead_TCPandRTU ReadRos1Rm_msgsRead_TCPandRTU(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRead_TCPandRTU();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@num = unchecked((int)reader.Unsigned(4));
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@master_name = ReadText(reader, 256);
        value.@device = unchecked((int)reader.Unsigned(4));
        value.@type = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Register_Data fields.
     * @details 2 ordered fields, canonical extent 5..37 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRegister_Data
    {
        public bool @state = false;
        public ushort[] @data = new ushort[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Register_Data.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRegister_Data()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Register_Data fields.
     * @details 2 ordered fields, canonical extent 5..37 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRegister_DataCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRegister_Data>
    {
        public static readonly Ros1Rm_msgsRegister_DataCodec Instance = new Ros1Rm_msgsRegister_DataCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Register_Data.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRegister_DataCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Register_Data";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 37;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Register_Data.
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
        public byte[] Encode(_Ros1Rm_msgsRegister_Data value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRegister_Data(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Register_Data.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRegister_Data Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRegister_Data value = ReadRos1Rm_msgsRegister_Data(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Register_Data component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRegister_Data(_Codecs.Writer writer, _Ros1Rm_msgsRegister_Data value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@state;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        ushort[] part1 = value.@data;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            ushort element = part1[index];
            writer.Unsigned(element, 2);
        }
    }

    /**
     * @brief Read one rm_msgs/Register_Data candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRegister_Data ReadRos1Rm_msgsRegister_Data(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRegister_Data();
        value.@state = ReadBool(reader);
        value.@data = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Rm_Plus_Base fields.
     * @details 22 ordered fields, canonical extent 61..1597 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRm_Plus_Base
    {
        public string @manu = "";
        public sbyte @type = 0;
        public string @hv = "";
        public string @sv = "";
        public string @bv = "";
        public int @id = 0;
        public sbyte @dof = 0;
        public sbyte @check = 0;
        public sbyte @bee = 0;
        public bool @force = false;
        public bool @touch = false;
        public sbyte @touch_num = 0;
        public sbyte @touch_sw = 0;
        public sbyte @hand = 0;
        public int[] @pos_up = new int[0];
        public int[] @pos_low = new int[0];
        public int[] @angle_up = new int[0];
        public int[] @angle_low = new int[0];
        public int[] @speed_up = new int[0];
        public int[] @speed_low = new int[0];
        public int[] @force_up = new int[0];
        public int[] @force_low = new int[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Rm_Plus_Base.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRm_Plus_Base()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Rm_Plus_Base fields.
     * @details 22 ordered fields, canonical extent 61..1597 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRm_Plus_BaseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRm_Plus_Base>
    {
        public static readonly Ros1Rm_msgsRm_Plus_BaseCodec Instance = new Ros1Rm_msgsRm_Plus_BaseCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Rm_Plus_Base.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRm_Plus_BaseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Rm_Plus_Base";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6";
        public const int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 1597;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Rm_Plus_Base.
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
        public byte[] Encode(_Ros1Rm_msgsRm_Plus_Base value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRm_Plus_Base(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Rm_Plus_Base.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRm_Plus_Base Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRm_Plus_Base value = ReadRos1Rm_msgsRm_Plus_Base(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Rm_Plus_Base component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRm_Plus_Base(_Codecs.Writer writer, _Ros1Rm_msgsRm_Plus_Base value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@manu;
        WriteText(writer, part0, 256);
        sbyte part1 = value.@type;
        writer.Unsigned(unchecked((byte)part1), 1);
        string part2 = value.@hv;
        WriteText(writer, part2, 256);
        string part3 = value.@sv;
        WriteText(writer, part3, 256);
        string part4 = value.@bv;
        WriteText(writer, part4, 256);
        int part5 = value.@id;
        writer.Unsigned(unchecked((uint)part5), 4);
        sbyte part6 = value.@dof;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@check;
        writer.Unsigned(unchecked((byte)part7), 1);
        sbyte part8 = value.@bee;
        writer.Unsigned(unchecked((byte)part8), 1);
        bool part9 = value.@force;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
        bool part10 = value.@touch;
        writer.Unsigned(part10 ? 1UL : 0UL, 1);
        sbyte part11 = value.@touch_num;
        writer.Unsigned(unchecked((byte)part11), 1);
        sbyte part12 = value.@touch_sw;
        writer.Unsigned(unchecked((byte)part12), 1);
        sbyte part13 = value.@hand;
        writer.Unsigned(unchecked((byte)part13), 1);
        int[] part14 = value.@pos_up;
        if(part14 == null || part14.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part14.Length, 4);
        for(int index = 0; index < part14.Length; ++index)
        {
            int element = part14[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part15 = value.@pos_low;
        if(part15 == null || part15.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part15.Length, 4);
        for(int index = 0; index < part15.Length; ++index)
        {
            int element = part15[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part16 = value.@angle_up;
        if(part16 == null || part16.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part16.Length, 4);
        for(int index = 0; index < part16.Length; ++index)
        {
            int element = part16[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part17 = value.@angle_low;
        if(part17 == null || part17.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part17.Length, 4);
        for(int index = 0; index < part17.Length; ++index)
        {
            int element = part17[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part18 = value.@speed_up;
        if(part18 == null || part18.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part18.Length, 4);
        for(int index = 0; index < part18.Length; ++index)
        {
            int element = part18[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part19 = value.@speed_low;
        if(part19 == null || part19.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part19.Length, 4);
        for(int index = 0; index < part19.Length; ++index)
        {
            int element = part19[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part20 = value.@force_up;
        if(part20 == null || part20.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part20.Length, 4);
        for(int index = 0; index < part20.Length; ++index)
        {
            int element = part20[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part21 = value.@force_low;
        if(part21 == null || part21.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part21.Length, 4);
        for(int index = 0; index < part21.Length; ++index)
        {
            int element = part21[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_msgs/Rm_Plus_Base candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRm_Plus_Base ReadRos1Rm_msgsRm_Plus_Base(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRm_Plus_Base();
        value.@manu = ReadText(reader, 256);
        value.@type = unchecked((sbyte)reader.Unsigned(1));
        value.@hv = ReadText(reader, 256);
        value.@sv = ReadText(reader, 256);
        value.@bv = ReadText(reader, 256);
        value.@id = unchecked((int)reader.Unsigned(4));
        value.@dof = unchecked((sbyte)reader.Unsigned(1));
        value.@check = unchecked((sbyte)reader.Unsigned(1));
        value.@bee = unchecked((sbyte)reader.Unsigned(1));
        value.@force = ReadBool(reader);
        value.@touch = ReadBool(reader);
        value.@touch_num = unchecked((sbyte)reader.Unsigned(1));
        value.@touch_sw = unchecked((sbyte)reader.Unsigned(1));
        value.@hand = unchecked((sbyte)reader.Unsigned(1));
        value.@pos_up = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@pos_up.Length; ++index)
            value.@pos_up[index] = unchecked((int)reader.Unsigned(4));
        value.@pos_low = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@pos_low.Length; ++index)
            value.@pos_low[index] = unchecked((int)reader.Unsigned(4));
        value.@angle_up = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@angle_up.Length; ++index)
            value.@angle_up[index] = unchecked((int)reader.Unsigned(4));
        value.@angle_low = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@angle_low.Length; ++index)
            value.@angle_low[index] = unchecked((int)reader.Unsigned(4));
        value.@speed_up = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@speed_up.Length; ++index)
            value.@speed_up[index] = unchecked((int)reader.Unsigned(4));
        value.@speed_low = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@speed_low.Length; ++index)
            value.@speed_low[index] = unchecked((int)reader.Unsigned(4));
        value.@force_up = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@force_up.Length; ++index)
            value.@force_up[index] = unchecked((int)reader.Unsigned(4));
        value.@force_low = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@force_low.Length; ++index)
            value.@force_low[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Rm_Plus_State fields.
     * @details 15 ordered fields, canonical extent 60..892 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsRm_Plus_State
    {
        public int @sys_state = 0;
        public int @sys_err = 0;
        public int[] @dof_state = new int[0];
        public int[] @dof_err = new int[0];
        public int[] @pos = new int[0];
        public int[] @speed = new int[0];
        public int[] @angle = new int[0];
        public int[] @current = new int[0];
        public int[] @normal_force = new int[0];
        public int[] @tangential_force = new int[0];
        public int[] @tangential_force_dir = new int[0];
        public uint[] @tsa = new uint[0];
        public uint[] @tma = new uint[0];
        public int[] @touch_data = new int[0];
        public int[] @force = new int[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Rm_Plus_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRm_Plus_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Rm_Plus_State fields.
     * @details 15 ordered fields, canonical extent 60..892 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsRm_Plus_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsRm_Plus_State>
    {
        public static readonly Ros1Rm_msgsRm_Plus_StateCodec Instance = new Ros1Rm_msgsRm_Plus_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Rm_Plus_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsRm_Plus_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Rm_Plus_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1";
        public const int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 892;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Rm_Plus_State.
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
        public byte[] Encode(_Ros1Rm_msgsRm_Plus_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsRm_Plus_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Rm_Plus_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsRm_Plus_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsRm_Plus_State value = ReadRos1Rm_msgsRm_Plus_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Rm_Plus_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsRm_Plus_State(_Codecs.Writer writer, _Ros1Rm_msgsRm_Plus_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@sys_state;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@sys_err;
        writer.Unsigned(unchecked((uint)part1), 4);
        int[] part2 = value.@dof_state;
        if(part2 == null || part2.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part2.Length, 4);
        for(int index = 0; index < part2.Length; ++index)
        {
            int element = part2[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part3 = value.@dof_err;
        if(part3 == null || part3.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            int element = part3[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part4 = value.@pos;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            int element = part4[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part5 = value.@speed;
        if(part5 == null || part5.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            int element = part5[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part6 = value.@angle;
        if(part6 == null || part6.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part6.Length, 4);
        for(int index = 0; index < part6.Length; ++index)
        {
            int element = part6[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part7 = value.@current;
        if(part7 == null || part7.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part7.Length, 4);
        for(int index = 0; index < part7.Length; ++index)
        {
            int element = part7[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part8 = value.@normal_force;
        if(part8 == null || part8.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part8.Length, 4);
        for(int index = 0; index < part8.Length; ++index)
        {
            int element = part8[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part9 = value.@tangential_force;
        if(part9 == null || part9.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part9.Length, 4);
        for(int index = 0; index < part9.Length; ++index)
        {
            int element = part9[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part10 = value.@tangential_force_dir;
        if(part10 == null || part10.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part10.Length, 4);
        for(int index = 0; index < part10.Length; ++index)
        {
            int element = part10[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        uint[] part11 = value.@tsa;
        if(part11 == null || part11.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part11.Length, 4);
        for(int index = 0; index < part11.Length; ++index)
        {
            uint element = part11[index];
            writer.Unsigned(element, 4);
        }
        uint[] part12 = value.@tma;
        if(part12 == null || part12.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part12.Length, 4);
        for(int index = 0; index < part12.Length; ++index)
        {
            uint element = part12[index];
            writer.Unsigned(element, 4);
        }
        int[] part13 = value.@touch_data;
        if(part13 == null || part13.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part13.Length, 4);
        for(int index = 0; index < part13.Length; ++index)
        {
            int element = part13[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part14 = value.@force;
        if(part14 == null || part14.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part14.Length, 4);
        for(int index = 0; index < part14.Length; ++index)
        {
            int element = part14[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_msgs/Rm_Plus_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsRm_Plus_State ReadRos1Rm_msgsRm_Plus_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsRm_Plus_State();
        value.@sys_state = unchecked((int)reader.Unsigned(4));
        value.@sys_err = unchecked((int)reader.Unsigned(4));
        value.@dof_state = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@dof_state.Length; ++index)
            value.@dof_state[index] = unchecked((int)reader.Unsigned(4));
        value.@dof_err = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@dof_err.Length; ++index)
            value.@dof_err[index] = unchecked((int)reader.Unsigned(4));
        value.@pos = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = unchecked((int)reader.Unsigned(4));
        value.@speed = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@speed.Length; ++index)
            value.@speed[index] = unchecked((int)reader.Unsigned(4));
        value.@angle = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@angle.Length; ++index)
            value.@angle[index] = unchecked((int)reader.Unsigned(4));
        value.@current = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@current.Length; ++index)
            value.@current[index] = unchecked((int)reader.Unsigned(4));
        value.@normal_force = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@normal_force.Length; ++index)
            value.@normal_force[index] = unchecked((int)reader.Unsigned(4));
        value.@tangential_force = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@tangential_force.Length; ++index)
            value.@tangential_force[index] = unchecked((int)reader.Unsigned(4));
        value.@tangential_force_dir = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@tangential_force_dir.Length; ++index)
            value.@tangential_force_dir[index] = unchecked((int)reader.Unsigned(4));
        value.@tsa = new uint[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@tsa.Length; ++index)
            value.@tsa[index] = unchecked((uint)reader.Unsigned(4));
        value.@tma = new uint[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@tma.Length; ++index)
            value.@tma[index] = unchecked((uint)reader.Unsigned(4));
        value.@touch_data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@touch_data.Length; ++index)
            value.@touch_data[index] = unchecked((int)reader.Unsigned(4));
        value.@force = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@force.Length; ++index)
            value.@force[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Servo_GetAngle fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsServo_GetAngle
    {
        public ushort @servo_id = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Servo_GetAngle.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsServo_GetAngle()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Servo_GetAngle fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsServo_GetAngleCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsServo_GetAngle>
    {
        public static readonly Ros1Rm_msgsServo_GetAngleCodec Instance = new Ros1Rm_msgsServo_GetAngleCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Servo_GetAngle.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsServo_GetAngleCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Servo_GetAngle";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Servo_GetAngle.
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
        public byte[] Encode(_Ros1Rm_msgsServo_GetAngle value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsServo_GetAngle(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Servo_GetAngle.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsServo_GetAngle Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsServo_GetAngle value = ReadRos1Rm_msgsServo_GetAngle(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Servo_GetAngle component into checked staging storage.
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
    private static void WriteRos1Rm_msgsServo_GetAngle(_Codecs.Writer writer, _Ros1Rm_msgsServo_GetAngle value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@servo_id;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_msgs/Servo_GetAngle candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsServo_GetAngle ReadRos1Rm_msgsServo_GetAngle(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsServo_GetAngle();
        value.@servo_id = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Servo_Move fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsServo_Move
    {
        public ushort @servo_id = 0;
        public ushort @angle = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Servo_Move.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsServo_Move()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Servo_Move fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsServo_MoveCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsServo_Move>
    {
        public static readonly Ros1Rm_msgsServo_MoveCodec Instance = new Ros1Rm_msgsServo_MoveCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Servo_Move.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsServo_MoveCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Servo_Move";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Servo_Move.
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
        public byte[] Encode(_Ros1Rm_msgsServo_Move value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsServo_Move(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Servo_Move.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsServo_Move Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsServo_Move value = ReadRos1Rm_msgsServo_Move(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Servo_Move component into checked staging storage.
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
    private static void WriteRos1Rm_msgsServo_Move(_Codecs.Writer writer, _Ros1Rm_msgsServo_Move value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@servo_id;
        writer.Unsigned(part0, 2);
        ushort part1 = value.@angle;
        writer.Unsigned(part1, 2);
    }

    /**
     * @brief Read one rm_msgs/Servo_Move candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsServo_Move ReadRos1Rm_msgsServo_Move(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsServo_Move();
        value.@servo_id = unchecked((ushort)reader.Unsigned(2));
        value.@angle = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Set_Force_Position fields.
     * @details 4 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsSet_Force_Position
    {
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte @direction = 0;
        public short @N = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Set_Force_Position.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSet_Force_Position()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Set_Force_Position fields.
     * @details 4 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsSet_Force_PositionCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsSet_Force_Position>
    {
        public static readonly Ros1Rm_msgsSet_Force_PositionCodec Instance = new Ros1Rm_msgsSet_Force_PositionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Set_Force_Position.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsSet_Force_PositionCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Set_Force_Position";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Set_Force_Position.
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
        public byte[] Encode(_Ros1Rm_msgsSet_Force_Position value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsSet_Force_Position(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Set_Force_Position.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSet_Force_Position Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsSet_Force_Position value = ReadRos1Rm_msgsSet_Force_Position(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Set_Force_Position component into checked staging storage.
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
    private static void WriteRos1Rm_msgsSet_Force_Position(_Codecs.Writer writer, _Ros1Rm_msgsSet_Force_Position value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@sensor;
        writer.Unsigned(part0, 1);
        byte part1 = value.@mode;
        writer.Unsigned(part1, 1);
        byte part2 = value.@direction;
        writer.Unsigned(part2, 1);
        short part3 = value.@N;
        writer.Unsigned(unchecked((ushort)part3), 2);
    }

    /**
     * @brief Read one rm_msgs/Set_Force_Position candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsSet_Force_Position ReadRos1Rm_msgsSet_Force_Position(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsSet_Force_Position();
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@direction = unchecked((byte)reader.Unsigned(1));
        value.@N = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Set_Modbus_Mode fields.
     * @details 4 ordered fields, canonical extent 16..272 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsSet_Modbus_Mode
    {
        public uint @port = 0;
        public uint @baudrate = 0;
        public uint @timeout = 0;
        public string @ip = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Set_Modbus_Mode.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSet_Modbus_Mode()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Set_Modbus_Mode fields.
     * @details 4 ordered fields, canonical extent 16..272 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsSet_Modbus_ModeCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsSet_Modbus_Mode>
    {
        public static readonly Ros1Rm_msgsSet_Modbus_ModeCodec Instance = new Ros1Rm_msgsSet_Modbus_ModeCodec();

        /**
         * @brief Decode the whole canonical value for rm_msgs/Set_Modbus_Mode.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsSet_Modbus_ModeCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Set_Modbus_Mode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Set_Modbus_Mode.
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
        public byte[] Encode(_Ros1Rm_msgsSet_Modbus_Mode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsSet_Modbus_Mode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Set_Modbus_Mode.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSet_Modbus_Mode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsSet_Modbus_Mode value = ReadRos1Rm_msgsSet_Modbus_Mode(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Set_Modbus_Mode component into checked staging storage.
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
    private static void WriteRos1Rm_msgsSet_Modbus_Mode(_Codecs.Writer writer, _Ros1Rm_msgsSet_Modbus_Mode value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        uint part0 = value.@port;
        writer.Unsigned(part0, 4);
        uint part1 = value.@baudrate;
        writer.Unsigned(part1, 4);
        uint part2 = value.@timeout;
        writer.Unsigned(part2, 4);
        string part3 = value.@ip;

        WriteText(writer, part3, 256);
    }

    /**
     * @brief Read one rm_msgs/Set_Modbus_Mode candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsSet_Modbus_Mode ReadRos1Rm_msgsSet_Modbus_Mode(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsSet_Modbus_Mode();
        value.@port = unchecked((uint)reader.Unsigned(4));
        value.@baudrate = unchecked((uint)reader.Unsigned(4));
        value.@timeout = unchecked((uint)reader.Unsigned(4));
        value.@ip = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Set_Realtime_Push fields.
     * @details 14 ordered fields, canonical extent 20..276 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsSet_Realtime_Push
    {
        public ushort @cycle = 0;
        public ushort @port = 0;
        public ushort @force_coordinate = 0;
        public string @ip = "";
        public bool @aloha_state_enable = false;
        public bool @arm_current_status_enable = false;
        public bool @expand_state_enable = false;
        public bool @hand_enable = false;
        public bool @joint_acc_enable = false;
        public bool @joint_speed_enable = false;
        public bool @lift_state_enable = false;
        public bool @tail_end_enable = false;
        public bool @rm_plus_base_enable = false;
        public bool @rm_plus_state_enable = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Set_Realtime_Push.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSet_Realtime_Push()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Set_Realtime_Push fields.
     * @details 14 ordered fields, canonical extent 20..276 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsSet_Realtime_PushCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsSet_Realtime_Push>
    {
        public static readonly Ros1Rm_msgsSet_Realtime_PushCodec Instance = new Ros1Rm_msgsSet_Realtime_PushCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Set_Realtime_Push.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsSet_Realtime_PushCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Set_Realtime_Push";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 276;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Set_Realtime_Push.
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
        public byte[] Encode(_Ros1Rm_msgsSet_Realtime_Push value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsSet_Realtime_Push(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Set_Realtime_Push.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSet_Realtime_Push Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsSet_Realtime_Push value = ReadRos1Rm_msgsSet_Realtime_Push(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Set_Realtime_Push component into checked staging storage.
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
    private static void WriteRos1Rm_msgsSet_Realtime_Push(_Codecs.Writer writer, _Ros1Rm_msgsSet_Realtime_Push value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@cycle;
        writer.Unsigned(part0, 2);
        ushort part1 = value.@port;
        writer.Unsigned(part1, 2);
        ushort part2 = value.@force_coordinate;
        writer.Unsigned(part2, 2);
        string part3 = value.@ip;
        WriteText(writer, part3, 256);
        bool part4 = value.@aloha_state_enable;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        bool part5 = value.@arm_current_status_enable;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        bool part6 = value.@expand_state_enable;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        bool part7 = value.@hand_enable;
        writer.Unsigned(part7 ? 1UL : 0UL, 1);
        bool part8 = value.@joint_acc_enable;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        bool part9 = value.@joint_speed_enable;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
        bool part10 = value.@lift_state_enable;
        writer.Unsigned(part10 ? 1UL : 0UL, 1);
        bool part11 = value.@tail_end_enable;
        writer.Unsigned(part11 ? 1UL : 0UL, 1);
        bool part12 = value.@rm_plus_base_enable;
        writer.Unsigned(part12 ? 1UL : 0UL, 1);
        bool part13 = value.@rm_plus_state_enable;
        writer.Unsigned(part13 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Set_Realtime_Push candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsSet_Realtime_Push ReadRos1Rm_msgsSet_Realtime_Push(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsSet_Realtime_Push();
        value.@cycle = unchecked((ushort)reader.Unsigned(2));
        value.@port = unchecked((ushort)reader.Unsigned(2));
        value.@force_coordinate = unchecked((ushort)reader.Unsigned(2));
        value.@ip = ReadText(reader, 256);
        value.@aloha_state_enable = ReadBool(reader);
        value.@arm_current_status_enable = ReadBool(reader);
        value.@expand_state_enable = ReadBool(reader);
        value.@hand_enable = ReadBool(reader);
        value.@joint_acc_enable = ReadBool(reader);
        value.@joint_speed_enable = ReadBool(reader);
        value.@lift_state_enable = ReadBool(reader);
        value.@tail_end_enable = ReadBool(reader);
        value.@rm_plus_base_enable = ReadBool(reader);
        value.@rm_plus_state_enable = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Six_Force fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsSix_Force
    {
        public float @force_Fx = 0;
        public float @force_Fy = 0;
        public float @force_Fz = 0;
        public float @force_Mx = 0;
        public float @force_My = 0;
        public float @force_Mz = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Six_Force.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSix_Force()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Six_Force fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsSix_ForceCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsSix_Force>
    {
        public static readonly Ros1Rm_msgsSix_ForceCodec Instance = new Ros1Rm_msgsSix_ForceCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Six_Force.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsSix_ForceCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Six_Force";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Six_Force.
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
        public byte[] Encode(_Ros1Rm_msgsSix_Force value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsSix_Force(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Six_Force.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSix_Force Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsSix_Force value = ReadRos1Rm_msgsSix_Force(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Six_Force component into checked staging storage.
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
    private static void WriteRos1Rm_msgsSix_Force(_Codecs.Writer writer, _Ros1Rm_msgsSix_Force value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@force_Fx;

        WriteFloat32(writer, part0);
        float part1 = value.@force_Fy;

        WriteFloat32(writer, part1);
        float part2 = value.@force_Fz;

        WriteFloat32(writer, part2);
        float part3 = value.@force_Mx;

        WriteFloat32(writer, part3);
        float part4 = value.@force_My;

        WriteFloat32(writer, part4);
        float part5 = value.@force_Mz;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one rm_msgs/Six_Force candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsSix_Force ReadRos1Rm_msgsSix_Force(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsSix_Force();
        value.@force_Fx = ReadFloat32(reader);
        value.@force_Fy = ReadFloat32(reader);
        value.@force_Fz = ReadFloat32(reader);
        value.@force_Mx = ReadFloat32(reader);
        value.@force_My = ReadFloat32(reader);
        value.@force_Mz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Socket_Command fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsSocket_Command
    {
        public ushort @command = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Socket_Command.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSocket_Command()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Socket_Command fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsSocket_CommandCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsSocket_Command>
    {
        public static readonly Ros1Rm_msgsSocket_CommandCodec Instance = new Ros1Rm_msgsSocket_CommandCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Socket_Command.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsSocket_CommandCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Socket_Command";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Socket_Command.
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
        public byte[] Encode(_Ros1Rm_msgsSocket_Command value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsSocket_Command(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Socket_Command.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsSocket_Command Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsSocket_Command value = ReadRos1Rm_msgsSocket_Command(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Socket_Command component into checked staging storage.
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
    private static void WriteRos1Rm_msgsSocket_Command(_Codecs.Writer writer, _Ros1Rm_msgsSocket_Command value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@command;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_msgs/Socket_Command candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsSocket_Command ReadRos1Rm_msgsSocket_Command(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsSocket_Command();
        value.@command = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Start_Multi_Drag_Teach fields.
     * @details 3 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsStart_Multi_Drag_Teach
    {
        public int[] @free_axes = new int[6];
        public int @frame = 0;
        public int @singular_wall = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Start_Multi_Drag_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsStart_Multi_Drag_Teach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Start_Multi_Drag_Teach fields.
     * @details 3 ordered fields, canonical extent 32..32 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsStart_Multi_Drag_TeachCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsStart_Multi_Drag_Teach>
    {
        public static readonly Ros1Rm_msgsStart_Multi_Drag_TeachCodec Instance = new Ros1Rm_msgsStart_Multi_Drag_TeachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Start_Multi_Drag_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsStart_Multi_Drag_TeachCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Start_Multi_Drag_Teach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Start_Multi_Drag_Teach.
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
        public byte[] Encode(_Ros1Rm_msgsStart_Multi_Drag_Teach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsStart_Multi_Drag_Teach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Start_Multi_Drag_Teach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsStart_Multi_Drag_Teach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsStart_Multi_Drag_Teach value = ReadRos1Rm_msgsStart_Multi_Drag_Teach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Start_Multi_Drag_Teach component into checked staging storage.
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
    private static void WriteRos1Rm_msgsStart_Multi_Drag_Teach(_Codecs.Writer writer, _Ros1Rm_msgsStart_Multi_Drag_Teach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int[] part0 = value.@free_axes;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            int element = part0[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int part1 = value.@frame;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@singular_wall;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    /**
     * @brief Read one rm_msgs/Start_Multi_Drag_Teach candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsStart_Multi_Drag_Teach ReadRos1Rm_msgsStart_Multi_Drag_Teach(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsStart_Multi_Drag_Teach();
        value.@free_axes = new int[6];
        for(int index = 0; index < value.@free_axes.Length; ++index)
            value.@free_axes[index] = unchecked((int)reader.Unsigned(4));
        value.@frame = unchecked((int)reader.Unsigned(4));
        value.@singular_wall = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Stop fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsStop
    {
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Stop.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsStop()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Stop fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsStopCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsStop>
    {
        public static readonly Ros1Rm_msgsStopCodec Instance = new Ros1Rm_msgsStopCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Stop.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsStopCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Stop";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Stop.
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
        public byte[] Encode(_Ros1Rm_msgsStop value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsStop(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Stop.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsStop Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsStop value = ReadRos1Rm_msgsStop(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Stop component into checked staging storage.
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
    private static void WriteRos1Rm_msgsStop(_Codecs.Writer writer, _Ros1Rm_msgsStop value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@state;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Stop candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsStop ReadRos1Rm_msgsStop(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsStop();
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Stop_Teach fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsStop_Teach
    {
        public string @command = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Stop_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsStop_Teach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Stop_Teach fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsStop_TeachCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsStop_Teach>
    {
        public static readonly Ros1Rm_msgsStop_TeachCodec Instance = new Ros1Rm_msgsStop_TeachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Stop_Teach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsStop_TeachCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Stop_Teach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Stop_Teach.
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
        public byte[] Encode(_Ros1Rm_msgsStop_Teach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsStop_Teach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Stop_Teach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsStop_Teach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsStop_Teach value = ReadRos1Rm_msgsStop_Teach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Stop_Teach component into checked staging storage.
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
    private static void WriteRos1Rm_msgsStop_Teach(_Codecs.Writer writer, _Ros1Rm_msgsStop_Teach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@command;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_msgs/Stop_Teach candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsStop_Teach ReadRos1Rm_msgsStop_Teach(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsStop_Teach();
        value.@command = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Tool_Analog_Output fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsTool_Analog_Output
    {
        public float @voltage = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Tool_Analog_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTool_Analog_Output()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Tool_Analog_Output fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsTool_Analog_OutputCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsTool_Analog_Output>
    {
        public static readonly Ros1Rm_msgsTool_Analog_OutputCodec Instance = new Ros1Rm_msgsTool_Analog_OutputCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Tool_Analog_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsTool_Analog_OutputCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Tool_Analog_Output";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Tool_Analog_Output.
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
        public byte[] Encode(_Ros1Rm_msgsTool_Analog_Output value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsTool_Analog_Output(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Tool_Analog_Output.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTool_Analog_Output Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsTool_Analog_Output value = ReadRos1Rm_msgsTool_Analog_Output(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Tool_Analog_Output component into checked staging storage.
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
    private static void WriteRos1Rm_msgsTool_Analog_Output(_Codecs.Writer writer, _Ros1Rm_msgsTool_Analog_Output value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@voltage;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one rm_msgs/Tool_Analog_Output candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsTool_Analog_Output ReadRos1Rm_msgsTool_Analog_Output(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsTool_Analog_Output();
        value.@voltage = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Tool_Digital_Output fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsTool_Digital_Output
    {
        public byte @num = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Tool_Digital_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTool_Digital_Output()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Tool_Digital_Output fields.
     * @details 2 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsTool_Digital_OutputCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsTool_Digital_Output>
    {
        public static readonly Ros1Rm_msgsTool_Digital_OutputCodec Instance = new Ros1Rm_msgsTool_Digital_OutputCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Tool_Digital_Output.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsTool_Digital_OutputCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Tool_Digital_Output";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Tool_Digital_Output.
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
        public byte[] Encode(_Ros1Rm_msgsTool_Digital_Output value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsTool_Digital_Output(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Tool_Digital_Output.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTool_Digital_Output Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsTool_Digital_Output value = ReadRos1Rm_msgsTool_Digital_Output(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Tool_Digital_Output component into checked staging storage.
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
    private static void WriteRos1Rm_msgsTool_Digital_Output(_Codecs.Writer writer, _Ros1Rm_msgsTool_Digital_Output value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@num;
        writer.Unsigned(part0, 1);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_msgs/Tool_Digital_Output candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsTool_Digital_Output ReadRos1Rm_msgsTool_Digital_Output(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsTool_Digital_Output();
        value.@num = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Tool_IO_State fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsTool_IO_State
    {
        public sbyte[] @Tool_IO_Mode = new sbyte[2];
        public sbyte[] @Tool_IO_State = new sbyte[2];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Tool_IO_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTool_IO_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Tool_IO_State fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsTool_IO_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsTool_IO_State>
    {
        public static readonly Ros1Rm_msgsTool_IO_StateCodec Instance = new Ros1Rm_msgsTool_IO_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Tool_IO_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsTool_IO_StateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Tool_IO_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Tool_IO_State.
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
        public byte[] Encode(_Ros1Rm_msgsTool_IO_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsTool_IO_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Tool_IO_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTool_IO_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsTool_IO_State value = ReadRos1Rm_msgsTool_IO_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Tool_IO_State component into checked staging storage.
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
    private static void WriteRos1Rm_msgsTool_IO_State(_Codecs.Writer writer, _Ros1Rm_msgsTool_IO_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte[] part0 = value.@Tool_IO_Mode;
        if(part0 == null || part0.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            sbyte element = part0[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
        sbyte[] part1 = value.@Tool_IO_State;
        if(part1 == null || part1.Length != 2)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            sbyte element = part1[index];
            writer.Unsigned(unchecked((byte)element), 1);
        }
    }

    /**
     * @brief Read one rm_msgs/Tool_IO_State candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsTool_IO_State ReadRos1Rm_msgsTool_IO_State(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsTool_IO_State();
        value.@Tool_IO_Mode = new sbyte[2];
        for(int index = 0; index < value.@Tool_IO_Mode.Length; ++index)
            value.@Tool_IO_Mode[index] = unchecked((sbyte)reader.Unsigned(1));
        value.@Tool_IO_State = new sbyte[2];
        for(int index = 0; index < value.@Tool_IO_State.Length; ++index)
            value.@Tool_IO_State[index] = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Trajectoryinfo fields.
     * @details 3 ordered fields, canonical extent 12..524 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsTrajectoryinfo
    {
        public string @name = "";
        public string @create_time = "";
        public int @point_num = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Trajectoryinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTrajectoryinfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Trajectoryinfo fields.
     * @details 3 ordered fields, canonical extent 12..524 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsTrajectoryinfoCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsTrajectoryinfo>
    {
        public static readonly Ros1Rm_msgsTrajectoryinfoCodec Instance = new Ros1Rm_msgsTrajectoryinfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Trajectoryinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsTrajectoryinfoCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Trajectoryinfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 524;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Trajectoryinfo.
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
        public byte[] Encode(_Ros1Rm_msgsTrajectoryinfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsTrajectoryinfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Trajectoryinfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTrajectoryinfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsTrajectoryinfo value = ReadRos1Rm_msgsTrajectoryinfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Trajectoryinfo component into checked staging storage.
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
    private static void WriteRos1Rm_msgsTrajectoryinfo(_Codecs.Writer writer, _Ros1Rm_msgsTrajectoryinfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;

        WriteText(writer, part0, 256);
        string part1 = value.@create_time;

        WriteText(writer, part1, 256);
        int part2 = value.@point_num;
        writer.Unsigned(unchecked((uint)part2), 4);
    }

    /**
     * @brief Read one rm_msgs/Trajectoryinfo candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsTrajectoryinfo ReadRos1Rm_msgsTrajectoryinfo(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsTrajectoryinfo();
        value.@name = ReadText(reader, 256);
        value.@create_time = ReadText(reader, 256);
        value.@point_num = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Trajectorylist fields.
     * @details 5 ordered fields, canonical extent 20..8660 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsTrajectorylist
    {
        public int @page_num = 0;
        public int @page_size = 0;
        public int @total_size = 0;
        public string @vague_search = "";
        public _Ros1Rm_msgsTrajectoryinfo[] @tra_list = new _Ros1Rm_msgsTrajectoryinfo[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Trajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTrajectorylist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Trajectorylist fields.
     * @details 5 ordered fields, canonical extent 20..8660 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsTrajectorylistCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsTrajectorylist>
    {
        public static readonly Ros1Rm_msgsTrajectorylistCodec Instance = new Ros1Rm_msgsTrajectorylistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Trajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsTrajectorylistCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Trajectorylist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 8660;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Trajectorylist.
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
        public byte[] Encode(_Ros1Rm_msgsTrajectorylist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsTrajectorylist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Trajectorylist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTrajectorylist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsTrajectorylist value = ReadRos1Rm_msgsTrajectorylist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Trajectorylist component into checked staging storage.
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
    private static void WriteRos1Rm_msgsTrajectorylist(_Codecs.Writer writer, _Ros1Rm_msgsTrajectorylist value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@page_num;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@page_size;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@total_size;
        writer.Unsigned(unchecked((uint)part2), 4);
        string part3 = value.@vague_search;

        WriteText(writer, part3, 256);
        _Ros1Rm_msgsTrajectoryinfo[] part4 = value.@tra_list;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros1Rm_msgsTrajectoryinfo element = part4[index];

            WriteRos1Rm_msgsTrajectoryinfo(writer, element);
        }
    }

    /**
     * @brief Read one rm_msgs/Trajectorylist candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsTrajectorylist ReadRos1Rm_msgsTrajectorylist(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsTrajectorylist();
        value.@page_num = unchecked((int)reader.Unsigned(4));
        value.@page_size = unchecked((int)reader.Unsigned(4));
        value.@total_size = unchecked((int)reader.Unsigned(4));
        value.@vague_search = ReadText(reader, 256);
        value.@tra_list = new _Ros1Rm_msgsTrajectoryinfo[ReadCount(reader, 16, 12)];
        for(int index = 0; index < value.@tra_list.Length; ++index)
            value.@tra_list[index] = ReadRos1Rm_msgsTrajectoryinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Turtle_Driver fields.
     * @details 5 ordered fields, canonical extent 20..532 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsTurtle_Driver
    {
        public string @message_type = "";
        public string @robot_mac_address = "";
        public float @vx = 0;
        public float @vy = 0;
        public float @vtheta = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Turtle_Driver.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTurtle_Driver()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Turtle_Driver fields.
     * @details 5 ordered fields, canonical extent 20..532 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsTurtle_DriverCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsTurtle_Driver>
    {
        public static readonly Ros1Rm_msgsTurtle_DriverCodec Instance = new Ros1Rm_msgsTurtle_DriverCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Turtle_Driver.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsTurtle_DriverCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Turtle_Driver";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 532;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Turtle_Driver.
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
        public byte[] Encode(_Ros1Rm_msgsTurtle_Driver value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsTurtle_Driver(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Turtle_Driver.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsTurtle_Driver Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsTurtle_Driver value = ReadRos1Rm_msgsTurtle_Driver(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Turtle_Driver component into checked staging storage.
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
    private static void WriteRos1Rm_msgsTurtle_Driver(_Codecs.Writer writer, _Ros1Rm_msgsTurtle_Driver value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message_type;

        WriteText(writer, part0, 256);
        string part1 = value.@robot_mac_address;

        WriteText(writer, part1, 256);
        float part2 = value.@vx;

        WriteFloat32(writer, part2);
        float part3 = value.@vy;

        WriteFloat32(writer, part3);
        float part4 = value.@vtheta;

        WriteFloat32(writer, part4);
    }

    /**
     * @brief Read one rm_msgs/Turtle_Driver candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsTurtle_Driver ReadRos1Rm_msgsTurtle_Driver(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsTurtle_Driver();
        value.@message_type = ReadText(reader, 256);
        value.@robot_mac_address = ReadText(reader, 256);
        value.@vx = ReadFloat32(reader);
        value.@vy = ReadFloat32(reader);
        value.@vtheta = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/UpdateTCPmasterparam fields.
     * @details 4 ordered fields, canonical extent 16..784 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsUpdateTCPmasterparam
    {
        public string @master_name = "";
        public string @new_name = "";
        public string @ip = "";
        public int @port = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/UpdateTCPmasterparam.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsUpdateTCPmasterparam()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/UpdateTCPmasterparam fields.
     * @details 4 ordered fields, canonical extent 16..784 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsUpdateTCPmasterparamCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsUpdateTCPmasterparam>
    {
        public static readonly Ros1Rm_msgsUpdateTCPmasterparamCodec Instance = new Ros1Rm_msgsUpdateTCPmasterparamCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/UpdateTCPmasterparam.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsUpdateTCPmasterparamCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/UpdateTCPmasterparam";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 784;

        /**
         * @brief Encode the complete ordered value for rm_msgs/UpdateTCPmasterparam.
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
        public byte[] Encode(_Ros1Rm_msgsUpdateTCPmasterparam value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsUpdateTCPmasterparam(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/UpdateTCPmasterparam.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsUpdateTCPmasterparam Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsUpdateTCPmasterparam value = ReadRos1Rm_msgsUpdateTCPmasterparam(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/UpdateTCPmasterparam component into checked staging storage.
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
    private static void WriteRos1Rm_msgsUpdateTCPmasterparam(_Codecs.Writer writer, _Ros1Rm_msgsUpdateTCPmasterparam value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@master_name;

        WriteText(writer, part0, 256);
        string part1 = value.@new_name;

        WriteText(writer, part1, 256);
        string part2 = value.@ip;

        WriteText(writer, part2, 256);
        int part3 = value.@port;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    /**
     * @brief Read one rm_msgs/UpdateTCPmasterparam candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsUpdateTCPmasterparam ReadRos1Rm_msgsUpdateTCPmasterparam(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsUpdateTCPmasterparam();
        value.@master_name = ReadText(reader, 256);
        value.@new_name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Write_ModbusRTU fields.
     * @details 4 ordered fields, canonical extent 16..80 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsWrite_ModbusRTU
    {
        public int @address = 0;
        public int[] @data = new int[0];
        public int @type = 0;
        public int @device = 0;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_ModbusRTU.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsWrite_ModbusRTU()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Write_ModbusRTU fields.
     * @details 4 ordered fields, canonical extent 16..80 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsWrite_ModbusRTUCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsWrite_ModbusRTU>
    {
        public static readonly Ros1Rm_msgsWrite_ModbusRTUCodec Instance = new Ros1Rm_msgsWrite_ModbusRTUCodec();

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_ModbusRTU.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsWrite_ModbusRTUCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Write_ModbusRTU";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 80;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_ModbusRTU.
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
        public byte[] Encode(_Ros1Rm_msgsWrite_ModbusRTU value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsWrite_ModbusRTU(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Write_ModbusRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsWrite_ModbusRTU Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsWrite_ModbusRTU value = ReadRos1Rm_msgsWrite_ModbusRTU(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Write_ModbusRTU component into checked staging storage.
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
    private static void WriteRos1Rm_msgsWrite_ModbusRTU(_Codecs.Writer writer, _Ros1Rm_msgsWrite_ModbusRTU value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        int[] part1 = value.@data;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            int element = part1[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int part2 = value.@type;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@device;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    /**
     * @brief Read one rm_msgs/Write_ModbusRTU candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsWrite_ModbusRTU ReadRos1Rm_msgsWrite_ModbusRTU(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsWrite_ModbusRTU();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((int)reader.Unsigned(4));
        value.@type = unchecked((int)reader.Unsigned(4));
        value.@device = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Write_Register fields.
     * @details 5 ordered fields, canonical extent 17..49 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsWrite_Register
    {
        public byte @port = 0;
        public uint @address = 0;
        public uint @num = 0;
        public ushort[] @data = new ushort[0];
        public uint @device = 0;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_Register.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsWrite_Register()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Write_Register fields.
     * @details 5 ordered fields, canonical extent 17..49 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsWrite_RegisterCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsWrite_Register>
    {
        public static readonly Ros1Rm_msgsWrite_RegisterCodec Instance = new Ros1Rm_msgsWrite_RegisterCodec();

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_Register.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsWrite_RegisterCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Write_Register";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 49;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_Register.
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
        public byte[] Encode(_Ros1Rm_msgsWrite_Register value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsWrite_Register(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Write_Register.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsWrite_Register Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsWrite_Register value = ReadRos1Rm_msgsWrite_Register(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Write_Register component into checked staging storage.
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
    private static void WriteRos1Rm_msgsWrite_Register(_Codecs.Writer writer, _Ros1Rm_msgsWrite_Register value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@port;
        writer.Unsigned(part0, 1);
        uint part1 = value.@address;
        writer.Unsigned(part1, 4);
        uint part2 = value.@num;
        writer.Unsigned(part2, 4);
        ushort[] part3 = value.@data;
        if(part3 == null || part3.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part3.Length, 4);
        for(int index = 0; index < part3.Length; ++index)
        {
            ushort element = part3[index];
            writer.Unsigned(element, 2);
        }
        uint part4 = value.@device;
        writer.Unsigned(part4, 4);
    }

    /**
     * @brief Read one rm_msgs/Write_Register candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsWrite_Register ReadRos1Rm_msgsWrite_Register(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsWrite_Register();
        value.@port = unchecked((byte)reader.Unsigned(1));
        value.@address = unchecked((uint)reader.Unsigned(4));
        value.@num = unchecked((uint)reader.Unsigned(4));
        value.@data = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((ushort)reader.Unsigned(2));
        value.@device = unchecked((uint)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Write_TCPandRTU fields.
     * @details 7 ordered fields, canonical extent 28..604 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Rm_msgsWrite_TCPandRTU
    {
        public int @address = 0;
        public int[] @data = new int[0];
        public string @ip = "";
        public int @port = 0;
        public string @master_name = "";
        public int @type = 0;
        public int @device = 0;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_TCPandRTU.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsWrite_TCPandRTU()
        {
        }
    }

    /**
     * @brief Preserve all original rm_msgs/Write_TCPandRTU fields.
     * @details 7 ordered fields, canonical extent 28..604 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Rm_msgsWrite_TCPandRTUCodec : global::Uwvm.RosWasm.ICodec<_Ros1Rm_msgsWrite_TCPandRTU>
    {
        public static readonly Ros1Rm_msgsWrite_TCPandRTUCodec Instance = new Ros1Rm_msgsWrite_TCPandRTUCodec();

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_TCPandRTU.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Rm_msgsWrite_TCPandRTUCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "rm_msgs/Write_TCPandRTU";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a";
        public const int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 604;

        /**
         * @brief Encode the complete ordered value for rm_msgs/Write_TCPandRTU.
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
        public byte[] Encode(_Ros1Rm_msgsWrite_TCPandRTU value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Rm_msgsWrite_TCPandRTU(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_msgs/Write_TCPandRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Rm_msgsWrite_TCPandRTU Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Rm_msgsWrite_TCPandRTU value = ReadRos1Rm_msgsWrite_TCPandRTU(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_msgs/Write_TCPandRTU component into checked staging storage.
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
    private static void WriteRos1Rm_msgsWrite_TCPandRTU(_Codecs.Writer writer, _Ros1Rm_msgsWrite_TCPandRTU value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        int[] part1 = value.@data;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            int element = part1[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        string part2 = value.@ip;

        WriteText(writer, part2, 256);
        int part3 = value.@port;
        writer.Unsigned(unchecked((uint)part3), 4);
        string part4 = value.@master_name;

        WriteText(writer, part4, 256);
        int part5 = value.@type;
        writer.Unsigned(unchecked((uint)part5), 4);
        int part6 = value.@device;
        writer.Unsigned(unchecked((uint)part6), 4);
    }

    /**
     * @brief Read one rm_msgs/Write_TCPandRTU candidate through the checked canonical cursor.
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
    private static _Ros1Rm_msgsWrite_TCPandRTU ReadRos1Rm_msgsWrite_TCPandRTU(_Codecs.Reader reader)
    {
        var value = new _Ros1Rm_msgsWrite_TCPandRTU();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((int)reader.Unsigned(4));
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@master_name = ReadText(reader, 256);
        value.@type = unchecked((int)reader.Unsigned(4));
        value.@device = unchecked((int)reader.Unsigned(4));
        return value;
    }
}
