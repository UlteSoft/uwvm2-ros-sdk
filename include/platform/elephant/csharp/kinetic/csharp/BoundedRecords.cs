/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original elephant/kinetic canonical value domain.
 * @details The selected domain contains 36 complete record/components and 116 original fields. Declared
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
namespace Uwvm.Elephant.kinetic;

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
     * @brief Preserve all original mycobot_communication/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationMycobotAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationMycobotAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationMycobotAngles>
    {
        public static readonly Ros1Mycobot_communicationMycobotAnglesCodec Instance = new Ros1Mycobot_communicationMycobotAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationMycobotAnglesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/MycobotAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/MycobotAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationMycobotAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationMycobotAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/MycobotAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationMycobotAngles value = ReadRos1Mycobot_communicationMycobotAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/MycobotAngles component into checked staging
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
    private static void WriteRos1Mycobot_communicationMycobotAngles(_Codecs.Writer writer, _Ros1Mycobot_communicationMycobotAngles value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
        float part4 = value.@joint_5;

        WriteFloat32(writer, part4);
        float part5 = value.@joint_6;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one mycobot_communication/MycobotAngles candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationMycobotAngles ReadRos1Mycobot_communicationMycobotAngles(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationMycobotAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationMycobotCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationMycobotCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationMycobotCoords>
    {
        public static readonly Ros1Mycobot_communicationMycobotCoordsCodec Instance = new Ros1Mycobot_communicationMycobotCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationMycobotCoordsCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/MycobotCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/MycobotCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationMycobotCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationMycobotCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/MycobotCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationMycobotCoords value = ReadRos1Mycobot_communicationMycobotCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/MycobotCoords component into checked staging
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
    private static void WriteRos1Mycobot_communicationMycobotCoords(_Codecs.Writer writer, _Ros1Mycobot_communicationMycobotCoords value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
        float part4 = value.@ry;

        WriteFloat32(writer, part4);
        float part5 = value.@rz;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one mycobot_communication/MycobotCoords candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationMycobotCoords ReadRos1Mycobot_communicationMycobotCoords(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationMycobotCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationMycobotGripperStatus
    {
        public bool @Status = false;

        /**
         * @brief Check the complete finite representation of mycobot_communication/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationMycobotGripperStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationMycobotGripperStatus>
    {
        public static readonly Ros1Mycobot_communicationMycobotGripperStatusCodec Instance = new Ros1Mycobot_communicationMycobotGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of mycobot_communication/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationMycobotGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/MycobotGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/MycobotGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationMycobotGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationMycobotGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/MycobotGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationMycobotGripperStatus value = ReadRos1Mycobot_communicationMycobotGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/MycobotGripperStatus component into checked
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
    private static void WriteRos1Mycobot_communicationMycobotGripperStatus(_Codecs.Writer writer, _Ros1Mycobot_communicationMycobotGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_communication/MycobotGripperStatus candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationMycobotGripperStatus ReadRos1Mycobot_communicationMycobotGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationMycobotGripperStatus();
        value.@Status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationMycobotPumpStatus
    {
        public bool @Status = false;
        public sbyte @Pin1 = 0;
        public sbyte @Pin2 = 0;

        /**
         * @brief Check the complete finite representation of mycobot_communication/MycobotPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotPumpStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationMycobotPumpStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationMycobotPumpStatus>
    {
        public static readonly Ros1Mycobot_communicationMycobotPumpStatusCodec Instance = new Ros1Mycobot_communicationMycobotPumpStatusCodec();

        /**
         * @brief Check the complete finite representation of mycobot_communication/MycobotPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationMycobotPumpStatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/MycobotPumpStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/MycobotPumpStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationMycobotPumpStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationMycobotPumpStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/MycobotPumpStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotPumpStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationMycobotPumpStatus value = ReadRos1Mycobot_communicationMycobotPumpStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/MycobotPumpStatus component into checked staging
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
    private static void WriteRos1Mycobot_communicationMycobotPumpStatus(_Codecs.Writer writer, _Ros1Mycobot_communicationMycobotPumpStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@Pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@Pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mycobot_communication/MycobotPumpStatus candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationMycobotPumpStatus ReadRos1Mycobot_communicationMycobotPumpStatus(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationMycobotPumpStatus();
        value.@Status = ReadBool(reader);
        value.@Pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@Pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationMycobotSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationMycobotSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationMycobotSetAngles>
    {
        public static readonly Ros1Mycobot_communicationMycobotSetAnglesCodec Instance = new Ros1Mycobot_communicationMycobotSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationMycobotSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/MycobotSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/MycobotSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationMycobotSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationMycobotSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/MycobotSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationMycobotSetAngles value = ReadRos1Mycobot_communicationMycobotSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/MycobotSetAngles component into checked staging
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
    private static void WriteRos1Mycobot_communicationMycobotSetAngles(_Codecs.Writer writer, _Ros1Mycobot_communicationMycobotSetAngles value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
        float part4 = value.@joint_5;

        WriteFloat32(writer, part4);
        float part5 = value.@joint_6;

        WriteFloat32(writer, part5);
        sbyte part6 = value.@speed;
        writer.Unsigned(unchecked((byte)part6), 1);
    }

    /**
     * @brief Read one mycobot_communication/MycobotSetAngles candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationMycobotSetAngles ReadRos1Mycobot_communicationMycobotSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationMycobotSetAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationMycobotSetCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;
        public sbyte @speed = 0;
        public sbyte @model = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/MycobotSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationMycobotSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationMycobotSetCoords>
    {
        public static readonly Ros1Mycobot_communicationMycobotSetCoordsCodec Instance = new Ros1Mycobot_communicationMycobotSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationMycobotSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/MycobotSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/MycobotSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationMycobotSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationMycobotSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/MycobotSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationMycobotSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationMycobotSetCoords value = ReadRos1Mycobot_communicationMycobotSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/MycobotSetCoords component into checked staging
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
    private static void WriteRos1Mycobot_communicationMycobotSetCoords(_Codecs.Writer writer, _Ros1Mycobot_communicationMycobotSetCoords value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
        float part4 = value.@ry;

        WriteFloat32(writer, part4);
        float part5 = value.@rz;

        WriteFloat32(writer, part5);
        sbyte part6 = value.@speed;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@model;
        writer.Unsigned(unchecked((byte)part7), 1);
    }

    /**
     * @brief Read one mycobot_communication/MycobotSetCoords candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationMycobotSetCoords ReadRos1Mycobot_communicationMycobotSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationMycobotSetCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        value.@model = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/GetAnglesRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationGetAnglesRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetAnglesRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/GetAnglesRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationGetAnglesRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationGetAnglesRequest>
    {
        public static readonly Ros1Mycobot_communicationGetAnglesRequestCodec Instance = new Ros1Mycobot_communicationGetAnglesRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationGetAnglesRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/GetAnglesRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/GetAnglesRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationGetAnglesRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationGetAnglesRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/GetAnglesRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetAnglesRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationGetAnglesRequest value = ReadRos1Mycobot_communicationGetAnglesRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/GetAnglesRequest component into checked staging
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
    private static void WriteRos1Mycobot_communicationGetAnglesRequest(_Codecs.Writer writer, _Ros1Mycobot_communicationGetAnglesRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_communication/GetAnglesRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationGetAnglesRequest ReadRos1Mycobot_communicationGetAnglesRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationGetAnglesRequest();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/GetAnglesResponse fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationGetAnglesResponse
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetAnglesResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/GetAnglesResponse fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationGetAnglesResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationGetAnglesResponse>
    {
        public static readonly Ros1Mycobot_communicationGetAnglesResponseCodec Instance = new Ros1Mycobot_communicationGetAnglesResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationGetAnglesResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/GetAnglesResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/GetAnglesResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationGetAnglesResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationGetAnglesResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/GetAnglesResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetAnglesResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationGetAnglesResponse value = ReadRos1Mycobot_communicationGetAnglesResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/GetAnglesResponse component into checked staging
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
    private static void WriteRos1Mycobot_communicationGetAnglesResponse(_Codecs.Writer writer, _Ros1Mycobot_communicationGetAnglesResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
        float part4 = value.@joint_5;

        WriteFloat32(writer, part4);
        float part5 = value.@joint_6;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one mycobot_communication/GetAnglesResponse candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationGetAnglesResponse ReadRos1Mycobot_communicationGetAnglesResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationGetAnglesResponse();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/GetCoordsRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationGetCoordsRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetCoordsRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/GetCoordsRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationGetCoordsRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationGetCoordsRequest>
    {
        public static readonly Ros1Mycobot_communicationGetCoordsRequestCodec Instance = new Ros1Mycobot_communicationGetCoordsRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationGetCoordsRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/GetCoordsRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/GetCoordsRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationGetCoordsRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationGetCoordsRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/GetCoordsRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetCoordsRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationGetCoordsRequest value = ReadRos1Mycobot_communicationGetCoordsRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/GetCoordsRequest component into checked staging
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
    private static void WriteRos1Mycobot_communicationGetCoordsRequest(_Codecs.Writer writer, _Ros1Mycobot_communicationGetCoordsRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_communication/GetCoordsRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationGetCoordsRequest ReadRos1Mycobot_communicationGetCoordsRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationGetCoordsRequest();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/GetCoordsResponse fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationGetCoordsResponse
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetCoordsResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/GetCoordsResponse fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationGetCoordsResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationGetCoordsResponse>
    {
        public static readonly Ros1Mycobot_communicationGetCoordsResponseCodec Instance = new Ros1Mycobot_communicationGetCoordsResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/GetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationGetCoordsResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/GetCoordsResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/GetCoordsResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationGetCoordsResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationGetCoordsResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/GetCoordsResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGetCoordsResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationGetCoordsResponse value = ReadRos1Mycobot_communicationGetCoordsResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/GetCoordsResponse component into checked staging
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
    private static void WriteRos1Mycobot_communicationGetCoordsResponse(_Codecs.Writer writer, _Ros1Mycobot_communicationGetCoordsResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
        float part4 = value.@ry;

        WriteFloat32(writer, part4);
        float part5 = value.@rz;

        WriteFloat32(writer, part5);
    }

    /**
     * @brief Read one mycobot_communication/GetCoordsResponse candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationGetCoordsResponse ReadRos1Mycobot_communicationGetCoordsResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationGetCoordsResponse();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/GripperStatusRequest fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationGripperStatusRequest
    {
        public bool @Status = false;

        /**
         * @brief Check the complete finite representation of mycobot_communication/GripperStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGripperStatusRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/GripperStatusRequest fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationGripperStatusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationGripperStatusRequest>
    {
        public static readonly Ros1Mycobot_communicationGripperStatusRequestCodec Instance = new Ros1Mycobot_communicationGripperStatusRequestCodec();

        /**
         * @brief Check the complete finite representation of mycobot_communication/GripperStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationGripperStatusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/GripperStatusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/GripperStatusRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationGripperStatusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationGripperStatusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/GripperStatusRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGripperStatusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationGripperStatusRequest value = ReadRos1Mycobot_communicationGripperStatusRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/GripperStatusRequest component into checked
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
    private static void WriteRos1Mycobot_communicationGripperStatusRequest(_Codecs.Writer writer, _Ros1Mycobot_communicationGripperStatusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_communication/GripperStatusRequest candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationGripperStatusRequest ReadRos1Mycobot_communicationGripperStatusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationGripperStatusRequest();
        value.@Status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/GripperStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationGripperStatusResponse
    {
        public bool @Flag = false;

        /**
         * @brief Check the complete finite representation of mycobot_communication/GripperStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGripperStatusResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/GripperStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationGripperStatusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationGripperStatusResponse>
    {
        public static readonly Ros1Mycobot_communicationGripperStatusResponseCodec Instance = new Ros1Mycobot_communicationGripperStatusResponseCodec();

        /**
         * @brief Check the complete finite representation of mycobot_communication/GripperStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationGripperStatusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/GripperStatusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/GripperStatusResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationGripperStatusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationGripperStatusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/GripperStatusResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationGripperStatusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationGripperStatusResponse value = ReadRos1Mycobot_communicationGripperStatusResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/GripperStatusResponse component into checked
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
    private static void WriteRos1Mycobot_communicationGripperStatusResponse(_Codecs.Writer writer, _Ros1Mycobot_communicationGripperStatusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_communication/GripperStatusResponse candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationGripperStatusResponse ReadRos1Mycobot_communicationGripperStatusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationGripperStatusResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/PumpStatusRequest fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationPumpStatusRequest
    {
        public bool @Status = false;
        public sbyte @Pin1 = 0;
        public sbyte @Pin2 = 0;

        /**
         * @brief Check the complete finite representation of mycobot_communication/PumpStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationPumpStatusRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/PumpStatusRequest fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationPumpStatusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationPumpStatusRequest>
    {
        public static readonly Ros1Mycobot_communicationPumpStatusRequestCodec Instance = new Ros1Mycobot_communicationPumpStatusRequestCodec();

        /**
         * @brief Check the complete finite representation of mycobot_communication/PumpStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationPumpStatusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/PumpStatusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/PumpStatusRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationPumpStatusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationPumpStatusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/PumpStatusRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationPumpStatusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationPumpStatusRequest value = ReadRos1Mycobot_communicationPumpStatusRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/PumpStatusRequest component into checked staging
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
    private static void WriteRos1Mycobot_communicationPumpStatusRequest(_Codecs.Writer writer, _Ros1Mycobot_communicationPumpStatusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@Pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@Pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mycobot_communication/PumpStatusRequest candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationPumpStatusRequest ReadRos1Mycobot_communicationPumpStatusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationPumpStatusRequest();
        value.@Status = ReadBool(reader);
        value.@Pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@Pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/PumpStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationPumpStatusResponse
    {
        public bool @Flag = false;

        /**
         * @brief Check the complete finite representation of mycobot_communication/PumpStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationPumpStatusResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/PumpStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationPumpStatusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationPumpStatusResponse>
    {
        public static readonly Ros1Mycobot_communicationPumpStatusResponseCodec Instance = new Ros1Mycobot_communicationPumpStatusResponseCodec();

        /**
         * @brief Check the complete finite representation of mycobot_communication/PumpStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationPumpStatusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/PumpStatusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/PumpStatusResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationPumpStatusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationPumpStatusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/PumpStatusResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationPumpStatusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationPumpStatusResponse value = ReadRos1Mycobot_communicationPumpStatusResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/PumpStatusResponse component into checked staging
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
    private static void WriteRos1Mycobot_communicationPumpStatusResponse(_Codecs.Writer writer, _Ros1Mycobot_communicationPumpStatusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_communication/PumpStatusResponse candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationPumpStatusResponse ReadRos1Mycobot_communicationPumpStatusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationPumpStatusResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/SetAnglesRequest fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationSetAnglesRequest
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetAnglesRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/SetAnglesRequest fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationSetAnglesRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationSetAnglesRequest>
    {
        public static readonly Ros1Mycobot_communicationSetAnglesRequestCodec Instance = new Ros1Mycobot_communicationSetAnglesRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationSetAnglesRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/SetAnglesRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/SetAnglesRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationSetAnglesRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationSetAnglesRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/SetAnglesRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetAnglesRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationSetAnglesRequest value = ReadRos1Mycobot_communicationSetAnglesRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/SetAnglesRequest component into checked staging
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
    private static void WriteRos1Mycobot_communicationSetAnglesRequest(_Codecs.Writer writer, _Ros1Mycobot_communicationSetAnglesRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
        float part4 = value.@joint_5;

        WriteFloat32(writer, part4);
        float part5 = value.@joint_6;

        WriteFloat32(writer, part5);
        sbyte part6 = value.@speed;
        writer.Unsigned(unchecked((byte)part6), 1);
    }

    /**
     * @brief Read one mycobot_communication/SetAnglesRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationSetAnglesRequest ReadRos1Mycobot_communicationSetAnglesRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationSetAnglesRequest();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/SetAnglesResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationSetAnglesResponse
    {
        public bool @Flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetAnglesResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/SetAnglesResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationSetAnglesResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationSetAnglesResponse>
    {
        public static readonly Ros1Mycobot_communicationSetAnglesResponseCodec Instance = new Ros1Mycobot_communicationSetAnglesResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationSetAnglesResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/SetAnglesResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/SetAnglesResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationSetAnglesResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationSetAnglesResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/SetAnglesResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetAnglesResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationSetAnglesResponse value = ReadRos1Mycobot_communicationSetAnglesResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/SetAnglesResponse component into checked staging
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
    private static void WriteRos1Mycobot_communicationSetAnglesResponse(_Codecs.Writer writer, _Ros1Mycobot_communicationSetAnglesResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_communication/SetAnglesResponse candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationSetAnglesResponse ReadRos1Mycobot_communicationSetAnglesResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationSetAnglesResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/SetCoordsRequest fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationSetCoordsRequest
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;
        public sbyte @speed = 0;
        public sbyte @model = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetCoordsRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/SetCoordsRequest fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationSetCoordsRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationSetCoordsRequest>
    {
        public static readonly Ros1Mycobot_communicationSetCoordsRequestCodec Instance = new Ros1Mycobot_communicationSetCoordsRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationSetCoordsRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/SetCoordsRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/SetCoordsRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationSetCoordsRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationSetCoordsRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/SetCoordsRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetCoordsRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationSetCoordsRequest value = ReadRos1Mycobot_communicationSetCoordsRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/SetCoordsRequest component into checked staging
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
    private static void WriteRos1Mycobot_communicationSetCoordsRequest(_Codecs.Writer writer, _Ros1Mycobot_communicationSetCoordsRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
        float part4 = value.@ry;

        WriteFloat32(writer, part4);
        float part5 = value.@rz;

        WriteFloat32(writer, part5);
        sbyte part6 = value.@speed;
        writer.Unsigned(unchecked((byte)part6), 1);
        sbyte part7 = value.@model;
        writer.Unsigned(unchecked((byte)part7), 1);
    }

    /**
     * @brief Read one mycobot_communication/SetCoordsRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mycobot_communicationSetCoordsRequest ReadRos1Mycobot_communicationSetCoordsRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationSetCoordsRequest();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        value.@model = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_communication/SetCoordsResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mycobot_communicationSetCoordsResponse
    {
        public bool @Flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetCoordsResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_communication/SetCoordsResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mycobot_communicationSetCoordsResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mycobot_communicationSetCoordsResponse>
    {
        public static readonly Ros1Mycobot_communicationSetCoordsResponseCodec Instance = new Ros1Mycobot_communicationSetCoordsResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_communication/SetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mycobot_communicationSetCoordsResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mycobot_communication/SetCoordsResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_communication/SetCoordsResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mycobot_communicationSetCoordsResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mycobot_communicationSetCoordsResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_communication/SetCoordsResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mycobot_communicationSetCoordsResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mycobot_communicationSetCoordsResponse value = ReadRos1Mycobot_communicationSetCoordsResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_communication/SetCoordsResponse component into checked staging
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
    private static void WriteRos1Mycobot_communicationSetCoordsResponse(_Codecs.Writer writer, _Ros1Mycobot_communicationSetCoordsResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_communication/SetCoordsResponse candidate through the checked canonical
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
    private static _Ros1Mycobot_communicationSetCoordsResponse ReadRos1Mycobot_communicationSetCoordsResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mycobot_communicationSetCoordsResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalAngles fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationMypalAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalAngles fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationMypalAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationMypalAngles>
    {
        public static readonly Ros1Mypalletizer_communicationMypalAnglesCodec Instance = new Ros1Mypalletizer_communicationMypalAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationMypalAnglesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/MypalAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/MypalAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationMypalAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationMypalAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/MypalAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationMypalAngles value = ReadRos1Mypalletizer_communicationMypalAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/MypalAngles component into checked staging
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
    private static void WriteRos1Mypalletizer_communicationMypalAngles(_Codecs.Writer writer, _Ros1Mypalletizer_communicationMypalAngles value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one mypalletizer_communication/MypalAngles candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mypalletizer_communicationMypalAngles ReadRos1Mypalletizer_communicationMypalAngles(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationMypalAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalCoords fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationMypalCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalCoords fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationMypalCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationMypalCoords>
    {
        public static readonly Ros1Mypalletizer_communicationMypalCoordsCodec Instance = new Ros1Mypalletizer_communicationMypalCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationMypalCoordsCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/MypalCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/MypalCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationMypalCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationMypalCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/MypalCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationMypalCoords value = ReadRos1Mypalletizer_communicationMypalCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/MypalCoords component into checked staging
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
    private static void WriteRos1Mypalletizer_communicationMypalCoords(_Codecs.Writer writer, _Ros1Mypalletizer_communicationMypalCoords value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one mypalletizer_communication/MypalCoords candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mypalletizer_communicationMypalCoords ReadRos1Mypalletizer_communicationMypalCoords(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationMypalCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationMypalGripperStatus
    {
        public bool @Status = false;

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/MypalGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationMypalGripperStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationMypalGripperStatus>
    {
        public static readonly Ros1Mypalletizer_communicationMypalGripperStatusCodec Instance = new Ros1Mypalletizer_communicationMypalGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/MypalGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationMypalGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/MypalGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/MypalGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationMypalGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationMypalGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/MypalGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationMypalGripperStatus value = ReadRos1Mypalletizer_communicationMypalGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/MypalGripperStatus component into checked
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
    private static void WriteRos1Mypalletizer_communicationMypalGripperStatus(_Codecs.Writer writer, _Ros1Mypalletizer_communicationMypalGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_communication/MypalGripperStatus candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationMypalGripperStatus ReadRos1Mypalletizer_communicationMypalGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationMypalGripperStatus();
        value.@Status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationMypalPumpStatus
    {
        public bool @Status = false;
        public sbyte @Pin1 = 0;
        public sbyte @Pin2 = 0;

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/MypalPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalPumpStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationMypalPumpStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationMypalPumpStatus>
    {
        public static readonly Ros1Mypalletizer_communicationMypalPumpStatusCodec Instance = new Ros1Mypalletizer_communicationMypalPumpStatusCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/MypalPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationMypalPumpStatusCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/MypalPumpStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/MypalPumpStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationMypalPumpStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationMypalPumpStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/MypalPumpStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalPumpStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationMypalPumpStatus value = ReadRos1Mypalletizer_communicationMypalPumpStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/MypalPumpStatus component into checked
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
    private static void WriteRos1Mypalletizer_communicationMypalPumpStatus(_Codecs.Writer writer, _Ros1Mypalletizer_communicationMypalPumpStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@Pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@Pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mypalletizer_communication/MypalPumpStatus candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationMypalPumpStatus ReadRos1Mypalletizer_communicationMypalPumpStatus(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationMypalPumpStatus();
        value.@Status = ReadBool(reader);
        value.@Pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@Pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalSetAngles fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationMypalSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalSetAngles fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationMypalSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationMypalSetAngles>
    {
        public static readonly Ros1Mypalletizer_communicationMypalSetAnglesCodec Instance = new Ros1Mypalletizer_communicationMypalSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationMypalSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/MypalSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/MypalSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationMypalSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationMypalSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/MypalSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationMypalSetAngles value = ReadRos1Mypalletizer_communicationMypalSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/MypalSetAngles component into checked staging
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
    private static void WriteRos1Mypalletizer_communicationMypalSetAngles(_Codecs.Writer writer, _Ros1Mypalletizer_communicationMypalSetAngles value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
        sbyte part4 = value.@speed;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    /**
     * @brief Read one mypalletizer_communication/MypalSetAngles candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationMypalSetAngles ReadRos1Mypalletizer_communicationMypalSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationMypalSetAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalSetCoords fields.
     * @details 6 ordered fields, canonical extent 18..18 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationMypalSetCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public sbyte @speed = 0;
        public sbyte @model = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/MypalSetCoords fields.
     * @details 6 ordered fields, canonical extent 18..18 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationMypalSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationMypalSetCoords>
    {
        public static readonly Ros1Mypalletizer_communicationMypalSetCoordsCodec Instance = new Ros1Mypalletizer_communicationMypalSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/MypalSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationMypalSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/MypalSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/MypalSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationMypalSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationMypalSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/MypalSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationMypalSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationMypalSetCoords value = ReadRos1Mypalletizer_communicationMypalSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/MypalSetCoords component into checked staging
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
    private static void WriteRos1Mypalletizer_communicationMypalSetCoords(_Codecs.Writer writer, _Ros1Mypalletizer_communicationMypalSetCoords value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
        sbyte part4 = value.@speed;
        writer.Unsigned(unchecked((byte)part4), 1);
        sbyte part5 = value.@model;
        writer.Unsigned(unchecked((byte)part5), 1);
    }

    /**
     * @brief Read one mypalletizer_communication/MypalSetCoords candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationMypalSetCoords ReadRos1Mypalletizer_communicationMypalSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationMypalSetCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        value.@model = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetAnglesRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationGetAnglesRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetAnglesRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetAnglesRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationGetAnglesRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationGetAnglesRequest>
    {
        public static readonly Ros1Mypalletizer_communicationGetAnglesRequestCodec Instance = new Ros1Mypalletizer_communicationGetAnglesRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationGetAnglesRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/GetAnglesRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/GetAnglesRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationGetAnglesRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationGetAnglesRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/GetAnglesRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetAnglesRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationGetAnglesRequest value = ReadRos1Mypalletizer_communicationGetAnglesRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/GetAnglesRequest component into checked
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
    private static void WriteRos1Mypalletizer_communicationGetAnglesRequest(_Codecs.Writer writer, _Ros1Mypalletizer_communicationGetAnglesRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mypalletizer_communication/GetAnglesRequest candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationGetAnglesRequest ReadRos1Mypalletizer_communicationGetAnglesRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationGetAnglesRequest();
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetAnglesResponse fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationGetAnglesResponse
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetAnglesResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetAnglesResponse fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationGetAnglesResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationGetAnglesResponse>
    {
        public static readonly Ros1Mypalletizer_communicationGetAnglesResponseCodec Instance = new Ros1Mypalletizer_communicationGetAnglesResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationGetAnglesResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/GetAnglesResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/GetAnglesResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationGetAnglesResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationGetAnglesResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/GetAnglesResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetAnglesResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationGetAnglesResponse value = ReadRos1Mypalletizer_communicationGetAnglesResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/GetAnglesResponse component into checked
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
    private static void WriteRos1Mypalletizer_communicationGetAnglesResponse(_Codecs.Writer writer, _Ros1Mypalletizer_communicationGetAnglesResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one mypalletizer_communication/GetAnglesResponse candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationGetAnglesResponse ReadRos1Mypalletizer_communicationGetAnglesResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationGetAnglesResponse();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetCoordsRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationGetCoordsRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetCoordsRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetCoordsRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationGetCoordsRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationGetCoordsRequest>
    {
        public static readonly Ros1Mypalletizer_communicationGetCoordsRequestCodec Instance = new Ros1Mypalletizer_communicationGetCoordsRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationGetCoordsRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/GetCoordsRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/GetCoordsRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationGetCoordsRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationGetCoordsRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/GetCoordsRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetCoordsRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationGetCoordsRequest value = ReadRos1Mypalletizer_communicationGetCoordsRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/GetCoordsRequest component into checked
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
    private static void WriteRos1Mypalletizer_communicationGetCoordsRequest(_Codecs.Writer writer, _Ros1Mypalletizer_communicationGetCoordsRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mypalletizer_communication/GetCoordsRequest candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationGetCoordsRequest ReadRos1Mypalletizer_communicationGetCoordsRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationGetCoordsRequest();
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetCoordsResponse fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationGetCoordsResponse
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetCoordsResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GetCoordsResponse fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationGetCoordsResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationGetCoordsResponse>
    {
        public static readonly Ros1Mypalletizer_communicationGetCoordsResponseCodec Instance = new Ros1Mypalletizer_communicationGetCoordsResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/GetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationGetCoordsResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/GetCoordsResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/GetCoordsResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationGetCoordsResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationGetCoordsResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/GetCoordsResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGetCoordsResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationGetCoordsResponse value = ReadRos1Mypalletizer_communicationGetCoordsResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/GetCoordsResponse component into checked
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
    private static void WriteRos1Mypalletizer_communicationGetCoordsResponse(_Codecs.Writer writer, _Ros1Mypalletizer_communicationGetCoordsResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one mypalletizer_communication/GetCoordsResponse candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationGetCoordsResponse ReadRos1Mypalletizer_communicationGetCoordsResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationGetCoordsResponse();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GripperStatusRequest fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationGripperStatusRequest
    {
        public bool @Status = false;

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_communication/GripperStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGripperStatusRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GripperStatusRequest fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationGripperStatusRequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationGripperStatusRequest>
    {
        public static readonly Ros1Mypalletizer_communicationGripperStatusRequestCodec Instance = new Ros1Mypalletizer_communicationGripperStatusRequestCodec();

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_communication/GripperStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationGripperStatusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/GripperStatusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/GripperStatusRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationGripperStatusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationGripperStatusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/GripperStatusRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGripperStatusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationGripperStatusRequest value = ReadRos1Mypalletizer_communicationGripperStatusRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/GripperStatusRequest component into checked
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
    private static void WriteRos1Mypalletizer_communicationGripperStatusRequest(_Codecs.Writer writer,
                                                                                _Ros1Mypalletizer_communicationGripperStatusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_communication/GripperStatusRequest candidate through the checked
     * canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mypalletizer_communicationGripperStatusRequest ReadRos1Mypalletizer_communicationGripperStatusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationGripperStatusRequest();
        value.@Status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GripperStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationGripperStatusResponse
    {
        public bool @Flag = false;

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_communication/GripperStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGripperStatusResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/GripperStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationGripperStatusResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationGripperStatusResponse>
    {
        public static readonly Ros1Mypalletizer_communicationGripperStatusResponseCodec Instance =
            new Ros1Mypalletizer_communicationGripperStatusResponseCodec();

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_communication/GripperStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationGripperStatusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/GripperStatusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/GripperStatusResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationGripperStatusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationGripperStatusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/GripperStatusResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationGripperStatusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationGripperStatusResponse value = ReadRos1Mypalletizer_communicationGripperStatusResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/GripperStatusResponse component into checked
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
    private static void WriteRos1Mypalletizer_communicationGripperStatusResponse(_Codecs.Writer writer,
                                                                                 _Ros1Mypalletizer_communicationGripperStatusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_communication/GripperStatusResponse candidate through the checked
     * canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Mypalletizer_communicationGripperStatusResponse ReadRos1Mypalletizer_communicationGripperStatusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationGripperStatusResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/PumpStatusRequest fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationPumpStatusRequest
    {
        public bool @Status = false;
        public sbyte @Pin1 = 0;
        public sbyte @Pin2 = 0;

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/PumpStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationPumpStatusRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/PumpStatusRequest fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationPumpStatusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationPumpStatusRequest>
    {
        public static readonly Ros1Mypalletizer_communicationPumpStatusRequestCodec Instance = new Ros1Mypalletizer_communicationPumpStatusRequestCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/PumpStatusRequest.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationPumpStatusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/PumpStatusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/PumpStatusRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationPumpStatusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationPumpStatusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/PumpStatusRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationPumpStatusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationPumpStatusRequest value = ReadRos1Mypalletizer_communicationPumpStatusRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/PumpStatusRequest component into checked
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
    private static void WriteRos1Mypalletizer_communicationPumpStatusRequest(_Codecs.Writer writer, _Ros1Mypalletizer_communicationPumpStatusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@Pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@Pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mypalletizer_communication/PumpStatusRequest candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationPumpStatusRequest ReadRos1Mypalletizer_communicationPumpStatusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationPumpStatusRequest();
        value.@Status = ReadBool(reader);
        value.@Pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@Pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/PumpStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationPumpStatusResponse
    {
        public bool @Flag = false;

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/PumpStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationPumpStatusResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/PumpStatusResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationPumpStatusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationPumpStatusResponse>
    {
        public static readonly Ros1Mypalletizer_communicationPumpStatusResponseCodec Instance = new Ros1Mypalletizer_communicationPumpStatusResponseCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_communication/PumpStatusResponse.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationPumpStatusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/PumpStatusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/PumpStatusResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationPumpStatusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationPumpStatusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/PumpStatusResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationPumpStatusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationPumpStatusResponse value = ReadRos1Mypalletizer_communicationPumpStatusResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/PumpStatusResponse component into checked
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
    private static void WriteRos1Mypalletizer_communicationPumpStatusResponse(_Codecs.Writer writer, _Ros1Mypalletizer_communicationPumpStatusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_communication/PumpStatusResponse candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationPumpStatusResponse ReadRos1Mypalletizer_communicationPumpStatusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationPumpStatusResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetAnglesRequest fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationSetAnglesRequest
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetAnglesRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetAnglesRequest fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationSetAnglesRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationSetAnglesRequest>
    {
        public static readonly Ros1Mypalletizer_communicationSetAnglesRequestCodec Instance = new Ros1Mypalletizer_communicationSetAnglesRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetAnglesRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationSetAnglesRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/SetAnglesRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/SetAnglesRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationSetAnglesRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationSetAnglesRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/SetAnglesRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetAnglesRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationSetAnglesRequest value = ReadRos1Mypalletizer_communicationSetAnglesRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/SetAnglesRequest component into checked
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
    private static void WriteRos1Mypalletizer_communicationSetAnglesRequest(_Codecs.Writer writer, _Ros1Mypalletizer_communicationSetAnglesRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@joint_1;

        WriteFloat32(writer, part0);
        float part1 = value.@joint_2;

        WriteFloat32(writer, part1);
        float part2 = value.@joint_3;

        WriteFloat32(writer, part2);
        float part3 = value.@joint_4;

        WriteFloat32(writer, part3);
        sbyte part4 = value.@speed;
        writer.Unsigned(unchecked((byte)part4), 1);
    }

    /**
     * @brief Read one mypalletizer_communication/SetAnglesRequest candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationSetAnglesRequest ReadRos1Mypalletizer_communicationSetAnglesRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationSetAnglesRequest();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetAnglesResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationSetAnglesResponse
    {
        public bool @Flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetAnglesResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetAnglesResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationSetAnglesResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationSetAnglesResponse>
    {
        public static readonly Ros1Mypalletizer_communicationSetAnglesResponseCodec Instance = new Ros1Mypalletizer_communicationSetAnglesResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetAnglesResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationSetAnglesResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/SetAnglesResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/SetAnglesResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationSetAnglesResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationSetAnglesResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/SetAnglesResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetAnglesResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationSetAnglesResponse value = ReadRos1Mypalletizer_communicationSetAnglesResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/SetAnglesResponse component into checked
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
    private static void WriteRos1Mypalletizer_communicationSetAnglesResponse(_Codecs.Writer writer, _Ros1Mypalletizer_communicationSetAnglesResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_communication/SetAnglesResponse candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationSetAnglesResponse ReadRos1Mypalletizer_communicationSetAnglesResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationSetAnglesResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetCoordsRequest fields.
     * @details 6 ordered fields, canonical extent 18..18 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationSetCoordsRequest
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public sbyte @speed = 0;
        public sbyte @model = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetCoordsRequest()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetCoordsRequest fields.
     * @details 6 ordered fields, canonical extent 18..18 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationSetCoordsRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationSetCoordsRequest>
    {
        public static readonly Ros1Mypalletizer_communicationSetCoordsRequestCodec Instance = new Ros1Mypalletizer_communicationSetCoordsRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetCoordsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationSetCoordsRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/SetCoordsRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
        public const int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/SetCoordsRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationSetCoordsRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationSetCoordsRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/SetCoordsRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetCoordsRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationSetCoordsRequest value = ReadRos1Mypalletizer_communicationSetCoordsRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/SetCoordsRequest component into checked
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
    private static void WriteRos1Mypalletizer_communicationSetCoordsRequest(_Codecs.Writer writer, _Ros1Mypalletizer_communicationSetCoordsRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@x;

        WriteFloat32(writer, part0);
        float part1 = value.@y;

        WriteFloat32(writer, part1);
        float part2 = value.@z;

        WriteFloat32(writer, part2);
        float part3 = value.@rx;

        WriteFloat32(writer, part3);
        sbyte part4 = value.@speed;
        writer.Unsigned(unchecked((byte)part4), 1);
        sbyte part5 = value.@model;
        writer.Unsigned(unchecked((byte)part5), 1);
    }

    /**
     * @brief Read one mypalletizer_communication/SetCoordsRequest candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationSetCoordsRequest ReadRos1Mypalletizer_communicationSetCoordsRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationSetCoordsRequest();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        value.@model = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetCoordsResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Mypalletizer_communicationSetCoordsResponse
    {
        public bool @Flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetCoordsResponse()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_communication/SetCoordsResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Mypalletizer_communicationSetCoordsResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Mypalletizer_communicationSetCoordsResponse>
    {
        public static readonly Ros1Mypalletizer_communicationSetCoordsResponseCodec Instance = new Ros1Mypalletizer_communicationSetCoordsResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_communication/SetCoordsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Mypalletizer_communicationSetCoordsResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "mypalletizer_communication/SetCoordsResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_communication/SetCoordsResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Mypalletizer_communicationSetCoordsResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Mypalletizer_communicationSetCoordsResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_communication/SetCoordsResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Mypalletizer_communicationSetCoordsResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Mypalletizer_communicationSetCoordsResponse value = ReadRos1Mypalletizer_communicationSetCoordsResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_communication/SetCoordsResponse component into checked
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
    private static void WriteRos1Mypalletizer_communicationSetCoordsResponse(_Codecs.Writer writer, _Ros1Mypalletizer_communicationSetCoordsResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@Flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_communication/SetCoordsResponse candidate through the checked canonical
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
    private static _Ros1Mypalletizer_communicationSetCoordsResponse ReadRos1Mypalletizer_communicationSetCoordsResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Mypalletizer_communicationSetCoordsResponse();
        value.@Flag = ReadBool(reader);
        return value;
    }
}
