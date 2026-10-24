/**
 * @file BoundedRecords.cs
 * @brief Preserve the complete original ufactory/ros1_kinetic canonical value domain.
 * @details The selected domain contains 84 complete record/components and 196 original fields. Declared
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
namespace Uwvm.Ufactory.ros1_kinetic;

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
     * @brief Preserve all original xarm_gripper/MoveGoal fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_gripperMoveGoal
    {
        public float @target_pulse = 0;
        public float @pulse_speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_gripper/MoveGoal.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_gripperMoveGoal()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_gripper/MoveGoal fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_gripperMoveGoalCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_gripperMoveGoal>
    {
        public static readonly Ros1Xarm_gripperMoveGoalCodec Instance = new Ros1Xarm_gripperMoveGoalCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_gripper/MoveGoal.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_gripperMoveGoalCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_gripper/MoveGoal";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for xarm_gripper/MoveGoal.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_gripperMoveGoal value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_gripperMoveGoal(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_gripper/MoveGoal.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_gripperMoveGoal Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_gripperMoveGoal value = ReadRos1Xarm_gripperMoveGoal(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_gripper/MoveGoal component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_gripperMoveGoal(_Codecs.Writer writer, _Ros1Xarm_gripperMoveGoal value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@target_pulse;

        WriteFloat32(writer, part0);
        float part1 = value.@pulse_speed;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one xarm_gripper/MoveGoal candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_gripperMoveGoal ReadRos1Xarm_gripperMoveGoal(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_gripperMoveGoal();
        value.@target_pulse = ReadFloat32(reader);
        value.@pulse_speed = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_gripper/MoveResult fields.
     * @details 2 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_gripperMoveResult
    {
        public bool @success = false;
        public short @err_code = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_gripper/MoveResult.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_gripperMoveResult()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_gripper/MoveResult fields.
     * @details 2 ordered fields, canonical extent 3..3 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_gripperMoveResultCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_gripperMoveResult>
    {
        public static readonly Ros1Xarm_gripperMoveResultCodec Instance = new Ros1Xarm_gripperMoveResultCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_gripper/MoveResult.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_gripperMoveResultCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_gripper/MoveResult";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c";
        public const int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;

        /**
         * @brief Encode the complete ordered value for xarm_gripper/MoveResult.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_gripperMoveResult value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_gripperMoveResult(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_gripper/MoveResult.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_gripperMoveResult Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_gripperMoveResult value = ReadRos1Xarm_gripperMoveResult(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_gripper/MoveResult component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_gripperMoveResult(_Codecs.Writer writer, _Ros1Xarm_gripperMoveResult value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        bool part0 = value.@success;
        writer.Unsigned(part0 ? 1UL : 0UL, 1);
        short part1 = value.@err_code;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_gripper/MoveResult candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_gripperMoveResult ReadRos1Xarm_gripperMoveResult(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_gripperMoveResult();
        value.@success = ReadBool(reader);
        value.@err_code = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_gripper/MoveFeedback fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_gripperMoveFeedback
    {
        public float @current_pulse = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_gripper/MoveFeedback.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_gripperMoveFeedback()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_gripper/MoveFeedback fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_gripperMoveFeedbackCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_gripperMoveFeedback>
    {
        public static readonly Ros1Xarm_gripperMoveFeedbackCodec Instance = new Ros1Xarm_gripperMoveFeedbackCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_gripper/MoveFeedback.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_gripperMoveFeedbackCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_gripper/MoveFeedback";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_gripper/MoveFeedback.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_gripperMoveFeedback value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_gripperMoveFeedback(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_gripper/MoveFeedback.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_gripperMoveFeedback Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_gripperMoveFeedback value = ReadRos1Xarm_gripperMoveFeedback(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_gripper/MoveFeedback component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_gripperMoveFeedback(_Codecs.Writer writer, _Ros1Xarm_gripperMoveFeedback value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@current_pulse;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one xarm_gripper/MoveFeedback candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_gripperMoveFeedback ReadRos1Xarm_gripperMoveFeedback(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_gripperMoveFeedback();
        value.@current_pulse = ReadFloat32(reader);
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
     * @brief Preserve all original xarm_msgs/CIOState fields.
     * @details 9 ordered fields, canonical extent 76..332 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsCIOState
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
        public short @state = 0;
        public short @code = 0;
        public ushort[] @input_digitals = new ushort[2];
        public ushort[] @output_digitals = new ushort[2];
        public float[] @input_analogs = new float[2];
        public float[] @output_analogs = new float[2];
        public byte[] @input_conf = new byte[16];
        public byte[] @output_conf = new byte[16];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/CIOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsCIOState()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/CIOState fields.
     * @details 9 ordered fields, canonical extent 76..332 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsCIOStateCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsCIOState>
    {
        public static readonly Ros1Xarm_msgsCIOStateCodec Instance = new Ros1Xarm_msgsCIOStateCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/CIOState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsCIOStateCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/CIOState";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057";
        public const int MIN_WIRE_BYTES = 76, MAX_WIRE_BYTES = 332;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/CIOState.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsCIOState value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsCIOState(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/CIOState.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsCIOState Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsCIOState value = ReadRos1Xarm_msgsCIOState(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/CIOState component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsCIOState(_Codecs.Writer writer, _Ros1Xarm_msgsCIOState value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        _Ros1Std_msgsHeader part0 = value.@header;

        WriteRos1Std_msgsHeader(writer, part0);
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
     * @brief Read one xarm_msgs/CIOState candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsCIOState ReadRos1Xarm_msgsCIOState(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsCIOState();
        value.@header = ReadRos1Std_msgsHeader(reader);
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
     * @details 11 ordered fields, canonical extent 82..366 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsRobotMsg
    {
        public _Ros1Std_msgsHeader @header = new _Ros1Std_msgsHeader();
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
     * @details 11 ordered fields, canonical extent 82..366 bytes. Declared defaults and finite quotas remain
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
        public const string CODEC_IDENTITY = "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb";
        public const int MIN_WIRE_BYTES = 82, MAX_WIRE_BYTES = 366;

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
        _Ros1Std_msgsHeader part0 = value.@header;

        WriteRos1Std_msgsHeader(writer, part0);
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
        value.@header = ReadRos1Std_msgsHeader(reader);
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
     * @brief Preserve all original xarm_msgs/VeloMoveMsg fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsVeloMoveMsg
    {
        public float[] @speeds = new float[0];
        public bool @is_sync = false;
        public bool @is_tool_coord = false;
        public float @duration = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/VeloMoveMsg.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsVeloMoveMsg()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/VeloMoveMsg fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsVeloMoveMsgCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsVeloMoveMsg>
    {
        public static readonly Ros1Xarm_msgsVeloMoveMsgCodec Instance = new Ros1Xarm_msgsVeloMoveMsgCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/VeloMoveMsg.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsVeloMoveMsgCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/VeloMoveMsg";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/VeloMoveMsg.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsVeloMoveMsg value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsVeloMoveMsg(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/VeloMoveMsg.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsVeloMoveMsg Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsVeloMoveMsg value = ReadRos1Xarm_msgsVeloMoveMsg(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/VeloMoveMsg component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsVeloMoveMsg(_Codecs.Writer writer, _Ros1Xarm_msgsVeloMoveMsg value)
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
     * @brief Read one xarm_msgs/VeloMoveMsg candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsVeloMoveMsg ReadRos1Xarm_msgsVeloMoveMsg(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsVeloMoveMsg();
        value.@speeds = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@speeds.Length; ++index)
            value.@speeds[index] = ReadFloat32(reader);
        value.@is_sync = ReadBool(reader);
        value.@is_tool_coord = ReadBool(reader);
        value.@duration = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/CallRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsCallRequest
    {
        /**
         * @brief Issue one explicit operation for xarm_msgs/CallRequest.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsCallRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/CallRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsCallRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsCallRequest>
    {
        public static readonly Ros1Xarm_msgsCallRequestCodec Instance = new Ros1Xarm_msgsCallRequestCodec();

        /**
         * @brief Issue one explicit operation for xarm_msgs/CallRequest.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsCallRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/CallRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/CallRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsCallRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsCallRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/CallRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsCallRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsCallRequest value = ReadRos1Xarm_msgsCallRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/CallRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsCallRequest(_Codecs.Writer writer, _Ros1Xarm_msgsCallRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/CallRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsCallRequest ReadRos1Xarm_msgsCallRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsCallRequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/CallResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsCallResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Issue one explicit operation for xarm_msgs/CallResponse.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsCallResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/CallResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsCallResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsCallResponse>
    {
        public static readonly Ros1Xarm_msgsCallResponseCodec Instance = new Ros1Xarm_msgsCallResponseCodec();

        /**
         * @brief Issue one explicit operation for xarm_msgs/CallResponse.
         * @details The caller supplies an already granted exact operation alias and a complete bounded
         * component. Preserve full-width correlation/ticket identifiers. An admitted operation is never
         * silently replayed; a timeout is not evidence of rollback or actuator completion.
         * @return Original operation status with its independent presence/required-length facts; no fallback
         * response.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsCallResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/CallResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/CallResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsCallResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsCallResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/CallResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsCallResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsCallResponse value = ReadRos1Xarm_msgsCallResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/CallResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsCallResponse(_Codecs.Writer writer, _Ros1Xarm_msgsCallResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/CallResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsCallResponse ReadRos1Xarm_msgsCallResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsCallResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
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
     * @brief Preserve all original xarm_msgs/ConfigToolModbusRequest fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsConfigToolModbusRequest
    {
        public int @baud_rate = 0;
        public int @timeout_ms = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ConfigToolModbusRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsConfigToolModbusRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/ConfigToolModbusRequest fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsConfigToolModbusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsConfigToolModbusRequest>
    {
        public static readonly Ros1Xarm_msgsConfigToolModbusRequestCodec Instance = new Ros1Xarm_msgsConfigToolModbusRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ConfigToolModbusRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsConfigToolModbusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/ConfigToolModbusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/ConfigToolModbusRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsConfigToolModbusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsConfigToolModbusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/ConfigToolModbusRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsConfigToolModbusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsConfigToolModbusRequest value = ReadRos1Xarm_msgsConfigToolModbusRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/ConfigToolModbusRequest component into checked staging
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
    private static void WriteRos1Xarm_msgsConfigToolModbusRequest(_Codecs.Writer writer, _Ros1Xarm_msgsConfigToolModbusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@baud_rate;
        writer.Unsigned(unchecked((uint)part0), 4);
        int part1 = value.@timeout_ms;
        writer.Unsigned(unchecked((uint)part1), 4);
    }

    /**
     * @brief Read one xarm_msgs/ConfigToolModbusRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsConfigToolModbusRequest ReadRos1Xarm_msgsConfigToolModbusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsConfigToolModbusRequest();
        value.@baud_rate = unchecked((int)reader.Unsigned(4));
        value.@timeout_ms = unchecked((int)reader.Unsigned(4));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/ConfigToolModbusResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsConfigToolModbusResponse
    {
        public string @message = "";
        public short @ret = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ConfigToolModbusResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsConfigToolModbusResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/ConfigToolModbusResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsConfigToolModbusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsConfigToolModbusResponse>
    {
        public static readonly Ros1Xarm_msgsConfigToolModbusResponseCodec Instance = new Ros1Xarm_msgsConfigToolModbusResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/ConfigToolModbusResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsConfigToolModbusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/ConfigToolModbusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/ConfigToolModbusResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsConfigToolModbusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsConfigToolModbusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/ConfigToolModbusResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsConfigToolModbusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsConfigToolModbusResponse value = ReadRos1Xarm_msgsConfigToolModbusResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/ConfigToolModbusResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsConfigToolModbusResponse(_Codecs.Writer writer, _Ros1Xarm_msgsConfigToolModbusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message;

        WriteText(writer, part0, 256);
        short part1 = value.@ret;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_msgs/ConfigToolModbusResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsConfigToolModbusResponse ReadRos1Xarm_msgsConfigToolModbusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsConfigToolModbusResponse();
        value.@message = ReadText(reader, 256);
        value.@ret = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/FtCaliLoadRequest fields.
     * @details 2 ordered fields, canonical extent 5..133 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsFtCaliLoadRequest
    {
        public float[] @datas = new float[0];
        public bool @association_setting_tcp_load = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtCaliLoadRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtCaliLoadRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/FtCaliLoadRequest fields.
     * @details 2 ordered fields, canonical extent 5..133 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsFtCaliLoadRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsFtCaliLoadRequest>
    {
        public static readonly Ros1Xarm_msgsFtCaliLoadRequestCodec Instance = new Ros1Xarm_msgsFtCaliLoadRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtCaliLoadRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsFtCaliLoadRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/FtCaliLoadRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/FtCaliLoadRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsFtCaliLoadRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsFtCaliLoadRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/FtCaliLoadRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtCaliLoadRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsFtCaliLoadRequest value = ReadRos1Xarm_msgsFtCaliLoadRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/FtCaliLoadRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsFtCaliLoadRequest(_Codecs.Writer writer, _Ros1Xarm_msgsFtCaliLoadRequest value)
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
    }

    /**
     * @brief Read one xarm_msgs/FtCaliLoadRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsFtCaliLoadRequest ReadRos1Xarm_msgsFtCaliLoadRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsFtCaliLoadRequest();
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
        value.@association_setting_tcp_load = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/FtCaliLoadResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsFtCaliLoadResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtCaliLoadResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtCaliLoadResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/FtCaliLoadResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsFtCaliLoadResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsFtCaliLoadResponse>
    {
        public static readonly Ros1Xarm_msgsFtCaliLoadResponseCodec Instance = new Ros1Xarm_msgsFtCaliLoadResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtCaliLoadResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsFtCaliLoadResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/FtCaliLoadResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/FtCaliLoadResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsFtCaliLoadResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsFtCaliLoadResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/FtCaliLoadResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtCaliLoadResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsFtCaliLoadResponse value = ReadRos1Xarm_msgsFtCaliLoadResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/FtCaliLoadResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsFtCaliLoadResponse(_Codecs.Writer writer, _Ros1Xarm_msgsFtCaliLoadResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/FtCaliLoadResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsFtCaliLoadResponse ReadRos1Xarm_msgsFtCaliLoadResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsFtCaliLoadResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/FtIdenLoadRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsFtIdenLoadRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtIdenLoadRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtIdenLoadRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/FtIdenLoadRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsFtIdenLoadRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsFtIdenLoadRequest>
    {
        public static readonly Ros1Xarm_msgsFtIdenLoadRequestCodec Instance = new Ros1Xarm_msgsFtIdenLoadRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtIdenLoadRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsFtIdenLoadRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/FtIdenLoadRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/FtIdenLoadRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsFtIdenLoadRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsFtIdenLoadRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/FtIdenLoadRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtIdenLoadRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsFtIdenLoadRequest value = ReadRos1Xarm_msgsFtIdenLoadRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/FtIdenLoadRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsFtIdenLoadRequest(_Codecs.Writer writer, _Ros1Xarm_msgsFtIdenLoadRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/FtIdenLoadRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsFtIdenLoadRequest ReadRos1Xarm_msgsFtIdenLoadRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsFtIdenLoadRequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/FtIdenLoadResponse fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsFtIdenLoadResponse
    {
        public short @ret = 0;
        public string @message = "";
        public float[] @datas = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtIdenLoadResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtIdenLoadResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/FtIdenLoadResponse fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsFtIdenLoadResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsFtIdenLoadResponse>
    {
        public static readonly Ros1Xarm_msgsFtIdenLoadResponseCodec Instance = new Ros1Xarm_msgsFtIdenLoadResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/FtIdenLoadResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsFtIdenLoadResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/FtIdenLoadResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/FtIdenLoadResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsFtIdenLoadResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsFtIdenLoadResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/FtIdenLoadResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsFtIdenLoadResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsFtIdenLoadResponse value = ReadRos1Xarm_msgsFtIdenLoadResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/FtIdenLoadResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsFtIdenLoadResponse(_Codecs.Writer writer, _Ros1Xarm_msgsFtIdenLoadResponse value)
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
     * @brief Read one xarm_msgs/FtIdenLoadResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsFtIdenLoadResponse ReadRos1Xarm_msgsFtIdenLoadResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsFtIdenLoadResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
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
     * @brief Preserve all original xarm_msgs/GetControllerDigitalIORequest fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetControllerDigitalIORequest
    {
        public short @io_num = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetControllerDigitalIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetControllerDigitalIORequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetControllerDigitalIORequest fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetControllerDigitalIORequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetControllerDigitalIORequest>
    {
        public static readonly Ros1Xarm_msgsGetControllerDigitalIORequestCodec Instance = new Ros1Xarm_msgsGetControllerDigitalIORequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetControllerDigitalIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetControllerDigitalIORequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetControllerDigitalIORequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
        public const int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetControllerDigitalIORequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetControllerDigitalIORequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetControllerDigitalIORequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetControllerDigitalIORequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetControllerDigitalIORequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetControllerDigitalIORequest value = ReadRos1Xarm_msgsGetControllerDigitalIORequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetControllerDigitalIORequest component into checked staging
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
    private static void WriteRos1Xarm_msgsGetControllerDigitalIORequest(_Codecs.Writer writer, _Ros1Xarm_msgsGetControllerDigitalIORequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@io_num;
        writer.Unsigned(unchecked((ushort)part0), 2);
    }

    /**
     * @brief Read one xarm_msgs/GetControllerDigitalIORequest candidate through the checked canonical
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
    private static _Ros1Xarm_msgsGetControllerDigitalIORequest ReadRos1Xarm_msgsGetControllerDigitalIORequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetControllerDigitalIORequest();
        value.@io_num = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetControllerDigitalIOResponse fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetControllerDigitalIOResponse
    {
        public short @ret = 0;
        public short @value = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetControllerDigitalIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetControllerDigitalIOResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetControllerDigitalIOResponse fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetControllerDigitalIOResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetControllerDigitalIOResponse>
    {
        public static readonly Ros1Xarm_msgsGetControllerDigitalIOResponseCodec Instance = new Ros1Xarm_msgsGetControllerDigitalIOResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetControllerDigitalIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetControllerDigitalIOResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetControllerDigitalIOResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetControllerDigitalIOResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetControllerDigitalIOResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetControllerDigitalIOResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetControllerDigitalIOResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetControllerDigitalIOResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            /**
             * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
             * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            _Ros1Xarm_msgsGetControllerDigitalIOResponse value = ReadRos1Xarm_msgsGetControllerDigitalIOResponse(reader);
            reader.End();
            /**
             * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
             * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame.
             * Full value checks occur before successful encoding; construction grants no authority.
             */
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetControllerDigitalIOResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsGetControllerDigitalIOResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGetControllerDigitalIOResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@value;
        writer.Unsigned(unchecked((ushort)part1), 2);
        string part2 = value.@message;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one xarm_msgs/GetControllerDigitalIOResponse candidate through the checked canonical
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
    private static _Ros1Xarm_msgsGetControllerDigitalIOResponse ReadRos1Xarm_msgsGetControllerDigitalIOResponse(_Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        var value = new _Ros1Xarm_msgsGetControllerDigitalIOResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@value = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
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
     * @brief Preserve all original xarm_msgs/GetErrRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetErrRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetErrRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetErrRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetErrRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetErrRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetErrRequest>
    {
        public static readonly Ros1Xarm_msgsGetErrRequestCodec Instance = new Ros1Xarm_msgsGetErrRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetErrRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetErrRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetErrRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetErrRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetErrRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetErrRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetErrRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetErrRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetErrRequest value = ReadRos1Xarm_msgsGetErrRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetErrRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGetErrRequest(_Codecs.Writer writer, _Ros1Xarm_msgsGetErrRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/GetErrRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetErrRequest ReadRos1Xarm_msgsGetErrRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetErrRequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetErrResponse fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetErrResponse
    {
        public short @err = 0;
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetErrResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetErrResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetErrResponse fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetErrResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetErrResponse>
    {
        public static readonly Ros1Xarm_msgsGetErrResponseCodec Instance = new Ros1Xarm_msgsGetErrResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetErrResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetErrResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetErrResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetErrResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetErrResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetErrResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetErrResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetErrResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetErrResponse value = ReadRos1Xarm_msgsGetErrResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetErrResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGetErrResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGetErrResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@err;
        writer.Unsigned(unchecked((ushort)part0), 2);
        short part1 = value.@ret;
        writer.Unsigned(unchecked((ushort)part1), 2);
        string part2 = value.@message;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one xarm_msgs/GetErrResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetErrResponse ReadRos1Xarm_msgsGetErrResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetErrResponse();
        value.@err = unchecked((short)reader.Unsigned(2));
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetFloat32ListRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetFloat32ListRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetFloat32ListRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetFloat32ListRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetFloat32ListRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetFloat32ListRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetFloat32ListRequest>
    {
        public static readonly Ros1Xarm_msgsGetFloat32ListRequestCodec Instance = new Ros1Xarm_msgsGetFloat32ListRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetFloat32ListRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetFloat32ListRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetFloat32ListRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetFloat32ListRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetFloat32ListRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetFloat32ListRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetFloat32ListRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetFloat32ListRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetFloat32ListRequest value = ReadRos1Xarm_msgsGetFloat32ListRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetFloat32ListRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGetFloat32ListRequest(_Codecs.Writer writer, _Ros1Xarm_msgsGetFloat32ListRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/GetFloat32ListRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetFloat32ListRequest ReadRos1Xarm_msgsGetFloat32ListRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetFloat32ListRequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetFloat32ListResponse fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetFloat32ListResponse
    {
        public short @ret = 0;
        public string @message = "";
        public float[] @datas = new float[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetFloat32ListResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetFloat32ListResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetFloat32ListResponse fields.
     * @details 3 ordered fields, canonical extent 10..394 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetFloat32ListResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetFloat32ListResponse>
    {
        public static readonly Ros1Xarm_msgsGetFloat32ListResponseCodec Instance = new Ros1Xarm_msgsGetFloat32ListResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetFloat32ListResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetFloat32ListResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetFloat32ListResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetFloat32ListResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetFloat32ListResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetFloat32ListResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetFloat32ListResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetFloat32ListResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetFloat32ListResponse value = ReadRos1Xarm_msgsGetFloat32ListResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetFloat32ListResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGetFloat32ListResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGetFloat32ListResponse value)
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
     * @brief Read one xarm_msgs/GetFloat32ListResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetFloat32ListResponse ReadRos1Xarm_msgsGetFloat32ListResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetFloat32ListResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@datas = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@datas.Length; ++index)
            value.@datas[index] = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetInt32Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetInt32Request
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetInt32Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetInt32Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetInt32Request fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetInt32RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetInt32Request>
    {
        public static readonly Ros1Xarm_msgsGetInt32RequestCodec Instance = new Ros1Xarm_msgsGetInt32RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetInt32Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetInt32RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetInt32Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetInt32Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetInt32Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetInt32Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetInt32Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetInt32Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetInt32Request value = ReadRos1Xarm_msgsGetInt32Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetInt32Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGetInt32Request(_Codecs.Writer writer, _Ros1Xarm_msgsGetInt32Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/GetInt32Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetInt32Request ReadRos1Xarm_msgsGetInt32Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetInt32Request();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetInt32Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetInt32Response
    {
        public int @data = 0;
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetInt32Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetInt32Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetInt32Response fields.
     * @details 3 ordered fields, canonical extent 10..266 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetInt32ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetInt32Response>
    {
        public static readonly Ros1Xarm_msgsGetInt32ResponseCodec Instance = new Ros1Xarm_msgsGetInt32ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetInt32Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetInt32ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetInt32Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetInt32Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetInt32Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetInt32Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetInt32Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetInt32Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetInt32Response value = ReadRos1Xarm_msgsGetInt32Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetInt32Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGetInt32Response(_Codecs.Writer writer, _Ros1Xarm_msgsGetInt32Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@data;
        writer.Unsigned(unchecked((uint)part0), 4);
        short part1 = value.@ret;
        writer.Unsigned(unchecked((ushort)part1), 2);
        string part2 = value.@message;

        WriteText(writer, part2, 256);
    }

    /**
     * @brief Read one xarm_msgs/GetInt32Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetInt32Response ReadRos1Xarm_msgsGetInt32Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetInt32Response();
        value.@data = unchecked((int)reader.Unsigned(4));
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetSetModbusDataRequest fields.
     * @details 5 ordered fields, canonical extent 9..4105 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetSetModbusDataRequest
    {
        public byte[] @send_data = new byte[0];
        public short @respond_len = 0;
        public byte @host_id = 0;
        public bool @is_transparent_transmission = false;
        public bool @use_503_port = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetSetModbusDataRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetSetModbusDataRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetSetModbusDataRequest fields.
     * @details 5 ordered fields, canonical extent 9..4105 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetSetModbusDataRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetSetModbusDataRequest>
    {
        public static readonly Ros1Xarm_msgsGetSetModbusDataRequestCodec Instance = new Ros1Xarm_msgsGetSetModbusDataRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetSetModbusDataRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetSetModbusDataRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetSetModbusDataRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7";
        public const int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 4105;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetSetModbusDataRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetSetModbusDataRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetSetModbusDataRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetSetModbusDataRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetSetModbusDataRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetSetModbusDataRequest value = ReadRos1Xarm_msgsGetSetModbusDataRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetSetModbusDataRequest component into checked staging
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
    private static void WriteRos1Xarm_msgsGetSetModbusDataRequest(_Codecs.Writer writer, _Ros1Xarm_msgsGetSetModbusDataRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte[] part0 = value.@send_data;
        if(part0 == null || part0.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            byte element = part0[index];
            writer.Unsigned(element, 1);
        }
        short part1 = value.@respond_len;
        writer.Unsigned(unchecked((ushort)part1), 2);
        byte part2 = value.@host_id;
        writer.Unsigned(part2, 1);
        bool part3 = value.@is_transparent_transmission;
        writer.Unsigned(part3 ? 1UL : 0UL, 1);
        bool part4 = value.@use_503_port;
        writer.Unsigned(part4 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/GetSetModbusDataRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetSetModbusDataRequest ReadRos1Xarm_msgsGetSetModbusDataRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetSetModbusDataRequest();
        value.@send_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@send_data.Length; ++index)
            value.@send_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@respond_len = unchecked((short)reader.Unsigned(2));
        value.@host_id = unchecked((byte)reader.Unsigned(1));
        value.@is_transparent_transmission = ReadBool(reader);
        value.@use_503_port = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GetSetModbusDataResponse fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGetSetModbusDataResponse
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @respond_data = new byte[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetSetModbusDataResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetSetModbusDataResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GetSetModbusDataResponse fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGetSetModbusDataResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGetSetModbusDataResponse>
    {
        public static readonly Ros1Xarm_msgsGetSetModbusDataResponseCodec Instance = new Ros1Xarm_msgsGetSetModbusDataResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GetSetModbusDataResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGetSetModbusDataResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GetSetModbusDataResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GetSetModbusDataResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGetSetModbusDataResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGetSetModbusDataResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GetSetModbusDataResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGetSetModbusDataResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGetSetModbusDataResponse value = ReadRos1Xarm_msgsGetSetModbusDataResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GetSetModbusDataResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsGetSetModbusDataResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGetSetModbusDataResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@respond_data;
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
     * @brief Read one xarm_msgs/GetSetModbusDataResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGetSetModbusDataResponse ReadRos1Xarm_msgsGetSetModbusDataResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGetSetModbusDataResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@respond_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@respond_data.Length; ++index)
            value.@respond_data[index] = unchecked((byte)reader.Unsigned(1));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperConfigRequest fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGripperConfigRequest
    {
        public float @pulse_vel = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperConfigRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperConfigRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperConfigRequest fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGripperConfigRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGripperConfigRequest>
    {
        public static readonly Ros1Xarm_msgsGripperConfigRequestCodec Instance = new Ros1Xarm_msgsGripperConfigRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperConfigRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGripperConfigRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GripperConfigRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GripperConfigRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGripperConfigRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGripperConfigRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GripperConfigRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperConfigRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGripperConfigRequest value = ReadRos1Xarm_msgsGripperConfigRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GripperConfigRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGripperConfigRequest(_Codecs.Writer writer, _Ros1Xarm_msgsGripperConfigRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@pulse_vel;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/GripperConfigRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGripperConfigRequest ReadRos1Xarm_msgsGripperConfigRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGripperConfigRequest();
        value.@pulse_vel = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperConfigResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGripperConfigResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperConfigResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperConfigResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperConfigResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGripperConfigResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGripperConfigResponse>
    {
        public static readonly Ros1Xarm_msgsGripperConfigResponseCodec Instance = new Ros1Xarm_msgsGripperConfigResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperConfigResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGripperConfigResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GripperConfigResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GripperConfigResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGripperConfigResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGripperConfigResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GripperConfigResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperConfigResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGripperConfigResponse value = ReadRos1Xarm_msgsGripperConfigResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GripperConfigResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGripperConfigResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGripperConfigResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/GripperConfigResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGripperConfigResponse ReadRos1Xarm_msgsGripperConfigResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGripperConfigResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperMoveRequest fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGripperMoveRequest
    {
        public float @pulse_pos = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperMoveRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperMoveRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperMoveRequest fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGripperMoveRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGripperMoveRequest>
    {
        public static readonly Ros1Xarm_msgsGripperMoveRequestCodec Instance = new Ros1Xarm_msgsGripperMoveRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperMoveRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGripperMoveRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GripperMoveRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GripperMoveRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGripperMoveRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGripperMoveRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GripperMoveRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperMoveRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGripperMoveRequest value = ReadRos1Xarm_msgsGripperMoveRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GripperMoveRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGripperMoveRequest(_Codecs.Writer writer, _Ros1Xarm_msgsGripperMoveRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@pulse_pos;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/GripperMoveRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGripperMoveRequest ReadRos1Xarm_msgsGripperMoveRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGripperMoveRequest();
        value.@pulse_pos = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperMoveResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGripperMoveResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperMoveResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperMoveResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperMoveResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGripperMoveResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGripperMoveResponse>
    {
        public static readonly Ros1Xarm_msgsGripperMoveResponseCodec Instance = new Ros1Xarm_msgsGripperMoveResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperMoveResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGripperMoveResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GripperMoveResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GripperMoveResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGripperMoveResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGripperMoveResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GripperMoveResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperMoveResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGripperMoveResponse value = ReadRos1Xarm_msgsGripperMoveResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GripperMoveResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGripperMoveResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGripperMoveResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/GripperMoveResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGripperMoveResponse ReadRos1Xarm_msgsGripperMoveResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGripperMoveResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperStateRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGripperStateRequest
    {
        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperStateRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperStateRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperStateRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGripperStateRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGripperStateRequest>
    {
        public static readonly Ros1Xarm_msgsGripperStateRequestCodec Instance = new Ros1Xarm_msgsGripperStateRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperStateRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGripperStateRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GripperStateRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
        public const int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GripperStateRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGripperStateRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGripperStateRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GripperStateRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperStateRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGripperStateRequest value = ReadRos1Xarm_msgsGripperStateRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GripperStateRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGripperStateRequest(_Codecs.Writer writer, _Ros1Xarm_msgsGripperStateRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
    }

    /**
     * @brief Read one xarm_msgs/GripperStateRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGripperStateRequest ReadRos1Xarm_msgsGripperStateRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGripperStateRequest();
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperStateResponse fields.
     * @details 4 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsGripperStateResponse
    {
        public short @ret = 0;
        public string @message = "";
        public float @curr_pos = 0;
        public short @err_code = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperStateResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperStateResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/GripperStateResponse fields.
     * @details 4 ordered fields, canonical extent 12..268 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsGripperStateResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsGripperStateResponse>
    {
        public static readonly Ros1Xarm_msgsGripperStateResponseCodec Instance = new Ros1Xarm_msgsGripperStateResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/GripperStateResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsGripperStateResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/GripperStateResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6";
        public const int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/GripperStateResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsGripperStateResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsGripperStateResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/GripperStateResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsGripperStateResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsGripperStateResponse value = ReadRos1Xarm_msgsGripperStateResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/GripperStateResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsGripperStateResponse(_Codecs.Writer writer, _Ros1Xarm_msgsGripperStateResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        float part2 = value.@curr_pos;

        WriteFloat32(writer, part2);
        short part3 = value.@err_code;
        writer.Unsigned(unchecked((ushort)part3), 2);
    }

    /**
     * @brief Read one xarm_msgs/GripperStateResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsGripperStateResponse ReadRos1Xarm_msgsGripperStateResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsGripperStateResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@curr_pos = ReadFloat32(reader);
        value.@err_code = unchecked((short)reader.Unsigned(2));
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
     * @brief Preserve all original xarm_msgs/MoveAxisAngleRequest fields.
     * @details 6 ordered fields, canonical extent 20..148 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveAxisAngleRequest
    {
        public float[] @pose = new float[0];
        public float @mvvelo = 0;
        public float @mvacc = 0;
        public float @mvtime = 0;
        public short @coord = 0;
        public short @relative = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveAxisAngleRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveAxisAngleRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveAxisAngleRequest fields.
     * @details 6 ordered fields, canonical extent 20..148 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveAxisAngleRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveAxisAngleRequest>
    {
        public static readonly Ros1Xarm_msgsMoveAxisAngleRequestCodec Instance = new Ros1Xarm_msgsMoveAxisAngleRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveAxisAngleRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveAxisAngleRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveAxisAngleRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30";
        public const int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveAxisAngleRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsMoveAxisAngleRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveAxisAngleRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveAxisAngleRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveAxisAngleRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveAxisAngleRequest value = ReadRos1Xarm_msgsMoveAxisAngleRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveAxisAngleRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsMoveAxisAngleRequest(_Codecs.Writer writer, _Ros1Xarm_msgsMoveAxisAngleRequest value)
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
        short part4 = value.@coord;
        writer.Unsigned(unchecked((ushort)part4), 2);
        short part5 = value.@relative;
        writer.Unsigned(unchecked((ushort)part5), 2);
    }

    /**
     * @brief Read one xarm_msgs/MoveAxisAngleRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsMoveAxisAngleRequest ReadRos1Xarm_msgsMoveAxisAngleRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveAxisAngleRequest();
        value.@pose = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@pose.Length; ++index)
            value.@pose[index] = ReadFloat32(reader);
        value.@mvvelo = ReadFloat32(reader);
        value.@mvacc = ReadFloat32(reader);
        value.@mvtime = ReadFloat32(reader);
        value.@coord = unchecked((short)reader.Unsigned(2));
        value.@relative = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveAxisAngleResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveAxisAngleResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveAxisAngleResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveAxisAngleResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveAxisAngleResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveAxisAngleResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveAxisAngleResponse>
    {
        public static readonly Ros1Xarm_msgsMoveAxisAngleResponseCodec Instance = new Ros1Xarm_msgsMoveAxisAngleResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveAxisAngleResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveAxisAngleResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveAxisAngleResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveAxisAngleResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsMoveAxisAngleResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveAxisAngleResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveAxisAngleResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveAxisAngleResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveAxisAngleResponse value = ReadRos1Xarm_msgsMoveAxisAngleResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveAxisAngleResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsMoveAxisAngleResponse(_Codecs.Writer writer, _Ros1Xarm_msgsMoveAxisAngleResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/MoveAxisAngleResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsMoveAxisAngleResponse ReadRos1Xarm_msgsMoveAxisAngleResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveAxisAngleResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVeloRequest fields.
     * @details 3 ordered fields, canonical extent 8..136 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveVeloRequest
    {
        public float[] @velocities = new float[0];
        public short @jnt_sync = 0;
        public short @coord = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVeloRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVeloRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVeloRequest fields.
     * @details 3 ordered fields, canonical extent 8..136 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveVeloRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveVeloRequest>
    {
        public static readonly Ros1Xarm_msgsMoveVeloRequestCodec Instance = new Ros1Xarm_msgsMoveVeloRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVeloRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveVeloRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveVeloRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveVeloRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsMoveVeloRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveVeloRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveVeloRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVeloRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveVeloRequest value = ReadRos1Xarm_msgsMoveVeloRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveVeloRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsMoveVeloRequest(_Codecs.Writer writer, _Ros1Xarm_msgsMoveVeloRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float[] part0 = value.@velocities;
        if(part0 == null || part0.Length > 32)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            float element = part0[index];

            WriteFloat32(writer, element);
        }
        short part1 = value.@jnt_sync;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@coord;
        writer.Unsigned(unchecked((ushort)part2), 2);
    }

    /**
     * @brief Read one xarm_msgs/MoveVeloRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsMoveVeloRequest ReadRos1Xarm_msgsMoveVeloRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveVeloRequest();
        value.@velocities = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@velocities.Length; ++index)
            value.@velocities[index] = ReadFloat32(reader);
        value.@jnt_sync = unchecked((short)reader.Unsigned(2));
        value.@coord = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVeloResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveVeloResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVeloResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVeloResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVeloResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveVeloResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveVeloResponse>
    {
        public static readonly Ros1Xarm_msgsMoveVeloResponseCodec Instance = new Ros1Xarm_msgsMoveVeloResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVeloResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveVeloResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveVeloResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveVeloResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsMoveVeloResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveVeloResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveVeloResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVeloResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveVeloResponse value = ReadRos1Xarm_msgsMoveVeloResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveVeloResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsMoveVeloResponse(_Codecs.Writer writer, _Ros1Xarm_msgsMoveVeloResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/MoveVeloResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsMoveVeloResponse ReadRos1Xarm_msgsMoveVeloResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveVeloResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVelocityRequest fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveVelocityRequest
    {
        public float[] @speeds = new float[0];
        public bool @is_sync = false;
        public bool @is_tool_coord = false;
        public float @duration = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVelocityRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVelocityRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVelocityRequest fields.
     * @details 4 ordered fields, canonical extent 10..138 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveVelocityRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveVelocityRequest>
    {
        public static readonly Ros1Xarm_msgsMoveVelocityRequestCodec Instance = new Ros1Xarm_msgsMoveVelocityRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVelocityRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveVelocityRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveVelocityRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveVelocityRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsMoveVelocityRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveVelocityRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveVelocityRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVelocityRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveVelocityRequest value = ReadRos1Xarm_msgsMoveVelocityRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveVelocityRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsMoveVelocityRequest(_Codecs.Writer writer, _Ros1Xarm_msgsMoveVelocityRequest value)
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
     * @brief Read one xarm_msgs/MoveVelocityRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsMoveVelocityRequest ReadRos1Xarm_msgsMoveVelocityRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveVelocityRequest();
        value.@speeds = new float[ReadCount(reader, 32, 4)];
        for(int index = 0; index < value.@speeds.Length; ++index)
            value.@speeds[index] = ReadFloat32(reader);
        value.@is_sync = ReadBool(reader);
        value.@is_tool_coord = ReadBool(reader);
        value.@duration = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVelocityResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsMoveVelocityResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVelocityResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVelocityResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/MoveVelocityResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsMoveVelocityResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsMoveVelocityResponse>
    {
        public static readonly Ros1Xarm_msgsMoveVelocityResponseCodec Instance = new Ros1Xarm_msgsMoveVelocityResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/MoveVelocityResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsMoveVelocityResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/MoveVelocityResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/MoveVelocityResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsMoveVelocityResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsMoveVelocityResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/MoveVelocityResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsMoveVelocityResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsMoveVelocityResponse value = ReadRos1Xarm_msgsMoveVelocityResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/MoveVelocityResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsMoveVelocityResponse(_Codecs.Writer writer, _Ros1Xarm_msgsMoveVelocityResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/MoveVelocityResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsMoveVelocityResponse ReadRos1Xarm_msgsMoveVelocityResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsMoveVelocityResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/PlayTrajRequest fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsPlayTrajRequest
    {
        public string @traj_file = "";
        public short @repeat_times = 0;
        public short @speed_factor = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/PlayTrajRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsPlayTrajRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/PlayTrajRequest fields.
     * @details 3 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsPlayTrajRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsPlayTrajRequest>
    {
        public static readonly Ros1Xarm_msgsPlayTrajRequestCodec Instance = new Ros1Xarm_msgsPlayTrajRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/PlayTrajRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsPlayTrajRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/PlayTrajRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/PlayTrajRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsPlayTrajRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsPlayTrajRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/PlayTrajRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsPlayTrajRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsPlayTrajRequest value = ReadRos1Xarm_msgsPlayTrajRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/PlayTrajRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsPlayTrajRequest(_Codecs.Writer writer, _Ros1Xarm_msgsPlayTrajRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@traj_file;

        WriteText(writer, part0, 256);
        short part1 = value.@repeat_times;
        writer.Unsigned(unchecked((ushort)part1), 2);
        short part2 = value.@speed_factor;
        writer.Unsigned(unchecked((ushort)part2), 2);
    }

    /**
     * @brief Read one xarm_msgs/PlayTrajRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsPlayTrajRequest ReadRos1Xarm_msgsPlayTrajRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsPlayTrajRequest();
        value.@traj_file = ReadText(reader, 256);
        value.@repeat_times = unchecked((short)reader.Unsigned(2));
        value.@speed_factor = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/PlayTrajResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsPlayTrajResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/PlayTrajResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsPlayTrajResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/PlayTrajResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsPlayTrajResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsPlayTrajResponse>
    {
        public static readonly Ros1Xarm_msgsPlayTrajResponseCodec Instance = new Ros1Xarm_msgsPlayTrajResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/PlayTrajResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsPlayTrajResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/PlayTrajResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/PlayTrajResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsPlayTrajResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsPlayTrajResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/PlayTrajResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsPlayTrajResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsPlayTrajResponse value = ReadRos1Xarm_msgsPlayTrajResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/PlayTrajResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsPlayTrajResponse(_Codecs.Writer writer, _Ros1Xarm_msgsPlayTrajResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/PlayTrajResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsPlayTrajResponse ReadRos1Xarm_msgsPlayTrajResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsPlayTrajResponse();
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
     * @brief Preserve all original xarm_msgs/SetControllerAnalogIORequest fields.
     * @details 2 ordered fields, canonical extent 6..6 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetControllerAnalogIORequest
    {
        public short @port_num = 0;
        public float @analog_value = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetControllerAnalogIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetControllerAnalogIORequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetControllerAnalogIORequest fields.
     * @details 2 ordered fields, canonical extent 6..6 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetControllerAnalogIORequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetControllerAnalogIORequest>
    {
        public static readonly Ros1Xarm_msgsSetControllerAnalogIORequestCodec Instance = new Ros1Xarm_msgsSetControllerAnalogIORequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetControllerAnalogIORequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetControllerAnalogIORequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetControllerAnalogIORequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetControllerAnalogIORequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetControllerAnalogIORequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetControllerAnalogIORequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetControllerAnalogIORequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetControllerAnalogIORequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetControllerAnalogIORequest value = ReadRos1Xarm_msgsSetControllerAnalogIORequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetControllerAnalogIORequest component into checked staging
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
    private static void WriteRos1Xarm_msgsSetControllerAnalogIORequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetControllerAnalogIORequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@port_num;
        writer.Unsigned(unchecked((ushort)part0), 2);
        float part1 = value.@analog_value;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one xarm_msgs/SetControllerAnalogIORequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetControllerAnalogIORequest ReadRos1Xarm_msgsSetControllerAnalogIORequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetControllerAnalogIORequest();
        value.@port_num = unchecked((short)reader.Unsigned(2));
        value.@analog_value = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetControllerAnalogIOResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetControllerAnalogIOResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetControllerAnalogIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetControllerAnalogIOResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetControllerAnalogIOResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetControllerAnalogIOResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetControllerAnalogIOResponse>
    {
        public static readonly Ros1Xarm_msgsSetControllerAnalogIOResponseCodec Instance = new Ros1Xarm_msgsSetControllerAnalogIOResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetControllerAnalogIOResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetControllerAnalogIOResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetControllerAnalogIOResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetControllerAnalogIOResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetControllerAnalogIOResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetControllerAnalogIOResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetControllerAnalogIOResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetControllerAnalogIOResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetControllerAnalogIOResponse value = ReadRos1Xarm_msgsSetControllerAnalogIOResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetControllerAnalogIOResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsSetControllerAnalogIOResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetControllerAnalogIOResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetControllerAnalogIOResponse candidate through the checked canonical
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
    private static _Ros1Xarm_msgsSetControllerAnalogIOResponse ReadRos1Xarm_msgsSetControllerAnalogIOResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetControllerAnalogIOResponse();
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
     * @brief Preserve all original xarm_msgs/SetFloat32Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetFloat32Request
    {
        public float @data = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetFloat32Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetFloat32Request()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetFloat32Request fields.
     * @details 1 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetFloat32RequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetFloat32Request>
    {
        public static readonly Ros1Xarm_msgsSetFloat32RequestCodec Instance = new Ros1Xarm_msgsSetFloat32RequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetFloat32Request.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetFloat32RequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetFloat32Request";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetFloat32Request.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetFloat32Request value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetFloat32Request(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetFloat32Request.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetFloat32Request Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetFloat32Request value = ReadRos1Xarm_msgsSetFloat32Request(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetFloat32Request component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetFloat32Request(_Codecs.Writer writer, _Ros1Xarm_msgsSetFloat32Request value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@data;

        WriteFloat32(writer, part0);
    }

    /**
     * @brief Read one xarm_msgs/SetFloat32Request candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetFloat32Request ReadRos1Xarm_msgsSetFloat32Request(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetFloat32Request();
        value.@data = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetFloat32Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetFloat32Response
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetFloat32Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetFloat32Response()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetFloat32Response fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetFloat32ResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetFloat32Response>
    {
        public static readonly Ros1Xarm_msgsSetFloat32ResponseCodec Instance = new Ros1Xarm_msgsSetFloat32ResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetFloat32Response.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetFloat32ResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetFloat32Response";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetFloat32Response.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetFloat32Response value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetFloat32Response(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetFloat32Response.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetFloat32Response Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetFloat32Response value = ReadRos1Xarm_msgsSetFloat32Response(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetFloat32Response component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetFloat32Response(_Codecs.Writer writer, _Ros1Xarm_msgsSetFloat32Response value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetFloat32Response candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetFloat32Response ReadRos1Xarm_msgsSetFloat32Response(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetFloat32Response();
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
     * @brief Preserve all original xarm_msgs/SetLoadRequest fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetLoadRequest
    {
        public float @mass = 0;
        public float @xc = 0;
        public float @yc = 0;
        public float @zc = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetLoadRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetLoadRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetLoadRequest fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetLoadRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetLoadRequest>
    {
        public static readonly Ros1Xarm_msgsSetLoadRequestCodec Instance = new Ros1Xarm_msgsSetLoadRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetLoadRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetLoadRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetLoadRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
        public const int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetLoadRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetLoadRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetLoadRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetLoadRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetLoadRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetLoadRequest value = ReadRos1Xarm_msgsSetLoadRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetLoadRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetLoadRequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetLoadRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        float part0 = value.@mass;

        WriteFloat32(writer, part0);
        float part1 = value.@xc;

        WriteFloat32(writer, part1);
        float part2 = value.@yc;

        WriteFloat32(writer, part2);
        float part3 = value.@zc;

        WriteFloat32(writer, part3);
    }

    /**
     * @brief Read one xarm_msgs/SetLoadRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetLoadRequest ReadRos1Xarm_msgsSetLoadRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetLoadRequest();
        value.@mass = ReadFloat32(reader);
        value.@xc = ReadFloat32(reader);
        value.@yc = ReadFloat32(reader);
        value.@zc = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetLoadResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetLoadResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetLoadResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetLoadResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetLoadResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetLoadResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetLoadResponse>
    {
        public static readonly Ros1Xarm_msgsSetLoadResponseCodec Instance = new Ros1Xarm_msgsSetLoadResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetLoadResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetLoadResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetLoadResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetLoadResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetLoadResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetLoadResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetLoadResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetLoadResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetLoadResponse value = ReadRos1Xarm_msgsSetLoadResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetLoadResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetLoadResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetLoadResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetLoadResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetLoadResponse ReadRos1Xarm_msgsSetLoadResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetLoadResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetModbusTimeoutRequest fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetModbusTimeoutRequest
    {
        public int @timeout_ms = 0;
        public bool @is_transparent_transmission = false;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetModbusTimeoutRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetModbusTimeoutRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetModbusTimeoutRequest fields.
     * @details 2 ordered fields, canonical extent 5..5 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetModbusTimeoutRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetModbusTimeoutRequest>
    {
        public static readonly Ros1Xarm_msgsSetModbusTimeoutRequestCodec Instance = new Ros1Xarm_msgsSetModbusTimeoutRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetModbusTimeoutRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetModbusTimeoutRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetModbusTimeoutRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd";
        public const int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetModbusTimeoutRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetModbusTimeoutRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetModbusTimeoutRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetModbusTimeoutRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetModbusTimeoutRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetModbusTimeoutRequest value = ReadRos1Xarm_msgsSetModbusTimeoutRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetModbusTimeoutRequest component into checked staging
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
    private static void WriteRos1Xarm_msgsSetModbusTimeoutRequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetModbusTimeoutRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        int part0 = value.@timeout_ms;
        writer.Unsigned(unchecked((uint)part0), 4);
        bool part1 = value.@is_transparent_transmission;
        writer.Unsigned(part1 ? 1UL : 0UL, 1);
    }

    /**
     * @brief Read one xarm_msgs/SetModbusTimeoutRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetModbusTimeoutRequest ReadRos1Xarm_msgsSetModbusTimeoutRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetModbusTimeoutRequest();
        value.@timeout_ms = unchecked((int)reader.Unsigned(4));
        value.@is_transparent_transmission = ReadBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetModbusTimeoutResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetModbusTimeoutResponse
    {
        public string @message = "";
        public short @ret = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetModbusTimeoutResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetModbusTimeoutResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetModbusTimeoutResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetModbusTimeoutResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetModbusTimeoutResponse>
    {
        public static readonly Ros1Xarm_msgsSetModbusTimeoutResponseCodec Instance = new Ros1Xarm_msgsSetModbusTimeoutResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetModbusTimeoutResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetModbusTimeoutResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetModbusTimeoutResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetModbusTimeoutResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetModbusTimeoutResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetModbusTimeoutResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetModbusTimeoutResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetModbusTimeoutResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetModbusTimeoutResponse value = ReadRos1Xarm_msgsSetModbusTimeoutResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetModbusTimeoutResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsSetModbusTimeoutResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetModbusTimeoutResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@message;

        WriteText(writer, part0, 256);
        short part1 = value.@ret;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_msgs/SetModbusTimeoutResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetModbusTimeoutResponse ReadRos1Xarm_msgsSetModbusTimeoutResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetModbusTimeoutResponse();
        value.@message = ReadText(reader, 256);
        value.@ret = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetMultipleIntsRequest fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetMultipleIntsRequest
    {
        public short[] @data_int = new short[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetMultipleIntsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetMultipleIntsRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetMultipleIntsRequest fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetMultipleIntsRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetMultipleIntsRequest>
    {
        public static readonly Ros1Xarm_msgsSetMultipleIntsRequestCodec Instance = new Ros1Xarm_msgsSetMultipleIntsRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetMultipleIntsRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetMultipleIntsRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetMultipleIntsRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1";
        public const int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetMultipleIntsRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetMultipleIntsRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetMultipleIntsRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetMultipleIntsRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetMultipleIntsRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetMultipleIntsRequest value = ReadRos1Xarm_msgsSetMultipleIntsRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetMultipleIntsRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetMultipleIntsRequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetMultipleIntsRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short[] part0 = value.@data_int;
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
     * @brief Read one xarm_msgs/SetMultipleIntsRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetMultipleIntsRequest ReadRos1Xarm_msgsSetMultipleIntsRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetMultipleIntsRequest();
        value.@data_int = new short[ReadCount(reader, 32, 2)];
        for(int index = 0; index < value.@data_int.Length; ++index)
            value.@data_int[index] = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetMultipleIntsResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetMultipleIntsResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetMultipleIntsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetMultipleIntsResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetMultipleIntsResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetMultipleIntsResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetMultipleIntsResponse>
    {
        public static readonly Ros1Xarm_msgsSetMultipleIntsResponseCodec Instance = new Ros1Xarm_msgsSetMultipleIntsResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetMultipleIntsResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetMultipleIntsResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetMultipleIntsResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetMultipleIntsResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetMultipleIntsResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetMultipleIntsResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetMultipleIntsResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetMultipleIntsResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetMultipleIntsResponse value = ReadRos1Xarm_msgsSetMultipleIntsResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetMultipleIntsResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsSetMultipleIntsResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetMultipleIntsResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetMultipleIntsResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetMultipleIntsResponse ReadRos1Xarm_msgsSetMultipleIntsResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetMultipleIntsResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetStringRequest fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetStringRequest
    {
        public string @str_data = "";
        public float @timeout = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetStringRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetStringRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetStringRequest fields.
     * @details 2 ordered fields, canonical extent 8..264 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetStringRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetStringRequest>
    {
        public static readonly Ros1Xarm_msgsSetStringRequestCodec Instance = new Ros1Xarm_msgsSetStringRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetStringRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetStringRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetStringRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f";
        public const int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetStringRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetStringRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetStringRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetStringRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetStringRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetStringRequest value = ReadRos1Xarm_msgsSetStringRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetStringRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetStringRequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetStringRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        string part0 = value.@str_data;

        WriteText(writer, part0, 256);
        float part1 = value.@timeout;

        WriteFloat32(writer, part1);
    }

    /**
     * @brief Read one xarm_msgs/SetStringRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetStringRequest ReadRos1Xarm_msgsSetStringRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetStringRequest();
        value.@str_data = ReadText(reader, 256);
        value.@timeout = ReadFloat32(reader);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetStringResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetStringResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetStringResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetStringResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetStringResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetStringResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetStringResponse>
    {
        public static readonly Ros1Xarm_msgsSetStringResponseCodec Instance = new Ros1Xarm_msgsSetStringResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetStringResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetStringResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetStringResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetStringResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetStringResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetStringResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetStringResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetStringResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetStringResponse value = ReadRos1Xarm_msgsSetStringResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetStringResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetStringResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetStringResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/SetStringResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetStringResponse ReadRos1Xarm_msgsSetStringResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetStringResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetToolModbusRequest fields.
     * @details 2 ordered fields, canonical extent 6..4102 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetToolModbusRequest
    {
        public byte[] @send_data = new byte[0];
        public short @respond_len = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetToolModbusRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetToolModbusRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetToolModbusRequest fields.
     * @details 2 ordered fields, canonical extent 6..4102 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetToolModbusRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetToolModbusRequest>
    {
        public static readonly Ros1Xarm_msgsSetToolModbusRequestCodec Instance = new Ros1Xarm_msgsSetToolModbusRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetToolModbusRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetToolModbusRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetToolModbusRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 4102;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetToolModbusRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetToolModbusRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetToolModbusRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetToolModbusRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetToolModbusRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetToolModbusRequest value = ReadRos1Xarm_msgsSetToolModbusRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetToolModbusRequest component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetToolModbusRequest(_Codecs.Writer writer, _Ros1Xarm_msgsSetToolModbusRequest value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        byte[] part0 = value.@send_data;
        if(part0 == null || part0.Length > 4096)
            throw new ArgumentException("fixed/sequence count bound");
        writer.Unsigned((ulong)part0.Length, 4);
        for(int index = 0; index < part0.Length; ++index)
        {
            byte element = part0[index];
            writer.Unsigned(element, 1);
        }
        short part1 = value.@respond_len;
        writer.Unsigned(unchecked((ushort)part1), 2);
    }

    /**
     * @brief Read one xarm_msgs/SetToolModbusRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetToolModbusRequest ReadRos1Xarm_msgsSetToolModbusRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetToolModbusRequest();
        value.@send_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@send_data.Length; ++index)
            value.@send_data[index] = unchecked((byte)reader.Unsigned(1));
        value.@respond_len = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/SetToolModbusResponse fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsSetToolModbusResponse
    {
        public short @ret = 0;
        public string @message = "";
        public byte[] @respond_data = new byte[0];

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetToolModbusResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetToolModbusResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/SetToolModbusResponse fields.
     * @details 3 ordered fields, canonical extent 10..4362 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsSetToolModbusResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsSetToolModbusResponse>
    {
        public static readonly Ros1Xarm_msgsSetToolModbusResponseCodec Instance = new Ros1Xarm_msgsSetToolModbusResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/SetToolModbusResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsSetToolModbusResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/SetToolModbusResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76";
        public const int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/SetToolModbusResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsSetToolModbusResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsSetToolModbusResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/SetToolModbusResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsSetToolModbusResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsSetToolModbusResponse value = ReadRos1Xarm_msgsSetToolModbusResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/SetToolModbusResponse component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void WriteRos1Xarm_msgsSetToolModbusResponse(_Codecs.Writer writer, _Ros1Xarm_msgsSetToolModbusResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
        byte[] part2 = value.@respond_data;
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
     * @brief Read one xarm_msgs/SetToolModbusResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsSetToolModbusResponse ReadRos1Xarm_msgsSetToolModbusResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsSetToolModbusResponse();
        value.@ret = unchecked((short)reader.Unsigned(2));
        value.@message = ReadText(reader, 256);
        value.@respond_data = new byte[ReadCount(reader, 4096, 1)];
        for(int index = 0; index < value.@respond_data.Length; ++index)
            value.@respond_data[index] = unchecked((byte)reader.Unsigned(1));
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
     * @brief Preserve all original xarm_msgs/VacuumGripperCtrlRequest fields.
     * @details 6 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsVacuumGripperCtrlRequest
    {
        public bool @on = false;
        public bool @wait = false;
        public float @timeout = 0;
        public float @delay_sec = 0;
        public bool @sync = false;
        public short @hardware_version = 0;

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/VacuumGripperCtrlRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsVacuumGripperCtrlRequest()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/VacuumGripperCtrlRequest fields.
     * @details 6 ordered fields, canonical extent 13..13 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsVacuumGripperCtrlRequestCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsVacuumGripperCtrlRequest>
    {
        public static readonly Ros1Xarm_msgsVacuumGripperCtrlRequestCodec Instance = new Ros1Xarm_msgsVacuumGripperCtrlRequestCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/VacuumGripperCtrlRequest.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsVacuumGripperCtrlRequestCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/VacuumGripperCtrlRequest";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff";
        public const int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/VacuumGripperCtrlRequest.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsVacuumGripperCtrlRequest value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsVacuumGripperCtrlRequest(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/VacuumGripperCtrlRequest.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsVacuumGripperCtrlRequest Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsVacuumGripperCtrlRequest value = ReadRos1Xarm_msgsVacuumGripperCtrlRequest(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/VacuumGripperCtrlRequest component into checked staging
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
    private static void WriteRos1Xarm_msgsVacuumGripperCtrlRequest(_Codecs.Writer writer, _Ros1Xarm_msgsVacuumGripperCtrlRequest value)
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
     * @brief Read one xarm_msgs/VacuumGripperCtrlRequest candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsVacuumGripperCtrlRequest ReadRos1Xarm_msgsVacuumGripperCtrlRequest(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsVacuumGripperCtrlRequest();
        value.@on = ReadBool(reader);
        value.@wait = ReadBool(reader);
        value.@timeout = ReadFloat32(reader);
        value.@delay_sec = ReadFloat32(reader);
        value.@sync = ReadBool(reader);
        value.@hardware_version = unchecked((short)reader.Unsigned(2));
        return value;
    }

    /**
     * @brief Preserve all original xarm_msgs/VacuumGripperCtrlResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class _Ros1Xarm_msgsVacuumGripperCtrlResponse
    {
        public short @ret = 0;
        public string @message = "";

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/VacuumGripperCtrlResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsVacuumGripperCtrlResponse()
        {
        }
    }

    /**
     * @brief Preserve all original xarm_msgs/VacuumGripperCtrlResponse fields.
     * @details 2 ordered fields, canonical extent 6..262 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public sealed class Ros1Xarm_msgsVacuumGripperCtrlResponseCodec : global::Uwvm.RosWasm.ICodec<_Ros1Xarm_msgsVacuumGripperCtrlResponse>
    {
        public static readonly Ros1Xarm_msgsVacuumGripperCtrlResponseCodec Instance = new Ros1Xarm_msgsVacuumGripperCtrlResponseCodec();

        /**
         * @brief Maintain the bounded local protocol state for xarm_msgs/VacuumGripperCtrlResponse.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        private Ros1Xarm_msgsVacuumGripperCtrlResponseCodec()
        {
        }

        public const int ROS_VERSION = 1;
        public const string NATIVE_TYPE = "xarm_msgs/VacuumGripperCtrlResponse";
        public const string? NATIVE_IDENTITY = null;
        public const string CODEC_IDENTITY = "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540";
        public const int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;

        /**
         * @brief Encode the complete ordered value for xarm_msgs/VacuumGripperCtrlResponse.
         * @details Validate initialized field domains and finite quotas before publishing output. Canonical
         * bytes exclude native padding. Borrow inputs synchronously; successful returned buffers belong to
         * the caller.
         * @param value Complete original component or local protocol value, with its documented owner and
         * bounds.
         * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
         * transport success.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public byte[] Encode(_Ros1Xarm_msgsVacuumGripperCtrlResponse value)
        {
            var writer = new _Codecs.Writer(MAX_WIRE_BYTES);

            WriteRos1Xarm_msgsVacuumGripperCtrlResponse(writer, value);
            byte[] wire = writer.Finish();
            if(wire.Length < MIN_WIRE_BYTES || wire.Length > MAX_WIRE_BYTES)
                throw new ArgumentException("complete encoded extent");
            return wire;
        }

        /**
         * @brief Decode the whole canonical value for xarm_msgs/VacuumGripperCtrlResponse.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public _Ros1Xarm_msgsVacuumGripperCtrlResponse Decode(byte[] bytes)
        {
            var reader = new _Codecs.Reader(OwnedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
            _Ros1Xarm_msgsVacuumGripperCtrlResponse value = ReadRos1Xarm_msgsVacuumGripperCtrlResponse(reader);
            reader.End();
            return value;
        }
    }

    /**
     * @brief Write one prevalidated xarm_msgs/VacuumGripperCtrlResponse component into checked staging
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
    private static void WriteRos1Xarm_msgsVacuumGripperCtrlResponse(_Codecs.Writer writer, _Ros1Xarm_msgsVacuumGripperCtrlResponse value)
    {
        if(value == null)
            throw new ArgumentNullException(nameof(value));
        short part0 = value.@ret;
        writer.Unsigned(unchecked((ushort)part0), 2);
        string part1 = value.@message;

        WriteText(writer, part1, 256);
    }

    /**
     * @brief Read one xarm_msgs/VacuumGripperCtrlResponse candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static _Ros1Xarm_msgsVacuumGripperCtrlResponse ReadRos1Xarm_msgsVacuumGripperCtrlResponse(_Codecs.Reader reader)
    {
        var value = new _Ros1Xarm_msgsVacuumGripperCtrlResponse();
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
