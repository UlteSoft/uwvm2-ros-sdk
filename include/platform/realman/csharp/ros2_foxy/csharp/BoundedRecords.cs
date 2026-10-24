/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original realman/ros2_foxy canonical value domain.
 * @details The selected domain contains 80 complete record/components and 339 original fields. Declared
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
namespace Uwvm.Realman.ros2_foxy;

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
     * @brief Preserve all original rm_ros_interfaces/msg/Alohastate fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgAlohastate
    {
        public short @io1_state = 0;
        public short @io2_state = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Alohastate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgAlohastate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Alohastate fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgAlohastateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgAlohastate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgAlohastateCodec Instance = new Ros2Rm_ros_interfacesMsgAlohastateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Alohastate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgAlohastateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Alohastate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Alohastate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgAlohastate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgAlohastate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Alohastate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgAlohastate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgAlohastate value = ReadRos2Rm_ros_interfacesMsgAlohastate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Alohastate component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgAlohastate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgAlohastate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@io1_state;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@io2_state;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Alohastate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgAlohastate ReadRos2Rm_ros_interfacesMsgAlohastate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgAlohastate();
        value.@io1_state = unchecked((short)reader.Unsigned(2));
        value.@io2_state = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armcurrentstatus fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgArmcurrentstatus
    {
        public ushort @arm_current_status = 0;

        /**
         * @brief Check the complete finite representation of rm_ros_interfaces/msg/Armcurrentstatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmcurrentstatus()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armcurrentstatus fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgArmcurrentstatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgArmcurrentstatus>
    {
        public static readonly Ros2Rm_ros_interfacesMsgArmcurrentstatusCodec Instance = new Ros2Rm_ros_interfacesMsgArmcurrentstatusCodec();

        /**
         * @brief Check the complete finite representation of rm_ros_interfaces/msg/Armcurrentstatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgArmcurrentstatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Armcurrentstatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armcurrentstatus.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgArmcurrentstatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgArmcurrentstatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armcurrentstatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmcurrentstatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgArmcurrentstatus value = ReadRos2Rm_ros_interfacesMsgArmcurrentstatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Armcurrentstatus component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgArmcurrentstatus(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgArmcurrentstatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@arm_current_status;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Armcurrentstatus candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgArmcurrentstatus ReadRos2Rm_ros_interfacesMsgArmcurrentstatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgArmcurrentstatus();
        value.@arm_current_status = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armoriginalstate fields.
     * @details 5 ordered fields, canonical extent 32..96 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgArmoriginalstate
    {
        public float[] @joint = new float[0];
        public float[] @pose = new float[6];
        public ushort @err = 0;
        public byte @err_len = 0;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armoriginalstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmoriginalstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armoriginalstate fields.
     * @details 5 ordered fields, canonical extent 32..96 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgArmoriginalstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgArmoriginalstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgArmoriginalstateCodec Instance = new Ros2Rm_ros_interfacesMsgArmoriginalstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armoriginalstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgArmoriginalstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Armoriginalstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 96;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armoriginalstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgArmoriginalstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgArmoriginalstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armoriginalstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmoriginalstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgArmoriginalstate value = ReadRos2Rm_ros_interfacesMsgArmoriginalstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Armoriginalstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgArmoriginalstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgArmoriginalstate value)
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
        float[] part1 = value.@pose;
        if(part1 == null || part1.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
        ushort part2 = value.@err;
        writer.Unsigned(part2, 2);
        byte part3 = value.@err_len;
        writer.Unsigned(part3, 1);
        byte part4 = value.@dof;
        writer.Unsigned(part4, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Armoriginalstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgArmoriginalstate ReadRos2Rm_ros_interfacesMsgArmoriginalstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgArmoriginalstate();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@pose = new float[6];
        for(int index = 0; index < value.@pose.Length; ++index)
            value.@pose[index] = ReadFloat32(reader);
        value.@err = unchecked((ushort)reader.Unsigned(2));
        value.@err_len = unchecked((byte)reader.Unsigned(1));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Softwarebuildinfo fields.
     * @details 2 ordered fields, canonical extent 8..520 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
    {
        public string @build_time = "";
        public string @version = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Softwarebuildinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Softwarebuildinfo fields.
     * @details 2 ordered fields, canonical extent 8..520 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo>
    {
        public static readonly Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec Instance = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Softwarebuildinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgSoftwarebuildinfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Softwarebuildinfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Softwarebuildinfo.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Softwarebuildinfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Softwarebuildinfo component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@build_time;

        WriteText(writer, part0, 256);
        string part1 = value.@version;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Softwarebuildinfo candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        value.@build_time = ReadText(reader, 256);
        value.@version = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armsoftversion fields.
     * @details 14 ordered fields, canonical extent 69..4421 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgArmsoftversion
    {
        public string @product_version = "";
        public string @controller_version = "";
        public string @algorithm_info = "";
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @ctrl_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public string @dynamic_info = "";
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @plan_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @com_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @program_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public bool @state = false;
        public string @planversion = "";
        public string @ctrlversion = "";
        public string @kernal1 = "";
        public string @kernal2 = "";
        public string @productversion = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armsoftversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmsoftversion()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armsoftversion fields.
     * @details 14 ordered fields, canonical extent 69..4421 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgArmsoftversionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgArmsoftversion>
    {
        public static readonly Ros2Rm_ros_interfacesMsgArmsoftversionCodec Instance = new Ros2Rm_ros_interfacesMsgArmsoftversionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armsoftversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgArmsoftversionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Armsoftversion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c";
        public const int MIN_WIRE_BYTES = 69, MAX_WIRE_BYTES = 4421;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armsoftversion.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgArmsoftversion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgArmsoftversion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armsoftversion.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmsoftversion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgArmsoftversion value = ReadRos2Rm_ros_interfacesMsgArmsoftversion(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Armsoftversion component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgArmsoftversion(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgArmsoftversion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@product_version;
        WriteText(writer, part0, 256);
        string part1 = value.@controller_version;
        WriteText(writer, part1, 256);
        string part2 = value.@algorithm_info;
        WriteText(writer, part2, 256);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part3 = value.@ctrl_info;
        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part3);
        string part4 = value.@dynamic_info;
        WriteText(writer, part4, 256);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part5 = value.@plan_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part5);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part6 = value.@com_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part6);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part7 = value.@program_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part7);
        bool part8 = value.@state;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        string part9 = value.@planversion;

        WriteText(writer, part9, 256);
        string part10 = value.@ctrlversion;

        WriteText(writer, part10, 256);
        string part11 = value.@kernal1;

        WriteText(writer, part11, 256);
        string part12 = value.@kernal2;

        WriteText(writer, part12, 256);
        string part13 = value.@productversion;

        WriteText(writer, part13, 256);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Armsoftversion candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgArmsoftversion ReadRos2Rm_ros_interfacesMsgArmsoftversion(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgArmsoftversion();
        value.@product_version = ReadText(reader, 256);
        value.@controller_version = ReadText(reader, 256);
        value.@algorithm_info = ReadText(reader, 256);
        value.@ctrl_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@dynamic_info = ReadText(reader, 256);
        value.@plan_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@com_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@program_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@state = ReadBool(reader);
        value.@planversion = ReadText(reader, 256);
        value.@ctrlversion = ReadText(reader, 256);
        value.@kernal1 = ReadText(reader, 256);
        value.@kernal2 = ReadText(reader, 256);
        value.@productversion = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armsoftversionv3 fields.
     * @details 6 ordered fields, canonical extent 32..2080 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgArmsoftversionv3
    {
        public string @product_version = "";
        public string @controller_version = "";
        public string @algorithm_info = "";
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @ctrl_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public string @dynamic_info = "";
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @plan_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armsoftversionv3.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmsoftversionv3()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armsoftversionv3 fields.
     * @details 6 ordered fields, canonical extent 32..2080 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgArmsoftversionv3Codec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgArmsoftversionv3>
    {
        public static readonly Ros2Rm_ros_interfacesMsgArmsoftversionv3Codec Instance = new Ros2Rm_ros_interfacesMsgArmsoftversionv3Codec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armsoftversionv3.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgArmsoftversionv3Codec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Armsoftversionv3";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 2080;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armsoftversionv3.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgArmsoftversionv3 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgArmsoftversionv3(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armsoftversionv3.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmsoftversionv3 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgArmsoftversionv3 value = ReadRos2Rm_ros_interfacesMsgArmsoftversionv3(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Armsoftversionv3 component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgArmsoftversionv3(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgArmsoftversionv3 value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@product_version;

        WriteText(writer, part0, 256);
        string part1 = value.@controller_version;

        WriteText(writer, part1, 256);
        string part2 = value.@algorithm_info;

        WriteText(writer, part2, 256);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part3 = value.@ctrl_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part3);
        string part4 = value.@dynamic_info;

        WriteText(writer, part4, 256);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part5 = value.@plan_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part5);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Armsoftversionv3 candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgArmsoftversionv3 ReadRos2Rm_ros_interfacesMsgArmsoftversionv3(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgArmsoftversionv3();
        value.@product_version = ReadText(reader, 256);
        value.@controller_version = ReadText(reader, 256);
        value.@algorithm_info = ReadText(reader, 256);
        value.@ctrl_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@dynamic_info = ReadText(reader, 256);
        value.@plan_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armsoftversionv4 fields.
     * @details 6 ordered fields, canonical extent 36..2340 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgArmsoftversionv4
    {
        public string @product_version = "";
        public string @controller_version = "";
        public string @algorithm_info = "";
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @ctrl_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @com_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        public _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo @program_info = new _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armsoftversionv4.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmsoftversionv4()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armsoftversionv4 fields.
     * @details 6 ordered fields, canonical extent 36..2340 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgArmsoftversionv4Codec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgArmsoftversionv4>
    {
        public static readonly Ros2Rm_ros_interfacesMsgArmsoftversionv4Codec Instance = new Ros2Rm_ros_interfacesMsgArmsoftversionv4Codec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armsoftversionv4.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgArmsoftversionv4Codec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Armsoftversionv4";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d";
        public const int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 2340;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armsoftversionv4.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgArmsoftversionv4 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgArmsoftversionv4(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armsoftversionv4.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmsoftversionv4 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgArmsoftversionv4 value = ReadRos2Rm_ros_interfacesMsgArmsoftversionv4(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Armsoftversionv4 component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgArmsoftversionv4(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgArmsoftversionv4 value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@product_version;

        WriteText(writer, part0, 256);
        string part1 = value.@controller_version;

        WriteText(writer, part1, 256);
        string part2 = value.@algorithm_info;

        WriteText(writer, part2, 256);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part3 = value.@ctrl_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part3);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part4 = value.@com_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part4);
        _Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part5 = value.@program_info;

        WriteRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part5);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Armsoftversionv4 candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgArmsoftversionv4 ReadRos2Rm_ros_interfacesMsgArmsoftversionv4(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgArmsoftversionv4();
        value.@product_version = ReadText(reader, 256);
        value.@controller_version = ReadText(reader, 256);
        value.@algorithm_info = ReadText(reader, 256);
        value.@ctrl_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@com_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.@program_info = ReadRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armstate fields.
     * @details 5 ordered fields, canonical extent 64..128 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgArmstate
    {
        public float[] @joint = new float[0];
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public ushort @err = 0;
        public byte @err_len = 0;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Armstate fields.
     * @details 5 ordered fields, canonical extent 64..128 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgArmstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgArmstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgArmstateCodec Instance = new Ros2Rm_ros_interfacesMsgArmstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Armstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgArmstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Armstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7";
        public const int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 128;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgArmstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgArmstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgArmstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgArmstate value = ReadRos2Rm_ros_interfacesMsgArmstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Armstate component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgArmstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgArmstate value)
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
        _Ros2Geometry_msgsMsgPose part1 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part1);
        ushort part2 = value.@err;
        writer.Unsigned(part2, 2);
        byte part3 = value.@err_len;
        writer.Unsigned(part3, 1);
        byte part4 = value.@dof;
        writer.Unsigned(part4, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Armstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgArmstate ReadRos2Rm_ros_interfacesMsgArmstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgArmstate();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@err = unchecked((ushort)reader.Unsigned(2));
        value.@err_len = unchecked((byte)reader.Unsigned(1));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Cartepos fields.
     * @details 2 ordered fields, canonical extent 57..57 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgCartepos
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public bool @follow = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Cartepos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgCartepos()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Cartepos fields.
     * @details 2 ordered fields, canonical extent 57..57 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgCarteposCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgCartepos>
    {
        public static readonly Ros2Rm_ros_interfacesMsgCarteposCodec Instance = new Ros2Rm_ros_interfacesMsgCarteposCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Cartepos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgCarteposCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Cartepos";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13";
        public const int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Cartepos.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgCartepos value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgCartepos(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Cartepos.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgCartepos Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgCartepos value = ReadRos2Rm_ros_interfacesMsgCartepos(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Cartepos component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgCartepos(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgCartepos value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
        bool part1 = value.@follow;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Cartepos candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgCartepos ReadRos2Rm_ros_interfacesMsgCartepos(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgCartepos();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@follow = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Carteposcustom fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgCarteposcustom
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public bool @follow = false;
        public byte @trajectory_mode = 0;
        public byte @radio = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Carteposcustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgCarteposcustom()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Carteposcustom fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgCarteposcustomCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgCarteposcustom>
    {
        public static readonly Ros2Rm_ros_interfacesMsgCarteposcustomCodec Instance = new Ros2Rm_ros_interfacesMsgCarteposcustomCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Carteposcustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgCarteposcustomCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Carteposcustom";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c";
        public const int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Carteposcustom.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgCarteposcustom value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgCarteposcustom(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Carteposcustom.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgCarteposcustom Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgCarteposcustom value = ReadRos2Rm_ros_interfacesMsgCarteposcustom(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Carteposcustom component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgCarteposcustom(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgCarteposcustom value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
        bool part1 = value.@follow;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        byte part2 = value.@trajectory_mode;
        writer.Unsigned(part2, 1);
        byte part3 = value.@radio;
        writer.Unsigned(part3, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Carteposcustom candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgCarteposcustom ReadRos2Rm_ros_interfacesMsgCarteposcustom(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgCarteposcustom();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@follow = ReadBool(reader);
        value.@trajectory_mode = unchecked((byte)reader.Unsigned(1));
        value.@radio = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Expandpos fields.
     * @details 3 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgExpandpos
    {
        public int @pos = 0;
        public ushort @speed = 0;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Expandpos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgExpandpos()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Expandpos fields.
     * @details 3 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgExpandposCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgExpandpos>
    {
        public static readonly Ros2Rm_ros_interfacesMsgExpandposCodec Instance = new Ros2Rm_ros_interfacesMsgExpandposCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Expandpos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgExpandposCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Expandpos";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c";
        public const int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Expandpos.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgExpandpos value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgExpandpos(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Expandpos.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgExpandpos Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgExpandpos value = ReadRos2Rm_ros_interfacesMsgExpandpos(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Expandpos component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgExpandpos(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgExpandpos value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@pos;
        writer.Unsigned(unchecked((uint)part0), 4);
        ushort part1 = value.@speed;
        writer.Unsigned(part1, 2);
        bool part2 = value.@block;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Expandpos candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgExpandpos ReadRos2Rm_ros_interfacesMsgExpandpos(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgExpandpos();
        value.@pos = unchecked((int)reader.Unsigned(4));
        value.@speed = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Expandstate fields.
     * @details 4 ordered fields, canonical extent 12..12 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgExpandstate
    {
        public int @pos = 0;
        public int @current = 0;
        public ushort @err_flag = 0;
        public short @mode = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Expandstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgExpandstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Expandstate fields.
     * @details 4 ordered fields, canonical extent 12..12 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgExpandstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgExpandstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgExpandstateCodec Instance = new Ros2Rm_ros_interfacesMsgExpandstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Expandstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgExpandstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Expandstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Expandstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgExpandstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgExpandstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Expandstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgExpandstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgExpandstate value = ReadRos2Rm_ros_interfacesMsgExpandstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Expandstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgExpandstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgExpandstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@pos;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@current;
        writer.Unsigned(unchecked((uint)part1), 4);
        ushort part2 = value.@err_flag;
        writer.Unsigned(part2, 2);
        short part3 = value.@mode;
        writer.Unsigned(unchecked((ushort)part3), 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Expandstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgExpandstate ReadRos2Rm_ros_interfacesMsgExpandstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgExpandstate();
        value.@pos = unchecked((int)reader.Unsigned(4));
        value.@current = unchecked((int)reader.Unsigned(4));
        value.@err_flag = unchecked((ushort)reader.Unsigned(2));
        value.@mode = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Flowchartrunstate fields.
     * @details 7 ordered fields, canonical extent 13..525 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgFlowchartrunstate
    {
        public byte @run_state = 0;
        public byte @id = 0;
        public string @name = "";
        public byte @plan_speed = 0;
        public byte @step_mode = 0;
        public string @modal_id = "";
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Flowchartrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgFlowchartrunstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Flowchartrunstate fields.
     * @details 7 ordered fields, canonical extent 13..525 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgFlowchartrunstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgFlowchartrunstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgFlowchartrunstateCodec Instance = new Ros2Rm_ros_interfacesMsgFlowchartrunstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Flowchartrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgFlowchartrunstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Flowchartrunstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 525;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Flowchartrunstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgFlowchartrunstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgFlowchartrunstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Flowchartrunstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgFlowchartrunstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgFlowchartrunstate value = ReadRos2Rm_ros_interfacesMsgFlowchartrunstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Flowchartrunstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgFlowchartrunstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgFlowchartrunstate value)
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
        bool part6 = value.@state;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Flowchartrunstate candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgFlowchartrunstate ReadRos2Rm_ros_interfacesMsgFlowchartrunstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgFlowchartrunstate();
        value.@run_state = unchecked((byte)reader.Unsigned(1));
        value.@id = unchecked((byte)reader.Unsigned(1));
        value.@name = ReadText(reader, 256);
        value.@plan_speed = unchecked((byte)reader.Unsigned(1));
        value.@step_mode = unchecked((byte)reader.Unsigned(1));
        value.@modal_id = ReadText(reader, 256);
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Force_Position_State fields.
     * @details 3 ordered fields, canonical extent 30..30 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgForce_Position_State
    {
        public float[] @joint = new float[6];
        public float @force = 0;
        public ushort @arm_err = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Force_Position_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForce_Position_State()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Force_Position_State fields.
     * @details 3 ordered fields, canonical extent 30..30 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgForce_Position_StateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgForce_Position_State>
    {
        public static readonly Ros2Rm_ros_interfacesMsgForce_Position_StateCodec Instance = new Ros2Rm_ros_interfacesMsgForce_Position_StateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Force_Position_State.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgForce_Position_StateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Force_Position_State";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7";
        public const int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 30;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Force_Position_State.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgForce_Position_State value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgForce_Position_State(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Force_Position_State.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForce_Position_State Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgForce_Position_State value = ReadRos2Rm_ros_interfacesMsgForce_Position_State(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Force_Position_State component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgForce_Position_State(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgForce_Position_State value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@joint;
        if(part0 == null || part0.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        float part1 = value.@force;

        WriteFloat32(writer, part1);
        ushort part2 = value.@arm_err;
        writer.Unsigned(part2, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Force_Position_State candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgForce_Position_State ReadRos2Rm_ros_interfacesMsgForce_Position_State(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgForce_Position_State();
        value.@joint = new float[6];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@force = ReadFloat32(reader);
        value.@arm_err = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Forcepositionmove fields.
     * @details 11 ordered fields, canonical extent 121..185 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgForcepositionmove
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public float[] @joint = new float[0];
        public byte @flag = 0;
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte[] @control_mode = new byte[6];
        public bool @follow = false;
        public float[] @desired_force = new float[6];
        public float[] @limit_vel = new float[6];
        public byte @trajectory_mode = 0;
        public ushort @radio = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Forcepositionmove.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForcepositionmove()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Forcepositionmove fields.
     * @details 11 ordered fields, canonical extent 121..185 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgForcepositionmoveCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgForcepositionmove>
    {
        public static readonly Ros2Rm_ros_interfacesMsgForcepositionmoveCodec Instance = new Ros2Rm_ros_interfacesMsgForcepositionmoveCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Forcepositionmove.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgForcepositionmoveCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Forcepositionmove";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224";
        public const int MIN_WIRE_BYTES = 121, MAX_WIRE_BYTES = 185;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Forcepositionmove.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgForcepositionmove value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgForcepositionmove(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Forcepositionmove.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForcepositionmove Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgForcepositionmove value = ReadRos2Rm_ros_interfacesMsgForcepositionmove(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Forcepositionmove component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgForcepositionmove(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgForcepositionmove value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
        float[] part1 = value.@joint;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            float element = part1[index];

            WriteFloat32(writer, element);
        }
        byte part2 = value.@flag;
        writer.Unsigned(part2, 1);
        byte part3 = value.@sensor;
        writer.Unsigned(part3, 1);
        byte part4 = value.@mode;
        writer.Unsigned(part4, 1);
        byte[] part5 = value.@control_mode;
        if(part5 == null || part5.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            byte element = part5[index];
            writer.Unsigned(element, 1);
        }
        bool part6 = value.@follow;
        writer.Unsigned(part6 ? 1UL : 0UL, 1);
        float[] part7 = value.@desired_force;
        if(part7 == null || part7.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            float element = part7[index];

            WriteFloat32(writer, element);
        }
        float[] part8 = value.@limit_vel;
        if(part8 == null || part8.Length != 6)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            float element = part8[index];

            WriteFloat32(writer, element);
        }
        byte part9 = value.@trajectory_mode;
        writer.Unsigned(part9, 1);
        ushort part10 = value.@radio;
        writer.Unsigned(part10, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Forcepositionmove candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgForcepositionmove ReadRos2Rm_ros_interfacesMsgForcepositionmove(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgForcepositionmove();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@flag = unchecked((byte)reader.Unsigned(1));
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@control_mode = new byte[6];
        for(int index = 0; index < value.@control_mode.Length; ++index)
            value.@control_mode[index] = unchecked((byte)reader.Unsigned(1));
        value.@follow = ReadBool(reader);
        value.@desired_force = new float[6];
        for(int index = 0; index < value.@desired_force.Length; ++index)
            value.@desired_force[index] = ReadFloat32(reader);
        value.@limit_vel = new float[6];
        for(int index = 0; index < value.@limit_vel.Length; ++index)
            value.@limit_vel[index] = ReadFloat32(reader);
        value.@trajectory_mode = unchecked((byte)reader.Unsigned(1));
        value.@radio = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Forcepositionmovejoint fields.
     * @details 7 ordered fields, canonical extent 14..78 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgForcepositionmovejoint
    {
        public float[] @joint = new float[0];
        public byte @sensor = 0;
        public byte @mode = 0;
        public short @dir = 0;
        public float @force = 0;
        public bool @follow = false;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Forcepositionmovejoint.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForcepositionmovejoint()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Forcepositionmovejoint fields.
     * @details 7 ordered fields, canonical extent 14..78 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgForcepositionmovejointCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgForcepositionmovejoint>
    {
        public static readonly Ros2Rm_ros_interfacesMsgForcepositionmovejointCodec Instance = new Ros2Rm_ros_interfacesMsgForcepositionmovejointCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Forcepositionmovejoint.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgForcepositionmovejointCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Forcepositionmovejoint";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 78;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Forcepositionmovejoint.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgForcepositionmovejoint value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgForcepositionmovejoint(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Forcepositionmovejoint.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForcepositionmovejoint Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgForcepositionmovejoint value = ReadRos2Rm_ros_interfacesMsgForcepositionmovejoint(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Forcepositionmovejoint component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgForcepositionmovejoint(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgForcepositionmovejoint value)
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
        short part3 = value.@dir;
        writer.Unsigned(unchecked((ushort)part3), 2);
        float part4 = value.@force;

        WriteFloat32(writer, part4);
        bool part5 = value.@follow;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
        byte part6 = value.@dof;
        writer.Unsigned(part6, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Forcepositionmovejoint candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgForcepositionmovejoint ReadRos2Rm_ros_interfacesMsgForcepositionmovejoint(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgForcepositionmovejoint();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@dir = unchecked((short)reader.Unsigned(2));
        value.@force = ReadFloat32(reader);
        value.@follow = ReadBool(reader);
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Forcepositionmovepose fields.
     * @details 6 ordered fields, canonical extent 62..62 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgForcepositionmovepose
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte @dir = 0;
        public short @force = 0;
        public bool @follow = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Forcepositionmovepose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForcepositionmovepose()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Forcepositionmovepose fields.
     * @details 6 ordered fields, canonical extent 62..62 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgForcepositionmoveposeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgForcepositionmovepose>
    {
        public static readonly Ros2Rm_ros_interfacesMsgForcepositionmoveposeCodec Instance = new Ros2Rm_ros_interfacesMsgForcepositionmoveposeCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Forcepositionmovepose.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgForcepositionmoveposeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Forcepositionmovepose";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3";
        public const int MIN_WIRE_BYTES = 62, MAX_WIRE_BYTES = 62;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Forcepositionmovepose.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgForcepositionmovepose value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgForcepositionmovepose(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Forcepositionmovepose.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgForcepositionmovepose Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgForcepositionmovepose value = ReadRos2Rm_ros_interfacesMsgForcepositionmovepose(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Forcepositionmovepose component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgForcepositionmovepose(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgForcepositionmovepose value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
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
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Forcepositionmovepose candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgForcepositionmovepose ReadRos2Rm_ros_interfacesMsgForcepositionmovepose(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgForcepositionmovepose();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@dir = unchecked((byte)reader.Unsigned(1));
        value.@force = unchecked((short)reader.Unsigned(2));
        value.@follow = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/GetArmState_Command fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgGetArmState_Command
    {
        public string @command = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/GetArmState_Command.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGetArmState_Command()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/GetArmState_Command fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgGetArmState_CommandCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgGetArmState_Command>
    {
        public static readonly Ros2Rm_ros_interfacesMsgGetArmState_CommandCodec Instance = new Ros2Rm_ros_interfacesMsgGetArmState_CommandCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/GetArmState_Command.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgGetArmState_CommandCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/GetArmState_Command";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/GetArmState_Command.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgGetArmState_Command value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgGetArmState_Command(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/GetArmState_Command.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGetArmState_Command Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgGetArmState_Command value = ReadRos2Rm_ros_interfacesMsgGetArmState_Command(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/GetArmState_Command component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgGetArmState_Command(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgGetArmState_Command value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@command;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/GetArmState_Command candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgGetArmState_Command ReadRos2Rm_ros_interfacesMsgGetArmState_Command(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgGetArmState_Command();
        value.@command = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Getallframe fields.
     * @details 1 ordered fields, canonical extent 40..2600 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgGetallframe
    {
        public string[] @frame_name = new string[10];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Getallframe.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGetallframe()
        {
            for(int index = 0; index < 10; ++index)
                this.@frame_name[index] = "";
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Getallframe fields.
     * @details 1 ordered fields, canonical extent 40..2600 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgGetallframeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgGetallframe>
    {
        public static readonly Ros2Rm_ros_interfacesMsgGetallframeCodec Instance = new Ros2Rm_ros_interfacesMsgGetallframeCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Getallframe.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgGetallframeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Getallframe";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef";
        public const int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 2600;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Getallframe.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgGetallframe value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgGetallframe(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Getallframe.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGetallframe Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgGetallframe value = ReadRos2Rm_ros_interfacesMsgGetallframe(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Getallframe component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgGetallframe(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgGetallframe value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string[] part0 = value.@frame_name;
        if(part0 == null || part0.Length != 10)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part0.Length; ++index)
        {
            string element = part0[index];

            WriteText(writer, element, 256);
        }
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Getallframe candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgGetallframe ReadRos2Rm_ros_interfacesMsgGetallframe(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgGetallframe();
        value.@frame_name = new string[10];
        for(int index = 0; index < value.@frame_name.Length; ++index)
            value.@frame_name[index] = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Getmodbustcpmasterlist fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
    {
        public int @page_num = 0;
        public int @page_size = 0;
        public string @vague_search = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Getmodbustcpmasterlist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Getmodbustcpmasterlist fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist>
    {
        public static readonly Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodec Instance = new Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Getmodbustcpmasterlist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlistCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Getmodbustcpmasterlist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Getmodbustcpmasterlist.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Getmodbustcpmasterlist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value = ReadRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Getmodbustcpmasterlist component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value)
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
     * @brief Read one rm_ros_interfaces/msg/Getmodbustcpmasterlist candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist ReadRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist();
        value.@page_num = unchecked((int)reader.Unsigned(4));
        value.@page_size = unchecked((int)reader.Unsigned(4));
        value.@vague_search = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Gettrajectorylist fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgGettrajectorylist
    {
        public int @page_num = 0;
        public int @page_size = 0;
        public string @vague_search = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Gettrajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGettrajectorylist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Gettrajectorylist fields.
     * @details 3 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgGettrajectorylistCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgGettrajectorylist>
    {
        public static readonly Ros2Rm_ros_interfacesMsgGettrajectorylistCodec Instance = new Ros2Rm_ros_interfacesMsgGettrajectorylistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Gettrajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgGettrajectorylistCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Gettrajectorylist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Gettrajectorylist.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgGettrajectorylist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgGettrajectorylist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Gettrajectorylist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGettrajectorylist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgGettrajectorylist value = ReadRos2Rm_ros_interfacesMsgGettrajectorylist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Gettrajectorylist component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgGettrajectorylist(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgGettrajectorylist value)
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
     * @brief Read one rm_ros_interfaces/msg/Gettrajectorylist candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgGettrajectorylist ReadRos2Rm_ros_interfacesMsgGettrajectorylist(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgGettrajectorylist();
        value.@page_num = unchecked((int)reader.Unsigned(4));
        value.@page_size = unchecked((int)reader.Unsigned(4));
        value.@vague_search = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Gripperpick fields.
     * @details 4 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgGripperpick
    {
        public ushort @speed = 0;
        public ushort @force = 0;
        public bool @block = false;
        public ushort @timeout = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Gripperpick.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGripperpick()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Gripperpick fields.
     * @details 4 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgGripperpickCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgGripperpick>
    {
        public static readonly Ros2Rm_ros_interfacesMsgGripperpickCodec Instance = new Ros2Rm_ros_interfacesMsgGripperpickCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Gripperpick.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgGripperpickCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Gripperpick";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2";
        public const int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Gripperpick.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgGripperpick value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgGripperpick(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Gripperpick.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGripperpick Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgGripperpick value = ReadRos2Rm_ros_interfacesMsgGripperpick(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Gripperpick component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgGripperpick(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgGripperpick value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@speed;
        writer.Unsigned(part0, 2);
        ushort part1 = value.@force;
        writer.Unsigned(part1, 2);
        bool part2 = value.@block;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        ushort part3 = value.@timeout;
        writer.Unsigned(part3, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Gripperpick candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgGripperpick ReadRos2Rm_ros_interfacesMsgGripperpick(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgGripperpick();
        value.@speed = unchecked((ushort)reader.Unsigned(2));
        value.@force = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        value.@timeout = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Gripperset fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgGripperset
    {
        public ushort @position = 0;
        public bool @block = false;
        public ushort @timeout = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Gripperset.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGripperset()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Gripperset fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgGrippersetCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgGripperset>
    {
        public static readonly Ros2Rm_ros_interfacesMsgGrippersetCodec Instance = new Ros2Rm_ros_interfacesMsgGrippersetCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Gripperset.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgGrippersetCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Gripperset";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Gripperset.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgGripperset value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgGripperset(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Gripperset.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgGripperset Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgGripperset value = ReadRos2Rm_ros_interfacesMsgGripperset(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Gripperset component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgGripperset(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgGripperset value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@position;
        writer.Unsigned(part0, 2);
        bool part1 = value.@block;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        ushort part2 = value.@timeout;
        writer.Unsigned(part2, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Gripperset candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgGripperset ReadRos2Rm_ros_interfacesMsgGripperset(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgGripperset();
        value.@position = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        value.@timeout = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handangle fields.
     * @details 2 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgHandangle
    {
        public short[] @hand_angle = new short[6];
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handangle.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandangle()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handangle fields.
     * @details 2 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgHandangleCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgHandangle>
    {
        public static readonly Ros2Rm_ros_interfacesMsgHandangleCodec Instance = new Ros2Rm_ros_interfacesMsgHandangleCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handangle.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgHandangleCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Handangle";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handangle.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgHandangle value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgHandangle(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handangle.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandangle Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgHandangle value = ReadRos2Rm_ros_interfacesMsgHandangle(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Handangle component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgHandangle(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgHandangle value)
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
     * @brief Read one rm_ros_interfaces/msg/Handangle candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgHandangle ReadRos2Rm_ros_interfacesMsgHandangle(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgHandangle();
        value.@hand_angle = new short[6];
        for(int index = 0; index < value.@hand_angle.Length; ++index)
            value.@hand_angle[index] = unchecked((short)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handforce fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgHandforce
    {
        public ushort @hand_force = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handforce.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandforce()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handforce fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgHandforceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgHandforce>
    {
        public static readonly Ros2Rm_ros_interfacesMsgHandforceCodec Instance = new Ros2Rm_ros_interfacesMsgHandforceCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handforce.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgHandforceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Handforce";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handforce.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgHandforce value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgHandforce(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handforce.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandforce Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgHandforce value = ReadRos2Rm_ros_interfacesMsgHandforce(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Handforce component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgHandforce(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgHandforce value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@hand_force;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Handforce candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgHandforce ReadRos2Rm_ros_interfacesMsgHandforce(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgHandforce();
        value.@hand_force = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handposture fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgHandposture
    {
        public ushort @posture_num = 0;
        public bool @block = false;
        public ushort @timeout = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handposture.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandposture()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handposture fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgHandpostureCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgHandposture>
    {
        public static readonly Ros2Rm_ros_interfacesMsgHandpostureCodec Instance = new Ros2Rm_ros_interfacesMsgHandpostureCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handposture.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgHandpostureCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Handposture";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handposture.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgHandposture value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgHandposture(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handposture.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandposture Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgHandposture value = ReadRos2Rm_ros_interfacesMsgHandposture(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Handposture component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgHandposture(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgHandposture value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@posture_num;
        writer.Unsigned(part0, 2);
        bool part1 = value.@block;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        ushort part2 = value.@timeout;
        writer.Unsigned(part2, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Handposture candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgHandposture ReadRos2Rm_ros_interfacesMsgHandposture(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgHandposture();
        value.@posture_num = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        value.@timeout = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handseq fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgHandseq
    {
        public ushort @seq_num = 0;
        public bool @block = false;
        public ushort @timeout = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handseq.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandseq()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handseq fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgHandseqCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgHandseq>
    {
        public static readonly Ros2Rm_ros_interfacesMsgHandseqCodec Instance = new Ros2Rm_ros_interfacesMsgHandseqCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handseq.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgHandseqCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Handseq";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handseq.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgHandseq value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgHandseq(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handseq.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandseq Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgHandseq value = ReadRos2Rm_ros_interfacesMsgHandseq(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Handseq component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgHandseq(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgHandseq value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@seq_num;
        writer.Unsigned(part0, 2);
        bool part1 = value.@block;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        ushort part2 = value.@timeout;
        writer.Unsigned(part2, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Handseq candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgHandseq ReadRos2Rm_ros_interfacesMsgHandseq(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgHandseq();
        value.@seq_num = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        value.@timeout = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handspeed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgHandspeed
    {
        public ushort @hand_speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handspeed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandspeed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handspeed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgHandspeedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgHandspeed>
    {
        public static readonly Ros2Rm_ros_interfacesMsgHandspeedCodec Instance = new Ros2Rm_ros_interfacesMsgHandspeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Handspeed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgHandspeedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Handspeed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handspeed.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgHandspeed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgHandspeed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handspeed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandspeed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgHandspeed value = ReadRos2Rm_ros_interfacesMsgHandspeed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Handspeed component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgHandspeed(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgHandspeed value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@hand_speed;
        writer.Unsigned(part0, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Handspeed candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgHandspeed ReadRos2Rm_ros_interfacesMsgHandspeed(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgHandspeed();
        value.@hand_speed = unchecked((ushort)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handstatus fields.
     * @details 5 ordered fields, canonical extent 50..50 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgHandstatus
    {
        public ushort[] @hand_angle = new ushort[6];
        public ushort[] @hand_pos = new ushort[6];
        public ushort[] @hand_state = new ushort[6];
        public ushort[] @hand_force = new ushort[6];
        public ushort @hand_err = 0;

        /**
         * @brief Check the complete finite representation of rm_ros_interfaces/msg/Handstatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandstatus()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Handstatus fields.
     * @details 5 ordered fields, canonical extent 50..50 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgHandstatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgHandstatus>
    {
        public static readonly Ros2Rm_ros_interfacesMsgHandstatusCodec Instance = new Ros2Rm_ros_interfacesMsgHandstatusCodec();

        /**
         * @brief Check the complete finite representation of rm_ros_interfaces/msg/Handstatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgHandstatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Handstatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3";
        public const int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handstatus.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgHandstatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgHandstatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handstatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgHandstatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgHandstatus value = ReadRos2Rm_ros_interfacesMsgHandstatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Handstatus component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgHandstatus(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgHandstatus value)
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
     * @brief Read one rm_ros_interfaces/msg/Handstatus candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgHandstatus ReadRos2Rm_ros_interfacesMsgHandstatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgHandstatus();
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
     * @brief Preserve all original rm_ros_interfaces/msg/Jointcurrent fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointcurrent
    {
        public float[] @joint_current = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointcurrent.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointcurrent()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointcurrent fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointcurrentCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointcurrent>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointcurrentCodec Instance = new Ros2Rm_ros_interfacesMsgJointcurrentCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointcurrent.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointcurrentCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointcurrent";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointcurrent.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointcurrent value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointcurrent(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointcurrent.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointcurrent Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointcurrent value = ReadRos2Rm_ros_interfacesMsgJointcurrent(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointcurrent component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointcurrent(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointcurrent value)
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
     * @brief Read one rm_ros_interfaces/msg/Jointcurrent candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointcurrent ReadRos2Rm_ros_interfacesMsgJointcurrent(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointcurrent();
        value.@joint_current = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_current.Length; ++index)
            value.@joint_current[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointenflag fields.
     * @details 1 ordered fields, canonical extent 4..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointenflag
    {
        public bool[] @joint_en_flag = new bool[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointenflag.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointenflag()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointenflag fields.
     * @details 1 ordered fields, canonical extent 4..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointenflagCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointenflag>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointenflagCodec Instance = new Ros2Rm_ros_interfacesMsgJointenflagCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointenflag.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointenflagCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointenflag";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 20;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointenflag.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointenflag value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointenflag(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointenflag.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointenflag Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointenflag value = ReadRos2Rm_ros_interfacesMsgJointenflag(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointenflag component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointenflag(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointenflag value)
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
     * @brief Read one rm_ros_interfaces/msg/Jointenflag candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointenflag ReadRos2Rm_ros_interfacesMsgJointenflag(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointenflag();
        value.@joint_en_flag = new bool[ReadCount(reader, 16, 1)];
        for(int index = 0; index < value.@joint_en_flag.Length; ++index)
            value.@joint_en_flag[index] = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointerrclear fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointerrclear
    {
        public byte @joint_num = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointerrclear.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointerrclear()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointerrclear fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointerrclearCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointerrclear>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointerrclearCodec Instance = new Ros2Rm_ros_interfacesMsgJointerrclearCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointerrclear.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointerrclearCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointerrclear";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointerrclear.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointerrclear value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointerrclear(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointerrclear.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointerrclear Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointerrclear value = ReadRos2Rm_ros_interfacesMsgJointerrclear(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointerrclear component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointerrclear(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointerrclear value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@joint_num;
        writer.Unsigned(part0, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Jointerrclear candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointerrclear ReadRos2Rm_ros_interfacesMsgJointerrclear(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointerrclear();
        value.@joint_num = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointerrorcode fields.
     * @details 2 ordered fields, canonical extent 5..37 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointerrorcode
    {
        public ushort[] @joint_error = new ushort[0];
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointerrorcode.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointerrorcode()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointerrorcode fields.
     * @details 2 ordered fields, canonical extent 5..37 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointerrorcodeCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointerrorcode>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointerrorcodeCodec Instance = new Ros2Rm_ros_interfacesMsgJointerrorcodeCodec();

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointerrorcode.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointerrorcodeCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointerrorcode";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 37;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointerrorcode.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointerrorcode value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointerrorcode(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointerrorcode.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointerrorcode Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointerrorcode value = ReadRos2Rm_ros_interfacesMsgJointerrorcode(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointerrorcode component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointerrorcode(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointerrorcode value)
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
        byte part1 = value.@dof;
        writer.Unsigned(part1, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Jointerrorcode candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointerrorcode ReadRos2Rm_ros_interfacesMsgJointerrorcode(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointerrorcode();
        value.@joint_error = new ushort[ReadCount(reader, 16, 2)];
        for(int index = 0; index < value.@joint_error.Length; ++index)
            value.@joint_error[index] = unchecked((ushort)reader.Unsigned(2));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointpos fields.
     * @details 4 ordered fields, canonical extent 10..74 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointpos
    {
        public float[] @joint = new float[0];
        public bool @follow = false;
        public float @expand = 0;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointpos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointpos()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointpos fields.
     * @details 4 ordered fields, canonical extent 10..74 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointposCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointpos>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointposCodec Instance = new Ros2Rm_ros_interfacesMsgJointposCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointpos.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointposCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointpos";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 74;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointpos.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointpos value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointpos(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointpos.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointpos Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointpos value = ReadRos2Rm_ros_interfacesMsgJointpos(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointpos component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgJointpos(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointpos value)
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
        bool part1 = value.@follow;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@expand;

        WriteFloat32(writer, part2);
        byte part3 = value.@dof;
        writer.Unsigned(part3, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Jointpos candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointpos ReadRos2Rm_ros_interfacesMsgJointpos(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointpos();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@follow = ReadBool(reader);
        value.@expand = ReadFloat32(reader);
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointposcustom fields.
     * @details 6 ordered fields, canonical extent 12..76 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointposcustom
    {
        public float[] @joint = new float[0];
        public bool @follow = false;
        public float @expand = 0;
        public byte @dof = 0;
        public byte @trajectory_mode = 0;
        public byte @radio = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointposcustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointposcustom()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointposcustom fields.
     * @details 6 ordered fields, canonical extent 12..76 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointposcustomCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointposcustom>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointposcustomCodec Instance = new Ros2Rm_ros_interfacesMsgJointposcustomCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointposcustom.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointposcustomCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointposcustom";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointposcustom.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointposcustom value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointposcustom(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointposcustom.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointposcustom Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointposcustom value = ReadRos2Rm_ros_interfacesMsgJointposcustom(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointposcustom component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointposcustom(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointposcustom value)
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
        bool part1 = value.@follow;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
        float part2 = value.@expand;

        WriteFloat32(writer, part2);
        byte part3 = value.@dof;
        writer.Unsigned(part3, 1);
        byte part4 = value.@trajectory_mode;
        writer.Unsigned(part4, 1);
        byte part5 = value.@radio;
        writer.Unsigned(part5, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Jointposcustom candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointposcustom ReadRos2Rm_ros_interfacesMsgJointposcustom(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointposcustom();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@follow = ReadBool(reader);
        value.@expand = ReadFloat32(reader);
        value.@dof = unchecked((byte)reader.Unsigned(1));
        value.@trajectory_mode = unchecked((byte)reader.Unsigned(1));
        value.@radio = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointposeeuler fields.
     * @details 2 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointposeeuler
    {
        public float[] @euler = new float[3];
        public float[] @position = new float[3];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointposeeuler.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointposeeuler()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointposeeuler fields.
     * @details 2 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointposeeulerCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointposeeuler>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointposeeulerCodec Instance = new Ros2Rm_ros_interfacesMsgJointposeeulerCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointposeeuler.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointposeeulerCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointposeeuler";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointposeeuler.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointposeeuler value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointposeeuler(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointposeeuler.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointposeeuler Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointposeeuler value = ReadRos2Rm_ros_interfacesMsgJointposeeuler(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointposeeuler component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointposeeuler(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointposeeuler value)
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
     * @brief Read one rm_ros_interfaces/msg/Jointposeeuler candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointposeeuler ReadRos2Rm_ros_interfacesMsgJointposeeuler(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointposeeuler();
        value.@euler = new float[3];
        for(int index = 0; index < value.@euler.Length; ++index)
            value.@euler[index] = ReadFloat32(reader);
        value.@position = new float[3];
        for(int index = 0; index < value.@position.Length; ++index)
            value.@position[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointspeed fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointspeed
    {
        public float[] @joint_speed = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointspeed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointspeed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointspeed fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointspeedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointspeed>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointspeedCodec Instance = new Ros2Rm_ros_interfacesMsgJointspeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointspeed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointspeedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointspeed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointspeed.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointspeed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointspeed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointspeed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointspeed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointspeed value = ReadRos2Rm_ros_interfacesMsgJointspeed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointspeed component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgJointspeed(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointspeed value)
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
     * @brief Read one rm_ros_interfaces/msg/Jointspeed candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointspeed ReadRos2Rm_ros_interfacesMsgJointspeed(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointspeed();
        value.@joint_speed = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_speed.Length; ++index)
            value.@joint_speed[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointteach fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointteach
    {
        public byte @num = 0;
        public byte @direction = 0;
        public byte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointteach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointteach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointteach fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointteachCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointteach>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointteachCodec Instance = new Ros2Rm_ros_interfacesMsgJointteachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointteach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointteachCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointteach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointteach.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointteach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointteach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointteach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointteach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointteach value = ReadRos2Rm_ros_interfacesMsgJointteach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointteach component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgJointteach(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointteach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@num;
        writer.Unsigned(part0, 1);
        byte part1 = value.@direction;
        writer.Unsigned(part1, 1);
        byte part2 = value.@speed;
        writer.Unsigned(part2, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Jointteach candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointteach ReadRos2Rm_ros_interfacesMsgJointteach(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointteach();
        value.@num = unchecked((byte)reader.Unsigned(1));
        value.@direction = unchecked((byte)reader.Unsigned(1));
        value.@speed = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointtemperature fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointtemperature
    {
        public float[] @joint_temperature = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointtemperature.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointtemperature()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointtemperature fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointtemperatureCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointtemperature>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointtemperatureCodec Instance = new Ros2Rm_ros_interfacesMsgJointtemperatureCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointtemperature.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointtemperatureCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointtemperature";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointtemperature.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointtemperature value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointtemperature(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointtemperature.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointtemperature Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointtemperature value = ReadRos2Rm_ros_interfacesMsgJointtemperature(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointtemperature component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointtemperature(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointtemperature value)
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
     * @brief Read one rm_ros_interfaces/msg/Jointtemperature candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointtemperature ReadRos2Rm_ros_interfacesMsgJointtemperature(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointtemperature();
        value.@joint_temperature = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_temperature.Length; ++index)
            value.@joint_temperature[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointversion fields.
     * @details 2 ordered fields, canonical extent 5..4165 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointversion
    {
        public string[] @joint_version = new string[0];
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointversion()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointversion fields.
     * @details 2 ordered fields, canonical extent 5..4165 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointversionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointversion>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointversionCodec Instance = new Ros2Rm_ros_interfacesMsgJointversionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointversionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointversion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 4165;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointversion.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointversion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointversion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointversion.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointversion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointversion value = ReadRos2Rm_ros_interfacesMsgJointversion(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointversion component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointversion(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointversion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string[] part0 = value.@joint_version;
        if(part0 == null || part0.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            string element = part0[index];

            WriteText(writer, element, 256);
        }
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Jointversion candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointversion ReadRos2Rm_ros_interfacesMsgJointversion(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointversion();
        value.@joint_version = new string[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_version.Length; ++index)
            value.@joint_version[index] = ReadText(reader, 256);
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointvoltage fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgJointvoltage
    {
        public float[] @joint_voltage = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointvoltage.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointvoltage()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Jointvoltage fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgJointvoltageCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgJointvoltage>
    {
        public static readonly Ros2Rm_ros_interfacesMsgJointvoltageCodec Instance = new Ros2Rm_ros_interfacesMsgJointvoltageCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Jointvoltage.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgJointvoltageCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Jointvoltage";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointvoltage.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgJointvoltage value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgJointvoltage(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointvoltage.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgJointvoltage Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgJointvoltage value = ReadRos2Rm_ros_interfacesMsgJointvoltage(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Jointvoltage component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgJointvoltage(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgJointvoltage value)
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
     * @brief Read one rm_ros_interfaces/msg/Jointvoltage candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgJointvoltage ReadRos2Rm_ros_interfacesMsgJointvoltage(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgJointvoltage();
        value.@joint_voltage = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint_voltage.Length; ++index)
            value.@joint_voltage[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Liftheight fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgLiftheight
    {
        public ushort @height = 0;
        public ushort @speed = 0;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Liftheight.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgLiftheight()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Liftheight fields.
     * @details 3 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgLiftheightCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgLiftheight>
    {
        public static readonly Ros2Rm_ros_interfacesMsgLiftheightCodec Instance = new Ros2Rm_ros_interfacesMsgLiftheightCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Liftheight.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgLiftheightCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Liftheight";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Liftheight.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgLiftheight value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgLiftheight(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Liftheight.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgLiftheight Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgLiftheight value = ReadRos2Rm_ros_interfacesMsgLiftheight(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Liftheight component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgLiftheight(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgLiftheight value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        ushort part0 = value.@height;
        writer.Unsigned(part0, 2);
        ushort part1 = value.@speed;
        writer.Unsigned(part1, 2);
        bool part2 = value.@block;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Liftheight candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgLiftheight ReadRos2Rm_ros_interfacesMsgLiftheight(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgLiftheight();
        value.@height = unchecked((ushort)reader.Unsigned(2));
        value.@speed = unchecked((ushort)reader.Unsigned(2));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Liftspeed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgLiftspeed
    {
        public short @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Liftspeed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgLiftspeed()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Liftspeed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgLiftspeedCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgLiftspeed>
    {
        public static readonly Ros2Rm_ros_interfacesMsgLiftspeedCodec Instance = new Ros2Rm_ros_interfacesMsgLiftspeedCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Liftspeed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgLiftspeedCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Liftspeed";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Liftspeed.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgLiftspeed value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgLiftspeed(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Liftspeed.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgLiftspeed Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgLiftspeed value = ReadRos2Rm_ros_interfacesMsgLiftspeed(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Liftspeed component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgLiftspeed(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgLiftspeed value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@speed;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Liftspeed candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgLiftspeed ReadRos2Rm_ros_interfacesMsgLiftspeed(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgLiftspeed();
        value.@speed = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Liftstate fields.
     * @details 4 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgLiftstate
    {
        public short @height = 0;
        public short @current = 0;
        public ushort @err_flag = 0;
        public short @mode = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Liftstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgLiftstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Liftstate fields.
     * @details 4 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgLiftstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgLiftstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgLiftstateCodec Instance = new Ros2Rm_ros_interfacesMsgLiftstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Liftstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgLiftstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Liftstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Liftstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgLiftstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgLiftstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Liftstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgLiftstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgLiftstate value = ReadRos2Rm_ros_interfacesMsgLiftstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Liftstate component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgLiftstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgLiftstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@height;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@current;
        writer.Unsigned(unchecked((ushort)part1), 2);
        ushort part2 = value.@err_flag;
        writer.Unsigned(part2, 2);
        short part3 = value.@mode;
        writer.Unsigned(unchecked((ushort)part3), 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Liftstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgLiftstate ReadRos2Rm_ros_interfacesMsgLiftstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgLiftstate();
        value.@height = unchecked((short)reader.Unsigned(2));
        value.@current = unchecked((short)reader.Unsigned(2));
        value.@err_flag = unchecked((ushort)reader.Unsigned(2));
        value.@mode = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Mastername fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgMastername
    {
        public string @master_name = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Mastername.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMastername()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Mastername fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgMasternameCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgMastername>
    {
        public static readonly Ros2Rm_ros_interfacesMsgMasternameCodec Instance = new Ros2Rm_ros_interfacesMsgMasternameCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Mastername.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgMasternameCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Mastername";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Mastername.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgMastername value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgMastername(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Mastername.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMastername Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgMastername value = ReadRos2Rm_ros_interfacesMsgMastername(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Mastername component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgMastername(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgMastername value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@master_name;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Mastername candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgMastername ReadRos2Rm_ros_interfacesMsgMastername(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgMastername();
        value.@master_name = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbusreaddata fields.
     * @details 2 ordered fields, canonical extent 5..69 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbusreaddata
    {
        public int[] @read_data = new int[0];
        public bool @state = false;

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbusreaddata()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbusreaddata fields.
     * @details 2 ordered fields, canonical extent 5..69 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbusreaddataCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbusreaddata>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbusreaddataCodec Instance = new Ros2Rm_ros_interfacesMsgModbusreaddataCodec();

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbusreaddataCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbusreaddata";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 69;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusreaddata.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbusreaddata value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbusreaddata(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbusreaddata Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbusreaddata value = ReadRos2Rm_ros_interfacesMsgModbusreaddata(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbusreaddata component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgModbusreaddata(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbusreaddata value)
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
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbusreaddata candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgModbusreaddata ReadRos2Rm_ros_interfacesMsgModbusreaddata(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbusreaddata();
        value.@read_data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@read_data.Length; ++index)
            value.@read_data[index] = unchecked((int)reader.Unsigned(4));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbusrtureadparams fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbusrtureadparams
    {
        public int @address = 0;
        public int @device = 0;
        public int @type = 0;
        public int @num = 0;

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtureadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbusrtureadparams()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbusrtureadparams fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbusrtureadparamsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbusrtureadparams>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbusrtureadparamsCodec Instance = new Ros2Rm_ros_interfacesMsgModbusrtureadparamsCodec();

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtureadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbusrtureadparamsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbusrtureadparams";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusrtureadparams.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbusrtureadparams value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbusrtureadparams(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtureadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbusrtureadparams Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbusrtureadparams value = ReadRos2Rm_ros_interfacesMsgModbusrtureadparams(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbusrtureadparams component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgModbusrtureadparams(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbusrtureadparams value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@device;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@type;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@num;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbusrtureadparams candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbusrtureadparams ReadRos2Rm_ros_interfacesMsgModbusrtureadparams(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbusrtureadparams();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@device = unchecked((int)reader.Unsigned(4));
        value.@type = unchecked((int)reader.Unsigned(4));
        value.@num = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbusrtuwriteparams fields.
     * @details 5 ordered fields, canonical extent 20..84 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
    {
        public int @address = 0;
        public int @device = 0;
        public int @type = 0;
        public int @num = 0;
        public int[] @data = new int[0];

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusrtuwriteparams.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbusrtuwriteparams fields.
     * @details 5 ordered fields, canonical extent 20..84 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodec Instance = new Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodec();

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusrtuwriteparams.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbusrtuwriteparamsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbusrtuwriteparams";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 84;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusrtuwriteparams.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbusrtuwriteparams(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtuwriteparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value = ReadRos2Rm_ros_interfacesMsgModbusrtuwriteparams(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbusrtuwriteparams component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgModbusrtuwriteparams(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@device;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@type;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@num;
        writer.Unsigned(unchecked((uint)part3), 4);
        int[] part4 = value.@data;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            int element = part4[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbusrtuwriteparams candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams ReadRos2Rm_ros_interfacesMsgModbusrtuwriteparams(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbusrtuwriteparams();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@device = unchecked((int)reader.Unsigned(4));
        value.@type = unchecked((int)reader.Unsigned(4));
        value.@num = unchecked((int)reader.Unsigned(4));
        value.@data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpmasterinfo fields.
     * @details 4 ordered fields, canonical extent 13..525 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
    {
        public string @master_name = "";
        public string @ip = "";
        public int @port = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Modbustcpmasterinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpmasterinfo fields.
     * @details 4 ordered fields, canonical extent 13..525 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodec Instance = new Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Modbustcpmasterinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbustcpmasterinfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpmasterinfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 525;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpmasterinfo.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbustcpmasterinfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpmasterinfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value = ReadRos2Rm_ros_interfacesMsgModbustcpmasterinfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbustcpmasterinfo component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgModbustcpmasterinfo(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@master_name;

        WriteText(writer, part0, 256);
        string part1 = value.@ip;

        WriteText(writer, part1, 256);
        int part2 = value.@port;
        writer.Unsigned(unchecked((uint)part2), 4);
        bool part3 = value.@state;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbustcpmasterinfo candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo ReadRos2Rm_ros_interfacesMsgModbustcpmasterinfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo();
        value.@master_name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpmasterlist fields.
     * @details 6 ordered fields, canonical extent 12..8668 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbustcpmasterlist
    {
        public byte @page_num = 0;
        public byte @page_size = 0;
        public byte @total_size = 0;
        public string @vague_search = "";
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[] @master_list = new _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[0];
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Modbustcpmasterlist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterlist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpmasterlist fields.
     * @details 6 ordered fields, canonical extent 12..8668 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbustcpmasterlistCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbustcpmasterlist>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbustcpmasterlistCodec Instance = new Ros2Rm_ros_interfacesMsgModbustcpmasterlistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Modbustcpmasterlist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbustcpmasterlistCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpmasterlist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 8668;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpmasterlist.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbustcpmasterlist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbustcpmasterlist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpmasterlist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterlist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbustcpmasterlist value = ReadRos2Rm_ros_interfacesMsgModbustcpmasterlist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbustcpmasterlist component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgModbustcpmasterlist(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbustcpmasterlist value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@page_num;
        writer.Unsigned(part0, 1);
        byte part1 = value.@page_size;
        writer.Unsigned(part1, 1);
        byte part2 = value.@total_size;
        writer.Unsigned(part2, 1);
        string part3 = value.@vague_search;

        WriteText(writer, part3, 256);
        _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[] part4 = value.@master_list;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo element = part4[index];

            WriteRos2Rm_ros_interfacesMsgModbustcpmasterinfo(writer, element);
        }
        bool part5 = value.@state;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbustcpmasterlist candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbustcpmasterlist ReadRos2Rm_ros_interfacesMsgModbustcpmasterlist(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbustcpmasterlist();
        value.@page_num = unchecked((byte)reader.Unsigned(1));
        value.@page_size = unchecked((byte)reader.Unsigned(1));
        value.@total_size = unchecked((byte)reader.Unsigned(1));
        value.@vague_search = ReadText(reader, 256);
        value.@master_list = new _Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[ReadCount(reader, 16, 13)];
        for(int index = 0; index < value.@master_list.Length; ++index)
            value.@master_list[index] = ReadRos2Rm_ros_interfacesMsgModbustcpmasterinfo(reader);
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpmasterupdata fields.
     * @details 4 ordered fields, canonical extent 16..784 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
    {
        public string @master_name = "";
        public string @new_master_name = "";
        public string @ip = "";
        public int @port = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Modbustcpmasterupdata.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpmasterupdata fields.
     * @details 4 ordered fields, canonical extent 16..784 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodec Instance = new Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Modbustcpmasterupdata.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbustcpmasterupdataCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpmasterupdata";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 784;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpmasterupdata.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbustcpmasterupdata(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpmasterupdata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value = ReadRos2Rm_ros_interfacesMsgModbustcpmasterupdata(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbustcpmasterupdata component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgModbustcpmasterupdata(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@master_name;

        WriteText(writer, part0, 256);
        string part1 = value.@new_master_name;

        WriteText(writer, part1, 256);
        string part2 = value.@ip;

        WriteText(writer, part2, 256);
        int part3 = value.@port;
        writer.Unsigned(unchecked((uint)part3), 4);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbustcpmasterupdata candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata ReadRos2Rm_ros_interfacesMsgModbustcpmasterupdata(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbustcpmasterupdata();
        value.@master_name = ReadText(reader, 256);
        value.@new_master_name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpreadparams fields.
     * @details 5 ordered fields, canonical extent 20..532 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbustcpreadparams
    {
        public int @address = 0;
        public string @master_name = "";
        public string @ip = "";
        public int @port = 0;
        public int @num = 0;

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpreadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpreadparams()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpreadparams fields.
     * @details 5 ordered fields, canonical extent 20..532 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbustcpreadparamsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbustcpreadparams>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbustcpreadparamsCodec Instance = new Ros2Rm_ros_interfacesMsgModbustcpreadparamsCodec();

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpreadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbustcpreadparamsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpreadparams";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 532;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpreadparams.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbustcpreadparams value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbustcpreadparams(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpreadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpreadparams Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbustcpreadparams value = ReadRos2Rm_ros_interfacesMsgModbustcpreadparams(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbustcpreadparams component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgModbustcpreadparams(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbustcpreadparams value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@master_name;

        WriteText(writer, part1, 256);
        string part2 = value.@ip;

        WriteText(writer, part2, 256);
        int part3 = value.@port;
        writer.Unsigned(unchecked((uint)part3), 4);
        int part4 = value.@num;
        writer.Unsigned(unchecked((uint)part4), 4);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbustcpreadparams candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbustcpreadparams ReadRos2Rm_ros_interfacesMsgModbustcpreadparams(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbustcpreadparams();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@master_name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@num = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpwriteparams fields.
     * @details 6 ordered fields, canonical extent 24..600 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgModbustcpwriteparams
    {
        public int @address = 0;
        public string @master_name = "";
        public string @ip = "";
        public int @port = 0;
        public int @num = 0;
        public int[] @data = new int[0];

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpwriteparams.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpwriteparams()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Modbustcpwriteparams fields.
     * @details 6 ordered fields, canonical extent 24..600 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgModbustcpwriteparams>
    {
        public static readonly Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodec Instance = new Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodec();

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpwriteparams.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgModbustcpwriteparamsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpwriteparams";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 600;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpwriteparams.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgModbustcpwriteparams value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgModbustcpwriteparams(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpwriteparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgModbustcpwriteparams Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgModbustcpwriteparams value = ReadRos2Rm_ros_interfacesMsgModbustcpwriteparams(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Modbustcpwriteparams component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgModbustcpwriteparams(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgModbustcpwriteparams value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@address;
        writer.Unsigned(unchecked((uint)part0), 4);
        string part1 = value.@master_name;

        WriteText(writer, part1, 256);
        string part2 = value.@ip;

        WriteText(writer, part2, 256);
        int part3 = value.@port;
        writer.Unsigned(unchecked((uint)part3), 4);
        int part4 = value.@num;
        writer.Unsigned(unchecked((uint)part4), 4);
        int[] part5 = value.@data;
        if(part5 == null || part5.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part5.Length, 4);
        for(int index = 0; index < part5.Length; ++index)
        {
            int element = part5[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Modbustcpwriteparams candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgModbustcpwriteparams ReadRos2Rm_ros_interfacesMsgModbustcpwriteparams(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgModbustcpwriteparams();
        value.@address = unchecked((int)reader.Unsigned(4));
        value.@master_name = ReadText(reader, 256);
        value.@ip = ReadText(reader, 256);
        value.@port = unchecked((int)reader.Unsigned(4));
        value.@num = unchecked((int)reader.Unsigned(4));
        value.@data = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@data.Length; ++index)
            value.@data[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movec fields.
     * @details 6 ordered fields, canonical extent 116..116 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgMovec
    {
        public _Ros2Geometry_msgsMsgPose @pose_mid = new _Ros2Geometry_msgsMsgPose();
        public _Ros2Geometry_msgsMsgPose @pose_end = new _Ros2Geometry_msgsMsgPose();
        public byte @speed = 0;
        public byte @trajectory_connect = 0;
        public bool @block = false;
        public byte @loop = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movec.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovec()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movec fields.
     * @details 6 ordered fields, canonical extent 116..116 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgMovecCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgMovec>
    {
        public static readonly Ros2Rm_ros_interfacesMsgMovecCodec Instance = new Ros2Rm_ros_interfacesMsgMovecCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movec.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgMovecCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Movec";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b";
        public const int MIN_WIRE_BYTES = 116, MAX_WIRE_BYTES = 116;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movec.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgMovec value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgMovec(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movec.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovec Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgMovec value = ReadRos2Rm_ros_interfacesMsgMovec(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Movec component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgMovec(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgMovec value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose_mid;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
        _Ros2Geometry_msgsMsgPose part1 = value.@pose_end;

        WriteRos2Geometry_msgsMsgPose(writer, part1);
        byte part2 = value.@speed;
        writer.Unsigned(part2, 1);
        byte part3 = value.@trajectory_connect;
        writer.Unsigned(part3, 1);
        bool part4 = value.@block;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
        byte part5 = value.@loop;
        writer.Unsigned(part5, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Movec candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgMovec ReadRos2Rm_ros_interfacesMsgMovec(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgMovec();
        value.@pose_mid = ReadRos2Geometry_msgsMsgPose(reader);
        value.@pose_end = ReadRos2Geometry_msgsMsgPose(reader);
        value.@speed = unchecked((byte)reader.Unsigned(1));
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        value.@block = ReadBool(reader);
        value.@loop = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movej fields.
     * @details 5 ordered fields, canonical extent 8..72 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgMovej
    {
        public float[] @joint = new float[0];
        public byte @speed = 0;
        public bool @block = false;
        public byte @trajectory_connect = 0;
        public byte @dof = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movej.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovej()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movej fields.
     * @details 5 ordered fields, canonical extent 8..72 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgMovejCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgMovej>
    {
        public static readonly Ros2Rm_ros_interfacesMsgMovejCodec Instance = new Ros2Rm_ros_interfacesMsgMovejCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movej.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgMovejCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Movej";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 72;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movej.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgMovej value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgMovej(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movej.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovej Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgMovej value = ReadRos2Rm_ros_interfacesMsgMovej(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Movej component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgMovej(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgMovej value)
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
        byte part1 = value.@speed;
        writer.Unsigned(part1, 1);
        bool part2 = value.@block;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
        byte part3 = value.@trajectory_connect;
        writer.Unsigned(part3, 1);
        byte part4 = value.@dof;
        writer.Unsigned(part4, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Movej candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgMovej ReadRos2Rm_ros_interfacesMsgMovej(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgMovej();
        value.@joint = new float[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@joint.Length; ++index)
            value.@joint[index] = ReadFloat32(reader);
        value.@speed = unchecked((byte)reader.Unsigned(1));
        value.@block = ReadBool(reader);
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        value.@dof = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movejp fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgMovejp
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public byte @speed = 0;
        public byte @trajectory_connect = 0;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movejp.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovejp()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movejp fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgMovejpCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgMovejp>
    {
        public static readonly Ros2Rm_ros_interfacesMsgMovejpCodec Instance = new Ros2Rm_ros_interfacesMsgMovejpCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movejp.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgMovejpCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Movejp";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72";
        public const int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movejp.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgMovejp value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgMovejp(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movejp.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovejp Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgMovejp value = ReadRos2Rm_ros_interfacesMsgMovejp(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Movejp component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgMovejp(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgMovejp value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
        byte part1 = value.@speed;
        writer.Unsigned(part1, 1);
        byte part2 = value.@trajectory_connect;
        writer.Unsigned(part2, 1);
        bool part3 = value.@block;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Movejp candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgMovejp ReadRos2Rm_ros_interfacesMsgMovejp(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgMovejp();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@speed = unchecked((byte)reader.Unsigned(1));
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movel fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgMovel
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public byte @speed = 0;
        public byte @trajectory_connect = 0;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movel.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovel()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Movel fields.
     * @details 4 ordered fields, canonical extent 59..59 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgMovelCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgMovel>
    {
        public static readonly Ros2Rm_ros_interfacesMsgMovelCodec Instance = new Ros2Rm_ros_interfacesMsgMovelCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Movel.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgMovelCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Movel";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8";
        public const int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movel.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgMovel value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgMovel(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movel.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMovel Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgMovel value = ReadRos2Rm_ros_interfacesMsgMovel(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Movel component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgMovel(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgMovel value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
        byte part1 = value.@speed;
        writer.Unsigned(part1, 1);
        byte part2 = value.@trajectory_connect;
        writer.Unsigned(part2, 1);
        bool part3 = value.@block;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Movel candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgMovel ReadRos2Rm_ros_interfacesMsgMovel(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgMovel();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@speed = unchecked((byte)reader.Unsigned(1));
        value.@trajectory_connect = unchecked((byte)reader.Unsigned(1));
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Moveloffset fields.
     * @details 6 ordered fields, canonical extent 67..67 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgMoveloffset
    {
        public _Ros2Geometry_msgsMsgPose @pose = new _Ros2Geometry_msgsMsgPose();
        public int @speed = 0;
        public int @r = 0;
        public bool @trajectory_connect = false;
        public bool @frame_type = false;
        public bool @block = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Moveloffset.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMoveloffset()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Moveloffset fields.
     * @details 6 ordered fields, canonical extent 67..67 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgMoveloffsetCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgMoveloffset>
    {
        public static readonly Ros2Rm_ros_interfacesMsgMoveloffsetCodec Instance = new Ros2Rm_ros_interfacesMsgMoveloffsetCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Moveloffset.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgMoveloffsetCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Moveloffset";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493";
        public const int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Moveloffset.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgMoveloffset value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgMoveloffset(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Moveloffset.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgMoveloffset Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgMoveloffset value = ReadRos2Rm_ros_interfacesMsgMoveloffset(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Moveloffset component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgMoveloffset(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgMoveloffset value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros2Geometry_msgsMsgPose part0 = value.@pose;

        WriteRos2Geometry_msgsMsgPose(writer, part0);
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
     * @brief Read one rm_ros_interfaces/msg/Moveloffset candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgMoveloffset ReadRos2Rm_ros_interfacesMsgMoveloffset(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgMoveloffset();
        value.@pose = ReadRos2Geometry_msgsMsgPose(reader);
        value.@speed = unchecked((int)reader.Unsigned(4));
        value.@r = unchecked((int)reader.Unsigned(4));
        value.@trajectory_connect = ReadBool(reader);
        value.@frame_type = ReadBool(reader);
        value.@block = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Ortteach fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgOrtteach
    {
        public byte @type = 0;
        public byte @direction = 0;
        public byte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Ortteach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgOrtteach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Ortteach fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgOrtteachCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgOrtteach>
    {
        public static readonly Ros2Rm_ros_interfacesMsgOrtteachCodec Instance = new Ros2Rm_ros_interfacesMsgOrtteachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Ortteach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgOrtteachCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Ortteach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Ortteach.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgOrtteach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgOrtteach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Ortteach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgOrtteach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgOrtteach value = ReadRos2Rm_ros_interfacesMsgOrtteach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Ortteach component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgOrtteach(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgOrtteach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@type;
        writer.Unsigned(part0, 1);
        byte part1 = value.@direction;
        writer.Unsigned(part1, 1);
        byte part2 = value.@speed;
        writer.Unsigned(part2, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Ortteach candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgOrtteach ReadRos2Rm_ros_interfacesMsgOrtteach(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgOrtteach();
        value.@type = unchecked((byte)reader.Unsigned(1));
        value.@direction = unchecked((byte)reader.Unsigned(1));
        value.@speed = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Posteach fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgPosteach
    {
        public byte @type = 0;
        public byte @direction = 0;
        public byte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Posteach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgPosteach()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Posteach fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgPosteachCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgPosteach>
    {
        public static readonly Ros2Rm_ros_interfacesMsgPosteachCodec Instance = new Ros2Rm_ros_interfacesMsgPosteachCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Posteach.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgPosteachCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Posteach";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Posteach.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgPosteach value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgPosteach(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Posteach.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgPosteach Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgPosteach value = ReadRos2Rm_ros_interfacesMsgPosteach(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Posteach component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgPosteach(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgPosteach value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@type;
        writer.Unsigned(part0, 1);
        byte part1 = value.@direction;
        writer.Unsigned(part1, 1);
        byte part2 = value.@speed;
        writer.Unsigned(part2, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Posteach candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgPosteach ReadRos2Rm_ros_interfacesMsgPosteach(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgPosteach();
        value.@type = unchecked((byte)reader.Unsigned(1));
        value.@direction = unchecked((byte)reader.Unsigned(1));
        value.@speed = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Programrunstate fields.
     * @details 10 ordered fields, canonical extent 37..165 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgProgramrunstate
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
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Programrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgProgramrunstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Programrunstate fields.
     * @details 10 ordered fields, canonical extent 37..165 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgProgramrunstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgProgramrunstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgProgramrunstateCodec Instance = new Ros2Rm_ros_interfacesMsgProgramrunstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Programrunstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgProgramrunstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Programrunstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964";
        public const int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 165;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Programrunstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgProgramrunstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgProgramrunstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Programrunstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgProgramrunstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgProgramrunstate value = ReadRos2Rm_ros_interfacesMsgProgramrunstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Programrunstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgProgramrunstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgProgramrunstate value)
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
        bool part9 = value.@state;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Programrunstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgProgramrunstate ReadRos2Rm_ros_interfacesMsgProgramrunstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgProgramrunstate();
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
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/RS485params fields.
     * @details 3 ordered fields, canonical extent 9..9 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgRS485params
    {
        public int @mode = 0;
        public int @baudrate = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/RS485params.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRS485params()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/RS485params fields.
     * @details 3 ordered fields, canonical extent 9..9 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgRS485paramsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgRS485params>
    {
        public static readonly Ros2Rm_ros_interfacesMsgRS485paramsCodec Instance = new Ros2Rm_ros_interfacesMsgRS485paramsCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/RS485params.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgRS485paramsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/RS485params";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/RS485params.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgRS485params value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgRS485params(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/RS485params.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRS485params Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgRS485params value = ReadRos2Rm_ros_interfacesMsgRS485params(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/RS485params component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgRS485params(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgRS485params value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@mode;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@baudrate;
        writer.Unsigned(unchecked((uint)part1), 4);
        bool part2 = value.@state;
        writer.Unsigned(part2 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/RS485params candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgRS485params ReadRos2Rm_ros_interfacesMsgRS485params(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgRS485params();
        value.@mode = unchecked((int)reader.Unsigned(4));
        value.@baudrate = unchecked((int)reader.Unsigned(4));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmerr fields.
     * @details 2 ordered fields, canonical extent 5..69 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgRmerr
    {
        public byte @err_len = 0;
        public int[] @err = new int[0];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmerr.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmerr()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmerr fields.
     * @details 2 ordered fields, canonical extent 5..69 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgRmerrCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgRmerr>
    {
        public static readonly Ros2Rm_ros_interfacesMsgRmerrCodec Instance = new Ros2Rm_ros_interfacesMsgRmerrCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmerr.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgRmerrCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Rmerr";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 69;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmerr.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgRmerr value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgRmerr(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmerr.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmerr Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgRmerr value = ReadRos2Rm_ros_interfacesMsgRmerr(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Rmerr component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgRmerr(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgRmerr value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@err_len;
        writer.Unsigned(part0, 1);
        int[] part1 = value.@err;
        if(part1 == null || part1.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part1.Length, 4);
        for(int index = 0; index < part1.Length; ++index)
        {
            int element = part1[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Rmerr candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgRmerr ReadRos2Rm_ros_interfacesMsgRmerr(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgRmerr();
        value.@err_len = unchecked((byte)reader.Unsigned(1));
        value.@err = new int[ReadCount(reader, 16, 4)];
        for(int index = 0; index < value.@err.Length; ++index)
            value.@err[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmplusbase fields.
     * @details 22 ordered fields, canonical extent 413..1437 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgRmplusbase
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
        public int[] @pos_up = new int[12];
        public int[] @pos_low = new int[12];
        public int[] @angle_up = new int[12];
        public int[] @angle_low = new int[12];
        public int[] @speed_up = new int[12];
        public int[] @speed_low = new int[12];
        public int[] @force_up = new int[12];
        public int[] @force_low = new int[12];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmplusbase.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmplusbase()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmplusbase fields.
     * @details 22 ordered fields, canonical extent 413..1437 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgRmplusbaseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgRmplusbase>
    {
        public static readonly Ros2Rm_ros_interfacesMsgRmplusbaseCodec Instance = new Ros2Rm_ros_interfacesMsgRmplusbaseCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmplusbase.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgRmplusbaseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Rmplusbase";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6";
        public const int MIN_WIRE_BYTES = 413, MAX_WIRE_BYTES = 1437;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmplusbase.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgRmplusbase value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgRmplusbase(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmplusbase.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmplusbase Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgRmplusbase value = ReadRos2Rm_ros_interfacesMsgRmplusbase(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Rmplusbase component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgRmplusbase(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgRmplusbase value)
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
        if(part14 == null || part14.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part14.Length; ++index)
        {
            int element = part14[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part15 = value.@pos_low;
        if(part15 == null || part15.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part15.Length; ++index)
        {
            int element = part15[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part16 = value.@angle_up;
        if(part16 == null || part16.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part16.Length; ++index)
        {
            int element = part16[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part17 = value.@angle_low;
        if(part17 == null || part17.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part17.Length; ++index)
        {
            int element = part17[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part18 = value.@speed_up;
        if(part18 == null || part18.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part18.Length; ++index)
        {
            int element = part18[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part19 = value.@speed_low;
        if(part19 == null || part19.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part19.Length; ++index)
        {
            int element = part19[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part20 = value.@force_up;
        if(part20 == null || part20.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part20.Length; ++index)
        {
            int element = part20[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part21 = value.@force_low;
        if(part21 == null || part21.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part21.Length; ++index)
        {
            int element = part21[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Rmplusbase candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgRmplusbase ReadRos2Rm_ros_interfacesMsgRmplusbase(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgRmplusbase();
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
        value.@pos_up = new int[12];
        for(int index = 0; index < value.@pos_up.Length; ++index)
            value.@pos_up[index] = unchecked((int)reader.Unsigned(4));
        value.@pos_low = new int[12];
        for(int index = 0; index < value.@pos_low.Length; ++index)
            value.@pos_low[index] = unchecked((int)reader.Unsigned(4));
        value.@angle_up = new int[12];
        for(int index = 0; index < value.@angle_up.Length; ++index)
            value.@angle_up[index] = unchecked((int)reader.Unsigned(4));
        value.@angle_low = new int[12];
        for(int index = 0; index < value.@angle_low.Length; ++index)
            value.@angle_low[index] = unchecked((int)reader.Unsigned(4));
        value.@speed_up = new int[12];
        for(int index = 0; index < value.@speed_up.Length; ++index)
            value.@speed_up[index] = unchecked((int)reader.Unsigned(4));
        value.@speed_low = new int[12];
        for(int index = 0; index < value.@speed_low.Length; ++index)
            value.@speed_low[index] = unchecked((int)reader.Unsigned(4));
        value.@force_up = new int[12];
        for(int index = 0; index < value.@force_up.Length; ++index)
            value.@force_up[index] = unchecked((int)reader.Unsigned(4));
        value.@force_low = new int[12];
        for(int index = 0; index < value.@force_low.Length; ++index)
            value.@force_low[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmplusstate fields.
     * @details 14 ordered fields, canonical extent 724..724 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgRmplusstate
    {
        public int @sys_state = 0;
        public int[] @dof_state = new int[12];
        public int[] @dof_err = new int[12];
        public int[] @pos = new int[12];
        public int[] @speed = new int[12];
        public int[] @angle = new int[12];
        public int[] @current = new int[12];
        public int[] @normal_force = new int[18];
        public int[] @tangential_force = new int[18];
        public int[] @tangential_force_dir = new int[18];
        public uint[] @tsa = new uint[12];
        public uint[] @tma = new uint[12];
        public int[] @touch_data = new int[18];
        public int[] @force = new int[12];

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmplusstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmplusstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmplusstate fields.
     * @details 14 ordered fields, canonical extent 724..724 bytes. Declared defaults and finite quotas
     * remain explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgRmplusstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgRmplusstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgRmplusstateCodec Instance = new Ros2Rm_ros_interfacesMsgRmplusstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmplusstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgRmplusstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Rmplusstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1";
        public const int MIN_WIRE_BYTES = 724, MAX_WIRE_BYTES = 724;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmplusstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgRmplusstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgRmplusstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmplusstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmplusstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgRmplusstate value = ReadRos2Rm_ros_interfacesMsgRmplusstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Rmplusstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgRmplusstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgRmplusstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@sys_state;
        writer.Unsigned(unchecked((uint)part0), 4);
        int[] part1 = value.@dof_state;
        if(part1 == null || part1.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part1.Length; ++index)
        {
            int element = part1[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part2 = value.@dof_err;
        if(part2 == null || part2.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part2.Length; ++index)
        {
            int element = part2[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part3 = value.@pos;
        if(part3 == null || part3.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part3.Length; ++index)
        {
            int element = part3[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part4 = value.@speed;
        if(part4 == null || part4.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part4.Length; ++index)
        {
            int element = part4[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part5 = value.@angle;
        if(part5 == null || part5.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part5.Length; ++index)
        {
            int element = part5[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part6 = value.@current;
        if(part6 == null || part6.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part6.Length; ++index)
        {
            int element = part6[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part7 = value.@normal_force;
        if(part7 == null || part7.Length != 18)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part7.Length; ++index)
        {
            int element = part7[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part8 = value.@tangential_force;
        if(part8 == null || part8.Length != 18)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part8.Length; ++index)
        {
            int element = part8[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part9 = value.@tangential_force_dir;
        if(part9 == null || part9.Length != 18)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part9.Length; ++index)
        {
            int element = part9[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        uint[] part10 = value.@tsa;
        if(part10 == null || part10.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part10.Length; ++index)
        {
            uint element = part10[index];
            writer.Unsigned(element, 4);
        }
        uint[] part11 = value.@tma;
        if(part11 == null || part11.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part11.Length; ++index)
        {
            uint element = part11[index];
            writer.Unsigned(element, 4);
        }
        int[] part12 = value.@touch_data;
        if(part12 == null || part12.Length != 18)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part12.Length; ++index)
        {
            int element = part12[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
        int[] part13 = value.@force;
        if(part13 == null || part13.Length != 12)
            throw new ArgumentException("fixed/sequence count bound");
        for(int index = 0; index < part13.Length; ++index)
        {
            int element = part13[index];
            writer.Unsigned(unchecked((uint)element), 4);
        }
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Rmplusstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgRmplusstate ReadRos2Rm_ros_interfacesMsgRmplusstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgRmplusstate();
        value.@sys_state = unchecked((int)reader.Unsigned(4));
        value.@dof_state = new int[12];
        for(int index = 0; index < value.@dof_state.Length; ++index)
            value.@dof_state[index] = unchecked((int)reader.Unsigned(4));
        value.@dof_err = new int[12];
        for(int index = 0; index < value.@dof_err.Length; ++index)
            value.@dof_err[index] = unchecked((int)reader.Unsigned(4));
        value.@pos = new int[12];
        for(int index = 0; index < value.@pos.Length; ++index)
            value.@pos[index] = unchecked((int)reader.Unsigned(4));
        value.@speed = new int[12];
        for(int index = 0; index < value.@speed.Length; ++index)
            value.@speed[index] = unchecked((int)reader.Unsigned(4));
        value.@angle = new int[12];
        for(int index = 0; index < value.@angle.Length; ++index)
            value.@angle[index] = unchecked((int)reader.Unsigned(4));
        value.@current = new int[12];
        for(int index = 0; index < value.@current.Length; ++index)
            value.@current[index] = unchecked((int)reader.Unsigned(4));
        value.@normal_force = new int[18];
        for(int index = 0; index < value.@normal_force.Length; ++index)
            value.@normal_force[index] = unchecked((int)reader.Unsigned(4));
        value.@tangential_force = new int[18];
        for(int index = 0; index < value.@tangential_force.Length; ++index)
            value.@tangential_force[index] = unchecked((int)reader.Unsigned(4));
        value.@tangential_force_dir = new int[18];
        for(int index = 0; index < value.@tangential_force_dir.Length; ++index)
            value.@tangential_force_dir[index] = unchecked((int)reader.Unsigned(4));
        value.@tsa = new uint[12];
        for(int index = 0; index < value.@tsa.Length; ++index)
            value.@tsa[index] = unchecked((uint)reader.Unsigned(4));
        value.@tma = new uint[12];
        for(int index = 0; index < value.@tma.Length; ++index)
            value.@tma[index] = unchecked((uint)reader.Unsigned(4));
        value.@touch_data = new int[18];
        for(int index = 0; index < value.@touch_data.Length; ++index)
            value.@touch_data[index] = unchecked((int)reader.Unsigned(4));
        value.@force = new int[12];
        for(int index = 0; index < value.@force.Length; ++index)
            value.@force[index] = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmversion fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgRmversion
    {
        public string @version = "";

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmversion()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Rmversion fields.
     * @details 1 ordered fields, canonical extent 4..260 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgRmversionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgRmversion>
    {
        public static readonly Ros2Rm_ros_interfacesMsgRmversionCodec Instance = new Ros2Rm_ros_interfacesMsgRmversionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Rmversion.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgRmversionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Rmversion";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmversion.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgRmversion value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgRmversion(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmversion.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRmversion Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgRmversion value = ReadRos2Rm_ros_interfacesMsgRmversion(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Rmversion component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgRmversion(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgRmversion value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@version;

        WriteText(writer, part0, 256);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Rmversion candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgRmversion ReadRos2Rm_ros_interfacesMsgRmversion(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgRmversion();
        value.@version = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/RobotInfo fields.
     * @details 5 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgRobotInfo
    {
        public byte @arm_dof = 0;
        public byte @arm_model = 0;
        public byte @force_type = 0;
        public byte @robot_controller_version = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/RobotInfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRobotInfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/RobotInfo fields.
     * @details 5 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgRobotInfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgRobotInfo>
    {
        public static readonly Ros2Rm_ros_interfacesMsgRobotInfoCodec Instance = new Ros2Rm_ros_interfacesMsgRobotInfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/RobotInfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgRobotInfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/RobotInfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/RobotInfo.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgRobotInfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgRobotInfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/RobotInfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgRobotInfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgRobotInfo value = ReadRos2Rm_ros_interfacesMsgRobotInfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/RobotInfo component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgRobotInfo(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgRobotInfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@arm_dof;
        writer.Unsigned(part0, 1);
        byte part1 = value.@arm_model;
        writer.Unsigned(part1, 1);
        byte part2 = value.@force_type;
        writer.Unsigned(part2, 1);
        byte part3 = value.@robot_controller_version;
        writer.Unsigned(part3, 1);
        bool part4 = value.@state;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/RobotInfo candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgRobotInfo ReadRos2Rm_ros_interfacesMsgRobotInfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgRobotInfo();
        value.@arm_dof = unchecked((byte)reader.Unsigned(1));
        value.@arm_model = unchecked((byte)reader.Unsigned(1));
        value.@force_type = unchecked((byte)reader.Unsigned(1));
        value.@robot_controller_version = unchecked((byte)reader.Unsigned(1));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Sendproject fields.
     * @details 8 ordered fields, canonical extent 32..288 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgSendproject
    {
        public string @project_path = "";
        public int @project_path_len = 0;
        public int @plan_speed = 0;
        public int @only_save = 0;
        public int @save_id = 0;
        public int @step_flag = 0;
        public int @auto_start = 0;
        public int @project_type = 0;

        /**
         * @brief Issue one explicit operation for rm_ros_interfaces/msg/Sendproject.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSendproject()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Sendproject fields.
     * @details 8 ordered fields, canonical extent 32..288 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgSendprojectCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgSendproject>
    {
        public static readonly Ros2Rm_ros_interfacesMsgSendprojectCodec Instance = new Ros2Rm_ros_interfacesMsgSendprojectCodec();

        /**
         * @brief Issue one explicit operation for rm_ros_interfaces/msg/Sendproject.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgSendprojectCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Sendproject";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330";
        public const int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 288;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Sendproject.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgSendproject value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgSendproject(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Sendproject.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSendproject Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgSendproject value = ReadRos2Rm_ros_interfacesMsgSendproject(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Sendproject component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgSendproject(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgSendproject value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@project_path;

        WriteText(writer, part0, 256);
        int part1 = value.@project_path_len;
        writer.Unsigned(unchecked((uint)part1), 4);
        int part2 = value.@plan_speed;
        writer.Unsigned(unchecked((uint)part2), 4);
        int part3 = value.@only_save;
        writer.Unsigned(unchecked((uint)part3), 4);
        int part4 = value.@save_id;
        writer.Unsigned(unchecked((uint)part4), 4);
        int part5 = value.@step_flag;
        writer.Unsigned(unchecked((uint)part5), 4);
        int part6 = value.@auto_start;
        writer.Unsigned(unchecked((uint)part6), 4);
        int part7 = value.@project_type;
        writer.Unsigned(unchecked((uint)part7), 4);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Sendproject candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgSendproject ReadRos2Rm_ros_interfacesMsgSendproject(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgSendproject();
        value.@project_path = ReadText(reader, 256);
        value.@project_path_len = unchecked((int)reader.Unsigned(4));
        value.@plan_speed = unchecked((int)reader.Unsigned(4));
        value.@only_save = unchecked((int)reader.Unsigned(4));
        value.@save_id = unchecked((int)reader.Unsigned(4));
        value.@step_flag = unchecked((int)reader.Unsigned(4));
        value.@auto_start = unchecked((int)reader.Unsigned(4));
        value.@project_type = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Setforceposition fields.
     * @details 4 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgSetforceposition
    {
        public byte @sensor = 0;
        public byte @mode = 0;
        public byte @direction = 0;
        public short @n = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Setforceposition.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSetforceposition()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Setforceposition fields.
     * @details 4 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgSetforcepositionCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgSetforceposition>
    {
        public static readonly Ros2Rm_ros_interfacesMsgSetforcepositionCodec Instance = new Ros2Rm_ros_interfacesMsgSetforcepositionCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Setforceposition.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgSetforcepositionCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Setforceposition";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Setforceposition.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgSetforceposition value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgSetforceposition(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Setforceposition.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSetforceposition Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgSetforceposition value = ReadRos2Rm_ros_interfacesMsgSetforceposition(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Setforceposition component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgSetforceposition(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgSetforceposition value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte part0 = value.@sensor;
        writer.Unsigned(part0, 1);
        byte part1 = value.@mode;
        writer.Unsigned(part1, 1);
        byte part2 = value.@direction;
        writer.Unsigned(part2, 1);
        short part3 = value.@n;
        writer.Unsigned(unchecked((ushort)part3), 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Setforceposition candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgSetforceposition ReadRos2Rm_ros_interfacesMsgSetforceposition(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgSetforceposition();
        value.@sensor = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((byte)reader.Unsigned(1));
        value.@direction = unchecked((byte)reader.Unsigned(1));
        value.@n = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Setrealtimepush fields.
     * @details 12 ordered fields, canonical extent 18..274 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgSetrealtimepush
    {
        public ushort @cycle = 0;
        public ushort @port = 0;
        public ushort @force_coordinate = 0;
        public string @ip = "";
        public bool @aloha_state_enable = false;
        public bool @arm_current_status_enable = false;
        public bool @expand_state_enable = false;
        public bool @hand_enable = false;
        public bool @joint_speed_enable = false;
        public bool @lift_state_enable = false;
        public bool @plus_base_enable = false;
        public bool @plus_state_enable = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Setrealtimepush.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSetrealtimepush()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Setrealtimepush fields.
     * @details 12 ordered fields, canonical extent 18..274 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgSetrealtimepushCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgSetrealtimepush>
    {
        public static readonly Ros2Rm_ros_interfacesMsgSetrealtimepushCodec Instance = new Ros2Rm_ros_interfacesMsgSetrealtimepushCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Setrealtimepush.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgSetrealtimepushCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Setrealtimepush";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 274;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Setrealtimepush.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgSetrealtimepush value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgSetrealtimepush(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Setrealtimepush.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSetrealtimepush Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgSetrealtimepush value = ReadRos2Rm_ros_interfacesMsgSetrealtimepush(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Setrealtimepush component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgSetrealtimepush(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgSetrealtimepush value)
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
        bool part8 = value.@joint_speed_enable;
        writer.Unsigned(part8 ? 1UL : 0UL, 1);
        bool part9 = value.@lift_state_enable;
        writer.Unsigned(part9 ? 1UL : 0UL, 1);
        bool part10 = value.@plus_base_enable;
        writer.Unsigned(part10 ? 1UL : 0UL, 1);
        bool part11 = value.@plus_state_enable;
        writer.Unsigned(part11 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Setrealtimepush candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgSetrealtimepush ReadRos2Rm_ros_interfacesMsgSetrealtimepush(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgSetrealtimepush();
        value.@cycle = unchecked((ushort)reader.Unsigned(2));
        value.@port = unchecked((ushort)reader.Unsigned(2));
        value.@force_coordinate = unchecked((ushort)reader.Unsigned(2));
        value.@ip = ReadText(reader, 256);
        value.@aloha_state_enable = ReadBool(reader);
        value.@arm_current_status_enable = ReadBool(reader);
        value.@expand_state_enable = ReadBool(reader);
        value.@hand_enable = ReadBool(reader);
        value.@joint_speed_enable = ReadBool(reader);
        value.@lift_state_enable = ReadBool(reader);
        value.@plus_base_enable = ReadBool(reader);
        value.@plus_state_enable = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Sixforce fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgSixforce
    {
        public float @force_fx = 0;
        public float @force_fy = 0;
        public float @force_fz = 0;
        public float @force_mx = 0;
        public float @force_my = 0;
        public float @force_mz = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Sixforce.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSixforce()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Sixforce fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgSixforceCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgSixforce>
    {
        public static readonly Ros2Rm_ros_interfacesMsgSixforceCodec Instance = new Ros2Rm_ros_interfacesMsgSixforceCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Sixforce.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgSixforceCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Sixforce";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Sixforce.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgSixforce value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgSixforce(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Sixforce.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgSixforce Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgSixforce value = ReadRos2Rm_ros_interfacesMsgSixforce(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Sixforce component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgSixforce(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgSixforce value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@force_fx;

        WriteFloat32(writer, part0);
        float part1 = value.@force_fy;

        WriteFloat32(writer, part1);
        float part2 = value.@force_fz;

        WriteFloat32(writer, part2);
        float part3 = value.@force_mx;

        WriteFloat32(writer, part3);
        float part4 = value.@force_my;

        WriteFloat32(writer, part4);
        float part5 = value.@force_mz;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Sixforce candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgSixforce ReadRos2Rm_ros_interfacesMsgSixforce(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgSixforce();
        value.@force_fx = ReadFloat32(reader);
        value.@force_fy = ReadFloat32(reader);
        value.@force_fz = ReadFloat32(reader);
        value.@force_mx = ReadFloat32(reader);
        value.@force_my = ReadFloat32(reader);
        value.@force_mz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Stop fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgStop
    {
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Stop.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgStop()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Stop fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgStopCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgStop>
    {
        public static readonly Ros2Rm_ros_interfacesMsgStopCodec Instance = new Ros2Rm_ros_interfacesMsgStopCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Stop.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgStopCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Stop";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Stop.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgStop value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgStop(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Stop.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgStop Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgStop value = ReadRos2Rm_ros_interfacesMsgStop(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Stop component into checked staging storage.
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
    private static void WriteRos2Rm_ros_interfacesMsgStop(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgStop value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@state;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Stop candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgStop ReadRos2Rm_ros_interfacesMsgStop(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgStop();
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Toolsoftwareversionv4 fields.
     * @details 2 ordered fields, canonical extent 5..261 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
    {
        public string @tool_version = "";
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Toolsoftwareversionv4.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Toolsoftwareversionv4 fields.
     * @details 2 ordered fields, canonical extent 5..261 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Codec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4>
    {
        public static readonly Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Codec Instance = new Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Codec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Toolsoftwareversionv4.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgToolsoftwareversionv4Codec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Toolsoftwareversionv4";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Toolsoftwareversionv4.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgToolsoftwareversionv4(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Toolsoftwareversionv4.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value = ReadRos2Rm_ros_interfacesMsgToolsoftwareversionv4(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Toolsoftwareversionv4 component into checked
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
    private static void WriteRos2Rm_ros_interfacesMsgToolsoftwareversionv4(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@tool_version;

        WriteText(writer, part0, 256);
        bool part1 = value.@state;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Toolsoftwareversionv4 candidate through the checked canonical
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
    private static _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 ReadRos2Rm_ros_interfacesMsgToolsoftwareversionv4(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgToolsoftwareversionv4();
        value.@tool_version = ReadText(reader, 256);
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Trajectoryinfo fields.
     * @details 4 ordered fields, canonical extent 13..525 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgTrajectoryinfo
    {
        public string @name = "";
        public string @create_time = "";
        public int @point_num = 0;
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Trajectoryinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgTrajectoryinfo()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Trajectoryinfo fields.
     * @details 4 ordered fields, canonical extent 13..525 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgTrajectoryinfoCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgTrajectoryinfo>
    {
        public static readonly Ros2Rm_ros_interfacesMsgTrajectoryinfoCodec Instance = new Ros2Rm_ros_interfacesMsgTrajectoryinfoCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Trajectoryinfo.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgTrajectoryinfoCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Trajectoryinfo";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 525;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Trajectoryinfo.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgTrajectoryinfo value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgTrajectoryinfo(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Trajectoryinfo.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgTrajectoryinfo Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgTrajectoryinfo value = ReadRos2Rm_ros_interfacesMsgTrajectoryinfo(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Trajectoryinfo component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgTrajectoryinfo(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgTrajectoryinfo value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@name;

        WriteText(writer, part0, 256);
        string part1 = value.@create_time;

        WriteText(writer, part1, 256);
        int part2 = value.@point_num;
        writer.Unsigned(unchecked((uint)part2), 4);
        bool part3 = value.@state;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Trajectoryinfo candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgTrajectoryinfo ReadRos2Rm_ros_interfacesMsgTrajectoryinfo(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgTrajectoryinfo();
        value.@name = ReadText(reader, 256);
        value.@create_time = ReadText(reader, 256);
        value.@point_num = unchecked((int)reader.Unsigned(4));
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Trajectorylist fields.
     * @details 6 ordered fields, canonical extent 21..8677 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgTrajectorylist
    {
        public int @page_num = 0;
        public int @page_size = 0;
        public int @total_size = 0;
        public string @vague_search = "";
        public _Ros2Rm_ros_interfacesMsgTrajectoryinfo[] @tra_list = new _Ros2Rm_ros_interfacesMsgTrajectoryinfo[0];
        public bool @state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Trajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgTrajectorylist()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Trajectorylist fields.
     * @details 6 ordered fields, canonical extent 21..8677 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgTrajectorylistCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgTrajectorylist>
    {
        public static readonly Ros2Rm_ros_interfacesMsgTrajectorylistCodec Instance = new Ros2Rm_ros_interfacesMsgTrajectorylistCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Trajectorylist.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgTrajectorylistCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Trajectorylist";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f";
        public const int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 8677;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Trajectorylist.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgTrajectorylist value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgTrajectorylist(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Trajectorylist.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgTrajectorylist Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgTrajectorylist value = ReadRos2Rm_ros_interfacesMsgTrajectorylist(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Trajectorylist component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgTrajectorylist(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgTrajectorylist value)
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
        _Ros2Rm_ros_interfacesMsgTrajectoryinfo[] part4 = value.@tra_list;
        if(part4 == null || part4.Length > 16)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part4.Length, 4);
        for(int index = 0; index < part4.Length; ++index)
        {
            _Ros2Rm_ros_interfacesMsgTrajectoryinfo element = part4[index];

            WriteRos2Rm_ros_interfacesMsgTrajectoryinfo(writer, element);
        }
        bool part5 = value.@state;
        writer.Unsigned(part5 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Trajectorylist candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgTrajectorylist ReadRos2Rm_ros_interfacesMsgTrajectorylist(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgTrajectorylist();
        value.@page_num = unchecked((int)reader.Unsigned(4));
        value.@page_size = unchecked((int)reader.Unsigned(4));
        value.@total_size = unchecked((int)reader.Unsigned(4));
        value.@vague_search = ReadText(reader, 256);
        value.@tra_list = new _Ros2Rm_ros_interfacesMsgTrajectoryinfo[ReadCount(reader, 16, 13)];
        for(int index = 0; index < value.@tra_list.Length; ++index)
            value.@tra_list[index] = ReadRos2Rm_ros_interfacesMsgTrajectoryinfo(reader);
        value.@state = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Udpexpandstate fields.
     * @details 6 ordered fields, canonical extent 14..14 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgUdpexpandstate
    {
        public int @pos = 0;
        public int @current = 0;
        public ushort @err_flag = 0;
        public bool @en_flag = false;
        public byte @joint_id = 0;
        public short @mode = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Udpexpandstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgUdpexpandstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Udpexpandstate fields.
     * @details 6 ordered fields, canonical extent 14..14 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgUdpexpandstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgUdpexpandstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgUdpexpandstateCodec Instance = new Ros2Rm_ros_interfacesMsgUdpexpandstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Udpexpandstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgUdpexpandstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Udpexpandstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5";
        public const int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 14;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Udpexpandstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgUdpexpandstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgUdpexpandstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Udpexpandstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgUdpexpandstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgUdpexpandstate value = ReadRos2Rm_ros_interfacesMsgUdpexpandstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Udpexpandstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgUdpexpandstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgUdpexpandstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@pos;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@current;
        writer.Unsigned(unchecked((uint)part1), 4);
        ushort part2 = value.@err_flag;
        writer.Unsigned(part2, 2);
        bool part3 = value.@en_flag;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        byte part4 = value.@joint_id;
        writer.Unsigned(part4, 1);
        short part5 = value.@mode;
        writer.Unsigned(unchecked((ushort)part5), 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Udpexpandstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgUdpexpandstate ReadRos2Rm_ros_interfacesMsgUdpexpandstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgUdpexpandstate();
        value.@pos = unchecked((int)reader.Unsigned(4));
        value.@current = unchecked((int)reader.Unsigned(4));
        value.@err_flag = unchecked((ushort)reader.Unsigned(2));
        value.@en_flag = ReadBool(reader);
        value.@joint_id = unchecked((byte)reader.Unsigned(1));
        value.@mode = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Udpliftstate fields.
     * @details 5 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Rm_ros_interfacesMsgUdpliftstate
    {
        public int @height = 0;
        public float @pos = 0;
        public short @current = 0;
        public bool @en_flag = false;
        public ushort @err_flag = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Udpliftstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgUdpliftstate()
        {
        }
    }

    /**
     * @brief Preserve all original rm_ros_interfaces/msg/Udpliftstate fields.
     * @details 5 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Rm_ros_interfacesMsgUdpliftstateCodec : global::Uwvm.RosWasm.ICodec<_Ros2Rm_ros_interfacesMsgUdpliftstate>
    {
        public static readonly Ros2Rm_ros_interfacesMsgUdpliftstateCodec Instance = new Ros2Rm_ros_interfacesMsgUdpliftstateCodec();

        /**
         * @brief Maintain the bounded local protocol state for rm_ros_interfaces/msg/Udpliftstate.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Rm_ros_interfacesMsgUdpliftstateCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "rm_ros_interfaces/msg/Udpliftstate";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;

        /**
         * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Udpliftstate.
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
        public byte[] Encode(_Ros2Rm_ros_interfacesMsgUdpliftstate value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Rm_ros_interfacesMsgUdpliftstate(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Udpliftstate.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Rm_ros_interfacesMsgUdpliftstate Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Rm_ros_interfacesMsgUdpliftstate value = ReadRos2Rm_ros_interfacesMsgUdpliftstate(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated rm_ros_interfaces/msg/Udpliftstate component into checked staging
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
    private static void WriteRos2Rm_ros_interfacesMsgUdpliftstate(_Codecs.Writer writer, _Ros2Rm_ros_interfacesMsgUdpliftstate value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@height;
        writer.Unsigned(unchecked((uint)part0), 4);
        float part1 = value.@pos;

        WriteFloat32(writer, part1);
        short part2 = value.@current;
        writer.Unsigned(unchecked((ushort)part2), 2);
        bool part3 = value.@en_flag;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        ushort part4 = value.@err_flag;
        writer.Unsigned(part4, 2);
    }

    /**
     * @brief Read one rm_ros_interfaces/msg/Udpliftstate candidate through the checked canonical cursor.
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
    private static _Ros2Rm_ros_interfacesMsgUdpliftstate ReadRos2Rm_ros_interfacesMsgUdpliftstate(_Codecs.Reader reader)
    {
        var value = new _Ros2Rm_ros_interfacesMsgUdpliftstate();
        value.@height = unchecked((int)reader.Unsigned(4));
        value.@pos = ReadFloat32(reader);
        value.@current = unchecked((short)reader.Unsigned(2));
        value.@en_flag = ReadBool(reader);
        value.@err_flag = unchecked((ushort)reader.Unsigned(2));
        return value;
    }
}
