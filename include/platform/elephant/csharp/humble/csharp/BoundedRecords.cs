/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original elephant/humble canonical value domain.
 * @details The selected domain contains 88 complete record/components and 280 original fields. Declared
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
namespace Uwvm.Elephant.humble;

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
     * @brief Preserve all original mecharm_interfaces/msg/MecharmAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesMsgMecharmAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesMsgMecharmAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesMsgMecharmAngles>
    {
        public static readonly Ros2Mecharm_interfacesMsgMecharmAnglesCodec Instance = new Ros2Mecharm_interfacesMsgMecharmAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesMsgMecharmAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/msg/MecharmAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesMsgMecharmAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesMsgMecharmAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesMsgMecharmAngles value = ReadRos2Mecharm_interfacesMsgMecharmAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/msg/MecharmAngles component into checked staging
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
    private static void WriteRos2Mecharm_interfacesMsgMecharmAngles(_Codecs.Writer writer, _Ros2Mecharm_interfacesMsgMecharmAngles value)
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
     * @brief Read one mecharm_interfaces/msg/MecharmAngles candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Mecharm_interfacesMsgMecharmAngles ReadRos2Mecharm_interfacesMsgMecharmAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesMsgMecharmAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesMsgMecharmCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesMsgMecharmCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesMsgMecharmCoords>
    {
        public static readonly Ros2Mecharm_interfacesMsgMecharmCoordsCodec Instance = new Ros2Mecharm_interfacesMsgMecharmCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesMsgMecharmCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/msg/MecharmCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesMsgMecharmCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesMsgMecharmCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesMsgMecharmCoords value = ReadRos2Mecharm_interfacesMsgMecharmCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/msg/MecharmCoords component into checked staging
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
    private static void WriteRos2Mecharm_interfacesMsgMecharmCoords(_Codecs.Writer writer, _Ros2Mecharm_interfacesMsgMecharmCoords value)
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
     * @brief Read one mecharm_interfaces/msg/MecharmCoords candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Mecharm_interfacesMsgMecharmCoords ReadRos2Mecharm_interfacesMsgMecharmCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesMsgMecharmCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesMsgMecharmGripperStatus
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/msg/MecharmGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesMsgMecharmGripperStatus>
    {
        public static readonly Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec Instance = new Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/msg/MecharmGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesMsgMecharmGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/msg/MecharmGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesMsgMecharmGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesMsgMecharmGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesMsgMecharmGripperStatus value = ReadRos2Mecharm_interfacesMsgMecharmGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/msg/MecharmGripperStatus component into checked
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
    private static void WriteRos2Mecharm_interfacesMsgMecharmGripperStatus(_Codecs.Writer writer, _Ros2Mecharm_interfacesMsgMecharmGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mecharm_interfaces/msg/MecharmGripperStatus candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesMsgMecharmGripperStatus ReadRos2Mecharm_interfacesMsgMecharmGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesMsgMecharmGripperStatus();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesMsgMecharmPumpStatus
    {
        public bool @status = false;
        public sbyte @pin1 = 0;
        public sbyte @pin2 = 0;

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/msg/MecharmPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmPumpStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesMsgMecharmPumpStatus>
    {
        public static readonly Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec Instance = new Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec();

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/msg/MecharmPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesMsgMecharmPumpStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/msg/MecharmPumpStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmPumpStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesMsgMecharmPumpStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesMsgMecharmPumpStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmPumpStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmPumpStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesMsgMecharmPumpStatus value = ReadRos2Mecharm_interfacesMsgMecharmPumpStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/msg/MecharmPumpStatus component into checked staging
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
    private static void WriteRos2Mecharm_interfacesMsgMecharmPumpStatus(_Codecs.Writer writer, _Ros2Mecharm_interfacesMsgMecharmPumpStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mecharm_interfaces/msg/MecharmPumpStatus candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesMsgMecharmPumpStatus ReadRos2Mecharm_interfacesMsgMecharmPumpStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesMsgMecharmPumpStatus();
        value.@status = ReadBool(reader);
        value.@pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesMsgMecharmSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesMsgMecharmSetAngles>
    {
        public static readonly Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec Instance = new Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesMsgMecharmSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/msg/MecharmSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesMsgMecharmSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesMsgMecharmSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesMsgMecharmSetAngles value = ReadRos2Mecharm_interfacesMsgMecharmSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/msg/MecharmSetAngles component into checked staging
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
    private static void WriteRos2Mecharm_interfacesMsgMecharmSetAngles(_Codecs.Writer writer, _Ros2Mecharm_interfacesMsgMecharmSetAngles value)
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
     * @brief Read one mecharm_interfaces/msg/MecharmSetAngles candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesMsgMecharmSetAngles ReadRos2Mecharm_interfacesMsgMecharmSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesMsgMecharmSetAngles();
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
     * @brief Preserve all original mecharm_interfaces/msg/MecharmSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesMsgMecharmSetCoords
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
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/msg/MecharmSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesMsgMecharmSetCoords>
    {
        public static readonly Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec Instance = new Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/msg/MecharmSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesMsgMecharmSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/msg/MecharmSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesMsgMecharmSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesMsgMecharmSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesMsgMecharmSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesMsgMecharmSetCoords value = ReadRos2Mecharm_interfacesMsgMecharmSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/msg/MecharmSetCoords component into checked staging
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
    private static void WriteRos2Mecharm_interfacesMsgMecharmSetCoords(_Codecs.Writer writer, _Ros2Mecharm_interfacesMsgMecharmSetCoords value)
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
     * @brief Read one mecharm_interfaces/msg/MecharmSetCoords candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesMsgMecharmSetCoords ReadRos2Mecharm_interfacesMsgMecharmSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesMsgMecharmSetCoords();
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
     * @brief Preserve all original mecharm_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvGetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvGetAngles_Request>
    {
        public static readonly Ros2Mecharm_interfacesSrvGetAngles_RequestCodec Instance = new Ros2Mecharm_interfacesSrvGetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvGetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/GetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvGetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvGetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvGetAngles_Request value = ReadRos2Mecharm_interfacesSrvGetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/GetAngles_Request component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvGetAngles_Request(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mecharm_interfaces/srv/GetAngles_Request candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvGetAngles_Request ReadRos2Mecharm_interfacesSrvGetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvGetAngles_Request();
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetAngles_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvGetAngles_Response
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetAngles_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvGetAngles_Response>
    {
        public static readonly Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec Instance = new Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvGetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/GetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvGetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvGetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvGetAngles_Response value = ReadRos2Mecharm_interfacesSrvGetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/GetAngles_Response component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvGetAngles_Response(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvGetAngles_Response value)
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
     * @brief Read one mecharm_interfaces/srv/GetAngles_Response candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvGetAngles_Response ReadRos2Mecharm_interfacesSrvGetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvGetAngles_Response();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvGetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvGetCoords_Request>
    {
        public static readonly Ros2Mecharm_interfacesSrvGetCoords_RequestCodec Instance = new Ros2Mecharm_interfacesSrvGetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvGetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/GetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvGetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvGetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvGetCoords_Request value = ReadRos2Mecharm_interfacesSrvGetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/GetCoords_Request component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvGetCoords_Request(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mecharm_interfaces/srv/GetCoords_Request candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvGetCoords_Request ReadRos2Mecharm_interfacesSrvGetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvGetCoords_Request();
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetCoords_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvGetCoords_Response
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GetCoords_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvGetCoords_Response>
    {
        public static readonly Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec Instance = new Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvGetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/GetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvGetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvGetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvGetCoords_Response value = ReadRos2Mecharm_interfacesSrvGetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/GetCoords_Response component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvGetCoords_Response(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvGetCoords_Response value)
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
     * @brief Read one mecharm_interfaces/srv/GetCoords_Response candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvGetCoords_Response ReadRos2Mecharm_interfacesSrvGetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvGetCoords_Response();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvGripperStatus_Request
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGripperStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvGripperStatus_Request>
    {
        public static readonly Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec Instance = new Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvGripperStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/GripperStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/GripperStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvGripperStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvGripperStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/GripperStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGripperStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvGripperStatus_Request value = ReadRos2Mecharm_interfacesSrvGripperStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/GripperStatus_Request component into checked
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
    private static void WriteRos2Mecharm_interfacesSrvGripperStatus_Request(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mecharm_interfaces/srv/GripperStatus_Request candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvGripperStatus_Request ReadRos2Mecharm_interfacesSrvGripperStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvGripperStatus_Request();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvGripperStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGripperStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvGripperStatus_Response>
    {
        public static readonly Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec Instance = new Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvGripperStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/GripperStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/GripperStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvGripperStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvGripperStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/GripperStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvGripperStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvGripperStatus_Response value = ReadRos2Mecharm_interfacesSrvGripperStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/GripperStatus_Response component into checked
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
    private static void WriteRos2Mecharm_interfacesSrvGripperStatus_Response(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mecharm_interfaces/srv/GripperStatus_Response candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvGripperStatus_Response ReadRos2Mecharm_interfacesSrvGripperStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvGripperStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/PumpStatus_Request fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvPumpStatus_Request
    {
        public bool @status = false;
        public sbyte @pin1 = 0;
        public sbyte @pin2 = 0;

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/PumpStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvPumpStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/PumpStatus_Request fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvPumpStatus_Request>
    {
        public static readonly Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec Instance = new Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/PumpStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvPumpStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/PumpStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/PumpStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvPumpStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvPumpStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/PumpStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvPumpStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvPumpStatus_Request value = ReadRos2Mecharm_interfacesSrvPumpStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/PumpStatus_Request component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvPumpStatus_Request(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvPumpStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mecharm_interfaces/srv/PumpStatus_Request candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvPumpStatus_Request ReadRos2Mecharm_interfacesSrvPumpStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvPumpStatus_Request();
        value.@status = ReadBool(reader);
        value.@pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/PumpStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvPumpStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/PumpStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvPumpStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/PumpStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvPumpStatus_Response>
    {
        public static readonly Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec Instance = new Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of mecharm_interfaces/srv/PumpStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvPumpStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/PumpStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/PumpStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvPumpStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvPumpStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/PumpStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvPumpStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvPumpStatus_Response value = ReadRos2Mecharm_interfacesSrvPumpStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/PumpStatus_Response component into checked
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
    private static void WriteRos2Mecharm_interfacesSrvPumpStatus_Response(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvPumpStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mecharm_interfaces/srv/PumpStatus_Response candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvPumpStatus_Response ReadRos2Mecharm_interfacesSrvPumpStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvPumpStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/SetAngles_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvSetAngles_Request
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/SetAngles_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvSetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvSetAngles_Request>
    {
        public static readonly Ros2Mecharm_interfacesSrvSetAngles_RequestCodec Instance = new Ros2Mecharm_interfacesSrvSetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvSetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/SetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvSetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvSetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvSetAngles_Request value = ReadRos2Mecharm_interfacesSrvSetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/SetAngles_Request component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvSetAngles_Request(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvSetAngles_Request value)
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
     * @brief Read one mecharm_interfaces/srv/SetAngles_Request candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvSetAngles_Request ReadRos2Mecharm_interfacesSrvSetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvSetAngles_Request();
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
     * @brief Preserve all original mecharm_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvSetAngles_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvSetAngles_Response>
    {
        public static readonly Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec Instance = new Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvSetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/SetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvSetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvSetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvSetAngles_Response value = ReadRos2Mecharm_interfacesSrvSetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/SetAngles_Response component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvSetAngles_Response(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mecharm_interfaces/srv/SetAngles_Response candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvSetAngles_Response ReadRos2Mecharm_interfacesSrvSetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvSetAngles_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/SetCoords_Request fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvSetCoords_Request
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
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/SetCoords_Request fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvSetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvSetCoords_Request>
    {
        public static readonly Ros2Mecharm_interfacesSrvSetCoords_RequestCodec Instance = new Ros2Mecharm_interfacesSrvSetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvSetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/SetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvSetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvSetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvSetCoords_Request value = ReadRos2Mecharm_interfacesSrvSetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/SetCoords_Request component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvSetCoords_Request(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvSetCoords_Request value)
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
     * @brief Read one mecharm_interfaces/srv/SetCoords_Request candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvSetCoords_Request ReadRos2Mecharm_interfacesSrvSetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvSetCoords_Request();
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
     * @brief Preserve all original mecharm_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mecharm_interfacesSrvSetCoords_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mecharm_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mecharm_interfacesSrvSetCoords_Response>
    {
        public static readonly Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec Instance = new Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mecharm_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mecharm_interfacesSrvSetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mecharm_interfaces/srv/SetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mecharm_interfacesSrvSetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mecharm_interfacesSrvSetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mecharm_interfacesSrvSetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mecharm_interfacesSrvSetCoords_Response value = ReadRos2Mecharm_interfacesSrvSetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mecharm_interfaces/srv/SetCoords_Response component into checked staging
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
    private static void WriteRos2Mecharm_interfacesSrvSetCoords_Response(_Codecs.Writer writer, _Ros2Mecharm_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mecharm_interfaces/srv/SetCoords_Response candidate through the checked canonical
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
    private static _Ros2Mecharm_interfacesSrvSetCoords_Response ReadRos2Mecharm_interfacesSrvSetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mecharm_interfacesSrvSetCoords_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesMsgMycobotAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesMsgMycobotAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesMsgMycobotAngles>
    {
        public static readonly Ros2Mycobot_interfacesMsgMycobotAnglesCodec Instance = new Ros2Mycobot_interfacesMsgMycobotAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesMsgMycobotAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/msg/MycobotAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesMsgMycobotAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesMsgMycobotAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesMsgMycobotAngles value = ReadRos2Mycobot_interfacesMsgMycobotAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/msg/MycobotAngles component into checked staging
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
    private static void WriteRos2Mycobot_interfacesMsgMycobotAngles(_Codecs.Writer writer, _Ros2Mycobot_interfacesMsgMycobotAngles value)
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
     * @brief Read one mycobot_interfaces/msg/MycobotAngles candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Mycobot_interfacesMsgMycobotAngles ReadRos2Mycobot_interfacesMsgMycobotAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesMsgMycobotAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesMsgMycobotCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesMsgMycobotCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesMsgMycobotCoords>
    {
        public static readonly Ros2Mycobot_interfacesMsgMycobotCoordsCodec Instance = new Ros2Mycobot_interfacesMsgMycobotCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesMsgMycobotCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/msg/MycobotCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesMsgMycobotCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesMsgMycobotCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesMsgMycobotCoords value = ReadRos2Mycobot_interfacesMsgMycobotCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/msg/MycobotCoords component into checked staging
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
    private static void WriteRos2Mycobot_interfacesMsgMycobotCoords(_Codecs.Writer writer, _Ros2Mycobot_interfacesMsgMycobotCoords value)
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
     * @brief Read one mycobot_interfaces/msg/MycobotCoords candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros2Mycobot_interfacesMsgMycobotCoords ReadRos2Mycobot_interfacesMsgMycobotCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesMsgMycobotCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesMsgMycobotGripperStatus
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/msg/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesMsgMycobotGripperStatus>
    {
        public static readonly Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec Instance = new Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/msg/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesMsgMycobotGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/msg/MycobotGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesMsgMycobotGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesMsgMycobotGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesMsgMycobotGripperStatus value = ReadRos2Mycobot_interfacesMsgMycobotGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/msg/MycobotGripperStatus component into checked
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
    private static void WriteRos2Mycobot_interfacesMsgMycobotGripperStatus(_Codecs.Writer writer, _Ros2Mycobot_interfacesMsgMycobotGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_interfaces/msg/MycobotGripperStatus candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesMsgMycobotGripperStatus ReadRos2Mycobot_interfacesMsgMycobotGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesMsgMycobotGripperStatus();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesMsgMycobotPumpStatus
    {
        public bool @status = false;
        public sbyte @pin1 = 0;
        public sbyte @pin2 = 0;

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/msg/MycobotPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotPumpStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesMsgMycobotPumpStatus>
    {
        public static readonly Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec Instance = new Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec();

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/msg/MycobotPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesMsgMycobotPumpStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/msg/MycobotPumpStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotPumpStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesMsgMycobotPumpStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesMsgMycobotPumpStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotPumpStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotPumpStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesMsgMycobotPumpStatus value = ReadRos2Mycobot_interfacesMsgMycobotPumpStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/msg/MycobotPumpStatus component into checked staging
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
    private static void WriteRos2Mycobot_interfacesMsgMycobotPumpStatus(_Codecs.Writer writer, _Ros2Mycobot_interfacesMsgMycobotPumpStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mycobot_interfaces/msg/MycobotPumpStatus candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesMsgMycobotPumpStatus ReadRos2Mycobot_interfacesMsgMycobotPumpStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesMsgMycobotPumpStatus();
        value.@status = ReadBool(reader);
        value.@pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesMsgMycobotSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesMsgMycobotSetAngles>
    {
        public static readonly Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec Instance = new Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesMsgMycobotSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/msg/MycobotSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesMsgMycobotSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesMsgMycobotSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesMsgMycobotSetAngles value = ReadRos2Mycobot_interfacesMsgMycobotSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/msg/MycobotSetAngles component into checked staging
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
    private static void WriteRos2Mycobot_interfacesMsgMycobotSetAngles(_Codecs.Writer writer, _Ros2Mycobot_interfacesMsgMycobotSetAngles value)
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
     * @brief Read one mycobot_interfaces/msg/MycobotSetAngles candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesMsgMycobotSetAngles ReadRos2Mycobot_interfacesMsgMycobotSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesMsgMycobotSetAngles();
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
     * @brief Preserve all original mycobot_interfaces/msg/MycobotSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesMsgMycobotSetCoords
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
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/msg/MycobotSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesMsgMycobotSetCoords>
    {
        public static readonly Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec Instance = new Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/msg/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesMsgMycobotSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/msg/MycobotSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesMsgMycobotSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesMsgMycobotSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesMsgMycobotSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesMsgMycobotSetCoords value = ReadRos2Mycobot_interfacesMsgMycobotSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/msg/MycobotSetCoords component into checked staging
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
    private static void WriteRos2Mycobot_interfacesMsgMycobotSetCoords(_Codecs.Writer writer, _Ros2Mycobot_interfacesMsgMycobotSetCoords value)
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
     * @brief Read one mycobot_interfaces/msg/MycobotSetCoords candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesMsgMycobotSetCoords ReadRos2Mycobot_interfacesMsgMycobotSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesMsgMycobotSetCoords();
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
     * @brief Preserve all original mycobot_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvGetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvGetAngles_Request>
    {
        public static readonly Ros2Mycobot_interfacesSrvGetAngles_RequestCodec Instance = new Ros2Mycobot_interfacesSrvGetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvGetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/GetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvGetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvGetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvGetAngles_Request value = ReadRos2Mycobot_interfacesSrvGetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/GetAngles_Request component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvGetAngles_Request(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_interfaces/srv/GetAngles_Request candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvGetAngles_Request ReadRos2Mycobot_interfacesSrvGetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvGetAngles_Request();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetAngles_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvGetAngles_Response
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetAngles_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvGetAngles_Response>
    {
        public static readonly Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec Instance = new Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvGetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/GetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvGetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvGetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvGetAngles_Response value = ReadRos2Mycobot_interfacesSrvGetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/GetAngles_Response component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvGetAngles_Response(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvGetAngles_Response value)
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
     * @brief Read one mycobot_interfaces/srv/GetAngles_Response candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvGetAngles_Response ReadRos2Mycobot_interfacesSrvGetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvGetAngles_Response();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvGetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvGetCoords_Request>
    {
        public static readonly Ros2Mycobot_interfacesSrvGetCoords_RequestCodec Instance = new Ros2Mycobot_interfacesSrvGetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvGetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/GetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvGetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvGetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvGetCoords_Request value = ReadRos2Mycobot_interfacesSrvGetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/GetCoords_Request component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvGetCoords_Request(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_interfaces/srv/GetCoords_Request candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvGetCoords_Request ReadRos2Mycobot_interfacesSrvGetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvGetCoords_Request();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetCoords_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvGetCoords_Response
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GetCoords_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvGetCoords_Response>
    {
        public static readonly Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec Instance = new Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvGetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/GetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvGetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvGetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvGetCoords_Response value = ReadRos2Mycobot_interfacesSrvGetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/GetCoords_Response component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvGetCoords_Response(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvGetCoords_Response value)
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
     * @brief Read one mycobot_interfaces/srv/GetCoords_Response candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvGetCoords_Response ReadRos2Mycobot_interfacesSrvGetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvGetCoords_Response();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvGripperStatus_Request
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGripperStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvGripperStatus_Request>
    {
        public static readonly Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec Instance = new Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvGripperStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/GripperStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/GripperStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvGripperStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvGripperStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/GripperStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGripperStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvGripperStatus_Request value = ReadRos2Mycobot_interfacesSrvGripperStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/GripperStatus_Request component into checked
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
    private static void WriteRos2Mycobot_interfacesSrvGripperStatus_Request(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_interfaces/srv/GripperStatus_Request candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvGripperStatus_Request ReadRos2Mycobot_interfacesSrvGripperStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvGripperStatus_Request();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvGripperStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGripperStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvGripperStatus_Response>
    {
        public static readonly Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec Instance = new Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvGripperStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/GripperStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/GripperStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvGripperStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvGripperStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/GripperStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvGripperStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvGripperStatus_Response value = ReadRos2Mycobot_interfacesSrvGripperStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/GripperStatus_Response component into checked
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
    private static void WriteRos2Mycobot_interfacesSrvGripperStatus_Response(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_interfaces/srv/GripperStatus_Response candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvGripperStatus_Response ReadRos2Mycobot_interfacesSrvGripperStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvGripperStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/PumpStatus_Request fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvPumpStatus_Request
    {
        public bool @status = false;
        public sbyte @pin1 = 0;
        public sbyte @pin2 = 0;

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/PumpStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvPumpStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/PumpStatus_Request fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvPumpStatus_Request>
    {
        public static readonly Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec Instance = new Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/PumpStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvPumpStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/PumpStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/PumpStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvPumpStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvPumpStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/PumpStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvPumpStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvPumpStatus_Request value = ReadRos2Mycobot_interfacesSrvPumpStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/PumpStatus_Request component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvPumpStatus_Request(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvPumpStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mycobot_interfaces/srv/PumpStatus_Request candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvPumpStatus_Request ReadRos2Mycobot_interfacesSrvPumpStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvPumpStatus_Request();
        value.@status = ReadBool(reader);
        value.@pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/PumpStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvPumpStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/PumpStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvPumpStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/PumpStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvPumpStatus_Response>
    {
        public static readonly Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec Instance = new Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of mycobot_interfaces/srv/PumpStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvPumpStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/PumpStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/PumpStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvPumpStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvPumpStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/PumpStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvPumpStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvPumpStatus_Response value = ReadRos2Mycobot_interfacesSrvPumpStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/PumpStatus_Response component into checked
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
    private static void WriteRos2Mycobot_interfacesSrvPumpStatus_Response(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvPumpStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_interfaces/srv/PumpStatus_Response candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvPumpStatus_Response ReadRos2Mycobot_interfacesSrvPumpStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvPumpStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/SetAngles_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvSetAngles_Request
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/SetAngles_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvSetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvSetAngles_Request>
    {
        public static readonly Ros2Mycobot_interfacesSrvSetAngles_RequestCodec Instance = new Ros2Mycobot_interfacesSrvSetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvSetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/SetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvSetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvSetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvSetAngles_Request value = ReadRos2Mycobot_interfacesSrvSetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/SetAngles_Request component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvSetAngles_Request(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvSetAngles_Request value)
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
     * @brief Read one mycobot_interfaces/srv/SetAngles_Request candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvSetAngles_Request ReadRos2Mycobot_interfacesSrvSetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvSetAngles_Request();
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
     * @brief Preserve all original mycobot_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvSetAngles_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvSetAngles_Response>
    {
        public static readonly Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec Instance = new Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvSetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/SetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvSetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvSetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvSetAngles_Response value = ReadRos2Mycobot_interfacesSrvSetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/SetAngles_Response component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvSetAngles_Response(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_interfaces/srv/SetAngles_Response candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvSetAngles_Response ReadRos2Mycobot_interfacesSrvSetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvSetAngles_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/SetCoords_Request fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvSetCoords_Request
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
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/SetCoords_Request fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvSetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvSetCoords_Request>
    {
        public static readonly Ros2Mycobot_interfacesSrvSetCoords_RequestCodec Instance = new Ros2Mycobot_interfacesSrvSetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvSetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/SetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213";
        public const int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvSetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvSetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvSetCoords_Request value = ReadRos2Mycobot_interfacesSrvSetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/SetCoords_Request component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvSetCoords_Request(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvSetCoords_Request value)
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
     * @brief Read one mycobot_interfaces/srv/SetCoords_Request candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvSetCoords_Request ReadRos2Mycobot_interfacesSrvSetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvSetCoords_Request();
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
     * @brief Preserve all original mycobot_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_interfacesSrvSetCoords_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_interfacesSrvSetCoords_Response>
    {
        public static readonly Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec Instance = new Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_interfacesSrvSetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_interfaces/srv/SetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_interfacesSrvSetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_interfacesSrvSetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_interfacesSrvSetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_interfacesSrvSetCoords_Response value = ReadRos2Mycobot_interfacesSrvSetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_interfaces/srv/SetCoords_Response component into checked staging
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
    private static void WriteRos2Mycobot_interfacesSrvSetCoords_Response(_Codecs.Writer writer, _Ros2Mycobot_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_interfaces/srv/SetCoords_Response candidate through the checked canonical
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
    private static _Ros2Mycobot_interfacesSrvSetCoords_Response ReadRos2Mycobot_interfacesSrvSetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_interfacesSrvSetCoords_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesMsgMycobotAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_pro450_interfaces/msg/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesMsgMycobotAngles>
    {
        public static readonly Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec Instance = new Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_pro450_interfaces/msg/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesMsgMycobotAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesMsgMycobotAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesMsgMycobotAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesMsgMycobotAngles value = ReadRos2Mycobot_pro450_interfacesMsgMycobotAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/msg/MycobotAngles component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesMsgMycobotAngles(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesMsgMycobotAngles value)
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
     * @brief Read one mycobot_pro450_interfaces/msg/MycobotAngles candidate through the checked canonical
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
    private static _Ros2Mycobot_pro450_interfacesMsgMycobotAngles ReadRos2Mycobot_pro450_interfacesMsgMycobotAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesMsgMycobotAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesMsgMycobotCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for mycobot_pro450_interfaces/msg/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotCoords fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesMsgMycobotCoords>
    {
        public static readonly Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec Instance = new Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mycobot_pro450_interfaces/msg/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesMsgMycobotCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesMsgMycobotCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesMsgMycobotCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesMsgMycobotCoords value = ReadRos2Mycobot_pro450_interfacesMsgMycobotCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/msg/MycobotCoords component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesMsgMycobotCoords(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesMsgMycobotCoords value)
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
     * @brief Read one mycobot_pro450_interfaces/msg/MycobotCoords candidate through the checked canonical
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
    private static _Ros2Mycobot_pro450_interfacesMsgMycobotCoords ReadRos2Mycobot_pro450_interfacesMsgMycobotCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesMsgMycobotCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of
         * mycobot_pro450_interfaces/msg/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus>
    {
        public static readonly Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec Instance =
            new Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of
         * mycobot_pro450_interfaces/msg/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value = ReadRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/msg/MycobotGripperStatus component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(_Codecs.Writer writer,
                                                                                  _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/msg/MycobotGripperStatus candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus ReadRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/msg/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotSetAngles fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles>
    {
        public static readonly Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec Instance = new Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/msg/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesMsgMycobotSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value = ReadRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/msg/MycobotSetAngles component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value)
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
     * @brief Read one mycobot_pro450_interfaces/msg/MycobotSetAngles candidate through the checked canonical
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
    private static _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles ReadRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles();
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
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotSetCoords fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/msg/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/msg/MycobotSetCoords fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords>
    {
        public static readonly Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec Instance = new Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/msg/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesMsgMycobotSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value = ReadRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/msg/MycobotSetCoords component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value)
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
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/msg/MycobotSetCoords candidate through the checked canonical
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
    private static _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords ReadRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec Instance = new Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/GetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value = ReadRos2Mycobot_pro450_interfacesSrvGetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GetAngles_Request component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvGetAngles_Request(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/GetAngles_Request candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request ReadRos2Mycobot_pro450_interfacesSrvGetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGetAngles_Request();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetAngles_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetAngles_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec Instance = new Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/GetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value = ReadRos2Mycobot_pro450_interfacesSrvGetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GetAngles_Response component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvGetAngles_Response(_Codecs.Writer writer,
                                                                                _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value)
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
     * @brief Read one mycobot_pro450_interfaces/srv/GetAngles_Response candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response ReadRos2Mycobot_pro450_interfacesSrvGetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGetAngles_Response();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@joint_5 = ReadFloat32(reader);
        value.@joint_6 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec Instance = new Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/GetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value = ReadRos2Mycobot_pro450_interfacesSrvGetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GetCoords_Request component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvGetCoords_Request(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/GetCoords_Request candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request ReadRos2Mycobot_pro450_interfacesSrvGetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGetCoords_Request();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetCoords_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetCoords_Response fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec Instance = new Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf";
        public const int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/GetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value = ReadRos2Mycobot_pro450_interfacesSrvGetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GetCoords_Response component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvGetCoords_Response(_Codecs.Writer writer,
                                                                                _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value)
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
     * @brief Read one mycobot_pro450_interfaces/srv/GetCoords_Response candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response ReadRos2Mycobot_pro450_interfacesSrvGetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGetCoords_Response();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetGripperValue_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetGripperValue_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec Instance =
            new Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGetGripperValue_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetGripperValue_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GetGripperValue_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value = ReadRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GetGripperValue_Request component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(_Codecs.Writer writer,
                                                                                     _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/GetGripperValue_Request candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request ReadRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request();
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetGripperValue_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
    {
        public sbyte @gripper_angle = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GetGripperValue_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec Instance =
            new Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGetGripperValue_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetGripperValue_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for
         * mycobot_pro450_interfaces/srv/GetGripperValue_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value = ReadRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GetGripperValue_Response component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(_Codecs.Writer writer,
                                                                                      _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@gripper_angle;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/GetGripperValue_Response candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response ReadRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response();
        value.@gripper_angle = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of
         * mycobot_pro450_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec Instance =
            new Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of
         * mycobot_pro450_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGripperStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GripperStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/GripperStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GripperStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value = ReadRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GripperStatus_Request component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(_Codecs.Writer writer,
                                                                                   _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/GripperStatus_Request candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request ReadRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of
         * mycobot_pro450_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec Instance =
            new Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of
         * mycobot_pro450_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvGripperStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GripperStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/GripperStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/GripperStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value = ReadRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/GripperStatus_Response component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(_Codecs.Writer writer,
                                                                                    _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/GripperStatus_Response candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response ReadRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetAngles_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public float @joint_5 = 0;
        public float @joint_6 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetAngles_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec Instance = new Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvSetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/SetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvSetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/SetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value = ReadRos2Mycobot_pro450_interfacesSrvSetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/SetAngles_Request component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvSetAngles_Request(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value)
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
     * @brief Read one mycobot_pro450_interfaces/srv/SetAngles_Request candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request ReadRos2Mycobot_pro450_interfacesSrvSetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvSetAngles_Request();
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
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec Instance = new Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvSetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/SetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvSetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/SetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value = ReadRos2Mycobot_pro450_interfacesSrvSetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/SetAngles_Response component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvSetAngles_Response(_Codecs.Writer writer,
                                                                                _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/SetAngles_Response candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response ReadRos2Mycobot_pro450_interfacesSrvSetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvSetAngles_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetCoords_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public float @ry = 0;
        public float @rz = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetCoords_Request fields.
     * @details 7 ordered fields, canonical extent 25..25 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec Instance = new Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvSetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81";
        public const int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/SetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvSetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/SetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value = ReadRos2Mycobot_pro450_interfacesSrvSetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/SetCoords_Request component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvSetCoords_Request(_Codecs.Writer writer, _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value)
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
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/SetCoords_Request candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request ReadRos2Mycobot_pro450_interfacesSrvSetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvSetCoords_Request();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@ry = ReadFloat32(reader);
        value.@rz = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mycobot_pro450_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response>
    {
        public static readonly Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec Instance = new Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mycobot_pro450_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mycobot_pro450_interfacesSrvSetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mycobot_pro450_interfaces/srv/SetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mycobot_pro450_interfacesSrvSetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mycobot_pro450_interfaces/srv/SetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value = ReadRos2Mycobot_pro450_interfacesSrvSetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mycobot_pro450_interfaces/srv/SetCoords_Response component into checked
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
    private static void WriteRos2Mycobot_pro450_interfacesSrvSetCoords_Response(_Codecs.Writer writer,
                                                                                _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mycobot_pro450_interfaces/srv/SetCoords_Response candidate through the checked
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
    private static _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response ReadRos2Mycobot_pro450_interfacesSrvSetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mycobot_pro450_interfacesSrvSetCoords_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalAngles fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesMsgMypalAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalAngles fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesMsgMypalAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesMsgMypalAngles>
    {
        public static readonly Ros2Mypalletizer_interfacesMsgMypalAnglesCodec Instance = new Ros2Mypalletizer_interfacesMsgMypalAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesMsgMypalAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesMsgMypalAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesMsgMypalAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesMsgMypalAngles value = ReadRos2Mypalletizer_interfacesMsgMypalAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/msg/MypalAngles component into checked staging
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
    private static void WriteRos2Mypalletizer_interfacesMsgMypalAngles(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesMsgMypalAngles value)
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
     * @brief Read one mypalletizer_interfaces/msg/MypalAngles candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesMsgMypalAngles ReadRos2Mypalletizer_interfacesMsgMypalAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesMsgMypalAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalCoords fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesMsgMypalCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalCoords fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesMsgMypalCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesMsgMypalCoords>
    {
        public static readonly Ros2Mypalletizer_interfacesMsgMypalCoordsCodec Instance = new Ros2Mypalletizer_interfacesMsgMypalCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesMsgMypalCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesMsgMypalCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesMsgMypalCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesMsgMypalCoords value = ReadRos2Mypalletizer_interfacesMsgMypalCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/msg/MypalCoords component into checked staging
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
    private static void WriteRos2Mypalletizer_interfacesMsgMypalCoords(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesMsgMypalCoords value)
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
     * @brief Read one mypalletizer_interfaces/msg/MypalCoords candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesMsgMypalCoords ReadRos2Mypalletizer_interfacesMsgMypalCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesMsgMypalCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesMsgMypalGripperStatus
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of mypalletizer_interfaces/msg/MypalGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesMsgMypalGripperStatus>
    {
        public static readonly Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec Instance = new Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_interfaces/msg/MypalGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesMsgMypalGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesMsgMypalGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesMsgMypalGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesMsgMypalGripperStatus value = ReadRos2Mypalletizer_interfacesMsgMypalGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/msg/MypalGripperStatus component into checked
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
    private static void WriteRos2Mypalletizer_interfacesMsgMypalGripperStatus(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesMsgMypalGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/msg/MypalGripperStatus candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesMsgMypalGripperStatus ReadRos2Mypalletizer_interfacesMsgMypalGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesMsgMypalGripperStatus();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesMsgMypalPumpStatus
    {
        public bool @status = false;
        public sbyte @pin1 = 0;
        public sbyte @pin2 = 0;

        /**
         * @brief Check the complete finite representation of mypalletizer_interfaces/msg/MypalPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalPumpStatus()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalPumpStatus fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesMsgMypalPumpStatus>
    {
        public static readonly Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec Instance = new Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_interfaces/msg/MypalPumpStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesMsgMypalPumpStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalPumpStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalPumpStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesMsgMypalPumpStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesMsgMypalPumpStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalPumpStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalPumpStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesMsgMypalPumpStatus value = ReadRos2Mypalletizer_interfacesMsgMypalPumpStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/msg/MypalPumpStatus component into checked
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
    private static void WriteRos2Mypalletizer_interfacesMsgMypalPumpStatus(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesMsgMypalPumpStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/msg/MypalPumpStatus candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesMsgMypalPumpStatus ReadRos2Mypalletizer_interfacesMsgMypalPumpStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesMsgMypalPumpStatus();
        value.@status = ReadBool(reader);
        value.@pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalSetAngles fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesMsgMypalSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalSetAngles fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesMsgMypalSetAngles>
    {
        public static readonly Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec Instance = new Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesMsgMypalSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesMsgMypalSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesMsgMypalSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesMsgMypalSetAngles value = ReadRos2Mypalletizer_interfacesMsgMypalSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/msg/MypalSetAngles component into checked
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
    private static void WriteRos2Mypalletizer_interfacesMsgMypalSetAngles(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesMsgMypalSetAngles value)
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
     * @brief Read one mypalletizer_interfaces/msg/MypalSetAngles candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesMsgMypalSetAngles ReadRos2Mypalletizer_interfacesMsgMypalSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesMsgMypalSetAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalSetCoords fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesMsgMypalSetCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/msg/MypalSetCoords fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesMsgMypalSetCoords>
    {
        public static readonly Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec Instance = new Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for mypalletizer_interfaces/msg/MypalSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesMsgMypalSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesMsgMypalSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesMsgMypalSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesMsgMypalSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesMsgMypalSetCoords value = ReadRos2Mypalletizer_interfacesMsgMypalSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/msg/MypalSetCoords component into checked
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
    private static void WriteRos2Mypalletizer_interfacesMsgMypalSetCoords(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesMsgMypalSetCoords value)
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
    }

    /**
     * @brief Read one mypalletizer_interfaces/msg/MypalSetCoords candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesMsgMypalSetCoords ReadRos2Mypalletizer_interfacesMsgMypalSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesMsgMypalSetCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvGetAngles_Request>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec Instance = new Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvGetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/GetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvGetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvGetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvGetAngles_Request value = ReadRos2Mypalletizer_interfacesSrvGetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/GetAngles_Request component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvGetAngles_Request(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/GetAngles_Request candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvGetAngles_Request ReadRos2Mypalletizer_interfacesSrvGetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvGetAngles_Request();
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetAngles_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvGetAngles_Response
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetAngles_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvGetAngles_Response>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec Instance = new Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvGetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/GetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvGetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvGetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvGetAngles_Response value = ReadRos2Mypalletizer_interfacesSrvGetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/GetAngles_Response component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvGetAngles_Response(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvGetAngles_Response value)
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
     * @brief Read one mypalletizer_interfaces/srv/GetAngles_Response candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvGetAngles_Response ReadRos2Mypalletizer_interfacesSrvGetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvGetAngles_Response();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvGetCoords_Request>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec Instance = new Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvGetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/GetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvGetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvGetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvGetCoords_Request value = ReadRos2Mypalletizer_interfacesSrvGetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/GetCoords_Request component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvGetCoords_Request(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/GetCoords_Request candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvGetCoords_Request ReadRos2Mypalletizer_interfacesSrvGetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvGetCoords_Request();
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetCoords_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvGetCoords_Response
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GetCoords_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvGetCoords_Response>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec Instance = new Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvGetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/GetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvGetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvGetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvGetCoords_Response value = ReadRos2Mypalletizer_interfacesSrvGetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/GetCoords_Response component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvGetCoords_Response(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvGetCoords_Response value)
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
     * @brief Read one mypalletizer_interfaces/srv/GetCoords_Response candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvGetCoords_Response ReadRos2Mypalletizer_interfacesSrvGetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvGetCoords_Response();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvGripperStatus_Request
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGripperStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvGripperStatus_Request>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec Instance =
            new Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvGripperStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/GripperStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GripperStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvGripperStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvGripperStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GripperStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGripperStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvGripperStatus_Request value = ReadRos2Mypalletizer_interfacesSrvGripperStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/GripperStatus_Request component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvGripperStatus_Request(_Codecs.Writer writer,
                                                                                 _Ros2Mypalletizer_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/GripperStatus_Request candidate through the checked
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
    private static _Ros2Mypalletizer_interfacesSrvGripperStatus_Request ReadRos2Mypalletizer_interfacesSrvGripperStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvGripperStatus_Request();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvGripperStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGripperStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvGripperStatus_Response>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec Instance =
            new Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvGripperStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/GripperStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GripperStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvGripperStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvGripperStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GripperStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvGripperStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvGripperStatus_Response value = ReadRos2Mypalletizer_interfacesSrvGripperStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/GripperStatus_Response component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Mypalletizer_interfacesSrvGripperStatus_Response(_Codecs.Writer writer,
                                                                                  _Ros2Mypalletizer_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/GripperStatus_Response candidate through the checked
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
    private static _Ros2Mypalletizer_interfacesSrvGripperStatus_Response ReadRos2Mypalletizer_interfacesSrvGripperStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvGripperStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/PumpStatus_Request fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvPumpStatus_Request
    {
        public bool @status = false;
        public sbyte @pin1 = 0;
        public sbyte @pin2 = 0;

        /**
         * @brief Check the complete finite representation of mypalletizer_interfaces/srv/PumpStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvPumpStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/PumpStatus_Request fields.
     * @details 3 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvPumpStatus_Request>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec Instance = new Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of mypalletizer_interfaces/srv/PumpStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvPumpStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/PumpStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/PumpStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvPumpStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvPumpStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/PumpStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvPumpStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvPumpStatus_Request value = ReadRos2Mypalletizer_interfacesSrvPumpStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/PumpStatus_Request component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvPumpStatus_Request(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvPumpStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        sbyte part1 = value.@pin1;
        writer.Unsigned(unchecked((byte)part1), 1);
        sbyte part2 = value.@pin2;
        writer.Unsigned(unchecked((byte)part2), 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/PumpStatus_Request candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvPumpStatus_Request ReadRos2Mypalletizer_interfacesSrvPumpStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvPumpStatus_Request();
        value.@status = ReadBool(reader);
        value.@pin1 = unchecked((sbyte)reader.Unsigned(1));
        value.@pin2 = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/PumpStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvPumpStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_interfaces/srv/PumpStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvPumpStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/PumpStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvPumpStatus_Response>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec Instance = new Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of
         * mypalletizer_interfaces/srv/PumpStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvPumpStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/PumpStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/PumpStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvPumpStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvPumpStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/PumpStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvPumpStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvPumpStatus_Response value = ReadRos2Mypalletizer_interfacesSrvPumpStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/PumpStatus_Response component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvPumpStatus_Response(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvPumpStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/PumpStatus_Response candidate through the checked
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
    private static _Ros2Mypalletizer_interfacesSrvPumpStatus_Response ReadRos2Mypalletizer_interfacesSrvPumpStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvPumpStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetAngles_Request fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvSetAngles_Request
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetAngles_Request fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvSetAngles_Request>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec Instance = new Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvSetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/SetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/SetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvSetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvSetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvSetAngles_Request value = ReadRos2Mypalletizer_interfacesSrvSetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/SetAngles_Request component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvSetAngles_Request(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvSetAngles_Request value)
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
     * @brief Read one mypalletizer_interfaces/srv/SetAngles_Request candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvSetAngles_Request ReadRos2Mypalletizer_interfacesSrvSetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvSetAngles_Request();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvSetAngles_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvSetAngles_Response>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec Instance = new Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvSetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/SetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/SetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvSetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvSetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvSetAngles_Response value = ReadRos2Mypalletizer_interfacesSrvSetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/SetAngles_Response component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvSetAngles_Response(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/SetAngles_Response candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvSetAngles_Response ReadRos2Mypalletizer_interfacesSrvSetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvSetAngles_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetCoords_Request fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvSetCoords_Request
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public sbyte @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetCoords_Request fields.
     * @details 5 ordered fields, canonical extent 17..17 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvSetCoords_Request>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec Instance = new Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvSetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/SetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541";
        public const int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/SetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvSetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvSetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvSetCoords_Request value = ReadRos2Mypalletizer_interfacesSrvSetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/SetCoords_Request component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvSetCoords_Request(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvSetCoords_Request value)
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
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/SetCoords_Request candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvSetCoords_Request ReadRos2Mypalletizer_interfacesSrvSetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvSetCoords_Request();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@speed = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Mypalletizer_interfacesSrvSetCoords_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original mypalletizer_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Mypalletizer_interfacesSrvSetCoords_Response>
    {
        public static readonly Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec Instance = new Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * mypalletizer_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Mypalletizer_interfacesSrvSetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "mypalletizer_interfaces/srv/SetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/SetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Mypalletizer_interfacesSrvSetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Mypalletizer_interfacesSrvSetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Mypalletizer_interfacesSrvSetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Mypalletizer_interfacesSrvSetCoords_Response value = ReadRos2Mypalletizer_interfacesSrvSetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated mypalletizer_interfaces/srv/SetCoords_Response component into checked
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
    private static void WriteRos2Mypalletizer_interfacesSrvSetCoords_Response(_Codecs.Writer writer, _Ros2Mypalletizer_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one mypalletizer_interfaces/srv/SetCoords_Response candidate through the checked canonical
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
    private static _Ros2Mypalletizer_interfacesSrvSetCoords_Response ReadRos2Mypalletizer_interfacesSrvSetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Mypalletizer_interfacesSrvSetCoords_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotAngles fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesMsgMycobotAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotAngles()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotAngles fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesMsgMycobotAngles>
    {
        public static readonly Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec Instance = new Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesMsgMycobotAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/msg/MycobotAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_75965ba712c12f465c2424b540359dbc4c88e2e85aa772698ee040db7c32a945";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/msg/MycobotAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesMsgMycobotAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesMsgMycobotAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/msg/MycobotAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesMsgMycobotAngles value = ReadRos2Ultraarm_p1_interfacesMsgMycobotAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/msg/MycobotAngles component into checked staging
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
    private static void WriteRos2Ultraarm_p1_interfacesMsgMycobotAngles(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesMsgMycobotAngles value)
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
     * @brief Read one ultraarm_p1_interfaces/msg/MycobotAngles candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesMsgMycobotAngles ReadRos2Ultraarm_p1_interfacesMsgMycobotAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesMsgMycobotAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotCoords fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesMsgMycobotCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotCoords()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotCoords fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesMsgMycobotCoords>
    {
        public static readonly Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec Instance = new Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesMsgMycobotCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/msg/MycobotCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c79774c9af7fb4c150cb18c2510df52bbc7bad3c05b604abf90e19087aa05874";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/msg/MycobotCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesMsgMycobotCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesMsgMycobotCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/msg/MycobotCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesMsgMycobotCoords value = ReadRos2Ultraarm_p1_interfacesMsgMycobotCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/msg/MycobotCoords component into checked staging
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
    private static void WriteRos2Ultraarm_p1_interfacesMsgMycobotCoords(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesMsgMycobotCoords value)
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
     * @brief Read one ultraarm_p1_interfaces/msg/MycobotCoords candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesMsgMycobotCoords ReadRos2Ultraarm_p1_interfacesMsgMycobotCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesMsgMycobotCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of
         * ultraarm_p1_interfaces/msg/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotGripperStatus fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus>
    {
        public static readonly Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec Instance = new Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec();

        /**
         * @brief Check the complete finite representation of
         * ultraarm_p1_interfaces/msg/MycobotGripperStatus.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatusCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/msg/MycobotGripperStatus";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_1efb83ff22c5eb211fe92355cb5358cb991a373693d33180362e43a2ef56d22f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/msg/MycobotGripperStatus.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesMsgMycobotGripperStatus(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/msg/MycobotGripperStatus.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus value = ReadRos2Ultraarm_p1_interfacesMsgMycobotGripperStatus(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/msg/MycobotGripperStatus component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesMsgMycobotGripperStatus(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/msg/MycobotGripperStatus candidate through the checked
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
    private static _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus ReadRos2Ultraarm_p1_interfacesMsgMycobotGripperStatus(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotSetAngles fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public int @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotSetAngles fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles>
    {
        public static readonly Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec Instance = new Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotSetAngles.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesMsgMycobotSetAnglesCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/msg/MycobotSetAngles";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cb53aab11e200533386b764a423f86bd7a24c65105236945c6b27ba7a9c3221c";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 20;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/msg/MycobotSetAngles.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesMsgMycobotSetAngles(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/msg/MycobotSetAngles.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles value = ReadRos2Ultraarm_p1_interfacesMsgMycobotSetAngles(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/msg/MycobotSetAngles component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesMsgMycobotSetAngles(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles value)
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
        int part4 = value.@speed;
        writer.Unsigned(unchecked((uint)part4), 4);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/msg/MycobotSetAngles candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles ReadRos2Ultraarm_p1_interfacesMsgMycobotSetAngles(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@speed = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotSetCoords fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public int @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/msg/MycobotSetCoords fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords>
    {
        public static readonly Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec Instance = new Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/msg/MycobotSetCoords.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesMsgMycobotSetCoordsCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/msg/MycobotSetCoords";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fca21ab6eed31f03f0f7c9c6010d893f709f1eebb1bf07c1911452da1c50bbee";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 20;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/msg/MycobotSetCoords.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesMsgMycobotSetCoords(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/msg/MycobotSetCoords.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords value = ReadRos2Ultraarm_p1_interfacesMsgMycobotSetCoords(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/msg/MycobotSetCoords component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesMsgMycobotSetCoords(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords value)
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
        int part4 = value.@speed;
        writer.Unsigned(unchecked((uint)part4), 4);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/msg/MycobotSetCoords candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords ReadRos2Ultraarm_p1_interfacesMsgMycobotSetCoords(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@speed = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetAngles_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec Instance = new Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/GetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b2ff68f6919df813ddf49ad9337c2345e3c4e70242ad81f6440d5cd1cd612ff9";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request value = ReadRos2Ultraarm_p1_interfacesSrvGetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GetAngles_Request component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvGetAngles_Request(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/GetAngles_Request candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request ReadRos2Ultraarm_p1_interfacesSrvGetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGetAngles_Request();
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetAngles_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetAngles_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec Instance = new Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cc8b4259c50ed82d6f3b3bbb9470ac089b127b70ace12457cb41fccb7ae67cbc";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response value = ReadRos2Ultraarm_p1_interfacesSrvGetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GetAngles_Response component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvGetAngles_Response(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response value)
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
     * @brief Read one ultraarm_p1_interfaces/srv/GetAngles_Response candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response ReadRos2Ultraarm_p1_interfacesSrvGetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGetAngles_Response();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetCoords_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec Instance = new Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/GetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0ed9a0f7124cb00e62b71aecaedb60ea8832a94aaf4dc8f1de943d91dbf74e01";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request value = ReadRos2Ultraarm_p1_interfacesSrvGetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GetCoords_Request component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvGetCoords_Request(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/GetCoords_Request candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request ReadRos2Ultraarm_p1_interfacesSrvGetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGetCoords_Request();
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetCoords_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetCoords_Response fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec Instance = new Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47ef794ffd2a3a4125ce3c9cbbd6b0d85fbb42cbfc888dd8fec39020cd454565";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response value = ReadRos2Ultraarm_p1_interfacesSrvGetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GetCoords_Response component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvGetCoords_Response(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response value)
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
     * @brief Read one ultraarm_p1_interfaces/srv/GetCoords_Response candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response ReadRos2Ultraarm_p1_interfacesSrvGetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGetCoords_Response();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetGripperValue_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request
    {
        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetGripperValue_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetGripperValue_Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec Instance =
            new Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetGripperValue_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGetGripperValue_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GetGripperValue_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_dad3d4af78250b2b8e44424ee1bb532b1e24bd9b867417fa428dec761fcf4be9";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GetGripperValue_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGetGripperValue_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GetGripperValue_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request value = ReadRos2Ultraarm_p1_interfacesSrvGetGripperValue_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GetGripperValue_Request component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Ultraarm_p1_interfacesSrvGetGripperValue_Request(_Codecs.Writer writer,
                                                                                  _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/GetGripperValue_Request candidate through the checked
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
    private static _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request ReadRos2Ultraarm_p1_interfacesSrvGetGripperValue_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request();
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetGripperValue_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response
    {
        public sbyte @gripper_angle = 0;

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetGripperValue_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GetGripperValue_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec Instance =
            new Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/GetGripperValue_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGetGripperValue_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GetGripperValue_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_3b3830d2ae5b4327771923acab70739d05dd3f9c8e2b3b060f6a3136a9e6c647";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GetGripperValue_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGetGripperValue_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GetGripperValue_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response value = ReadRos2Ultraarm_p1_interfacesSrvGetGripperValue_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GetGripperValue_Response component into
     * checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos2Ultraarm_p1_interfacesSrvGetGripperValue_Response(_Codecs.Writer writer,
                                                                                   _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        sbyte part0 = value.@gripper_angle;
        writer.Unsigned(unchecked((byte)part0), 1);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/GetGripperValue_Response candidate through the checked
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
    private static _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response ReadRos2Ultraarm_p1_interfacesSrvGetGripperValue_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response();
        value.@gripper_angle = unchecked((sbyte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request
    {
        public bool @status = false;

        /**
         * @brief Check the complete finite representation of
         * ultraarm_p1_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GripperStatus_Request fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec Instance = new Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec();

        /**
         * @brief Check the complete finite representation of
         * ultraarm_p1_interfaces/srv/GripperStatus_Request.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGripperStatus_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GripperStatus_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cdaff7754e24b6910102060d2af379d4bcc9c3a647604ccdf2dc8b4a50d854b8";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GripperStatus_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGripperStatus_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GripperStatus_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request value = ReadRos2Ultraarm_p1_interfacesSrvGripperStatus_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GripperStatus_Request component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvGripperStatus_Request(_Codecs.Writer writer,
                                                                                _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@status;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/GripperStatus_Request candidate through the checked
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
    private static _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request ReadRos2Ultraarm_p1_interfacesSrvGripperStatus_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request();
        value.@status = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response
    {
        public bool @flag = false;

        /**
         * @brief Check the complete finite representation of
         * ultraarm_p1_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/GripperStatus_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec :
        global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec Instance =
            new Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec();

        /**
         * @brief Check the complete finite representation of
         * ultraarm_p1_interfaces/srv/GripperStatus_Response.
         * @details Inspect only initialized active elements and original scalar domains. Byte counts
         * describe canonical content rather than object sizeof, reserved capacity, native identities or
         * granted quotas.
         * @return Documented Boolean, byte count or original numeric status; this local check grants no
         * authority.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvGripperStatus_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/GripperStatus_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_55826c68885c7382e5a9e8a0ec35b312af3b2e974236d80518564c3fb8b9fa48";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/GripperStatus_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvGripperStatus_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/GripperStatus_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response value = ReadRos2Ultraarm_p1_interfacesSrvGripperStatus_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/GripperStatus_Response component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvGripperStatus_Response(_Codecs.Writer writer,
                                                                                 _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/GripperStatus_Response candidate through the checked
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
    private static _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response ReadRos2Ultraarm_p1_interfacesSrvGripperStatus_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetAngles_Request fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request
    {
        public float @joint_1 = 0;
        public float @joint_2 = 0;
        public float @joint_3 = 0;
        public float @joint_4 = 0;
        public int @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetAngles_Request fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec Instance = new Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/SetAngles_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvSetAngles_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/SetAngles_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4184d40dd5cef87f13e913d349e37b0661905c5c9f0d8c5f9cc965ea272be025";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 20;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/SetAngles_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvSetAngles_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/SetAngles_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request value = ReadRos2Ultraarm_p1_interfacesSrvSetAngles_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/SetAngles_Request component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvSetAngles_Request(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request value)
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
        int part4 = value.@speed;
        writer.Unsigned(unchecked((uint)part4), 4);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/SetAngles_Request candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request ReadRos2Ultraarm_p1_interfacesSrvSetAngles_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvSetAngles_Request();
        value.@joint_1 = ReadFloat32(reader);
        value.@joint_2 = ReadFloat32(reader);
        value.@joint_3 = ReadFloat32(reader);
        value.@joint_4 = ReadFloat32(reader);
        value.@speed = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetAngles_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec Instance = new Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/SetAngles_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvSetAngles_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/SetAngles_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_de517cd68c164d4214aed8ad92f7bb9ee49f24c7e43d96c18e193095b0b23e1a";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/SetAngles_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvSetAngles_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/SetAngles_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response value = ReadRos2Ultraarm_p1_interfacesSrvSetAngles_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/SetAngles_Response component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvSetAngles_Response(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/SetAngles_Response candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response ReadRos2Ultraarm_p1_interfacesSrvSetAngles_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvSetAngles_Response();
        value.@flag = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetCoords_Request fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request
    {
        public float @x = 0;
        public float @y = 0;
        public float @z = 0;
        public float @rx = 0;
        public int @speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetCoords_Request fields.
     * @details 5 ordered fields, canonical extent 20..20 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec Instance = new Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for ultraarm_p1_interfaces/srv/SetCoords_Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvSetCoords_RequestCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/SetCoords_Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_df9914ced1ef5f92f6102595de772ed076be380360b8fd5732cf7f0d4c0ec3e3";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 20;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/SetCoords_Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvSetCoords_Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/SetCoords_Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request value = ReadRos2Ultraarm_p1_interfacesSrvSetCoords_Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/SetCoords_Request component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvSetCoords_Request(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request value)
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
        int part4 = value.@speed;
        writer.Unsigned(unchecked((uint)part4), 4);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/SetCoords_Request candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request ReadRos2Ultraarm_p1_interfacesSrvSetCoords_Request(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvSetCoords_Request();
        value.@x = ReadFloat32(reader);
        value.@y = ReadFloat32(reader);
        value.@z = ReadFloat32(reader);
        value.@rx = ReadFloat32(reader);
        value.@speed = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response
    {
        public bool @flag = false;

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response()
        {
        }
    }

    /**
     * @brief Preserve all original ultraarm_p1_interfaces/srv/SetCoords_Response fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response>
    {
        public static readonly Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec Instance = new Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for
         * ultraarm_p1_interfaces/srv/SetCoords_Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros2Ultraarm_p1_interfacesSrvSetCoords_ResponseCodec()
        {
        }

        public const int ROS_VERSION = 2;
        public const string NATIVE_TYPE = "ultraarm_p1_interfaces/srv/SetCoords_Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c66cfcc79da5bbc9a19b077761cfd3e89b3dae56ae604205de6316aa37935d7f";
        public const int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;

        /**
         * @brief Encode the complete ordered value for ultraarm_p1_interfaces/srv/SetCoords_Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos2Ultraarm_p1_interfacesSrvSetCoords_Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for ultraarm_p1_interfaces/srv/SetCoords_Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response value = ReadRos2Ultraarm_p1_interfacesSrvSetCoords_Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated ultraarm_p1_interfaces/srv/SetCoords_Response component into checked
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
    private static void WriteRos2Ultraarm_p1_interfacesSrvSetCoords_Response(_Codecs.Writer writer, _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@flag;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one ultraarm_p1_interfaces/srv/SetCoords_Response candidate through the checked canonical
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
    private static _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response ReadRos2Ultraarm_p1_interfacesSrvSetCoords_Response(_Codecs.Reader reader)
    {
        var value = new _Ros2Ultraarm_p1_interfacesSrvSetCoords_Response();
        value.@flag = ReadBool(reader);
        return value;
    }
}
