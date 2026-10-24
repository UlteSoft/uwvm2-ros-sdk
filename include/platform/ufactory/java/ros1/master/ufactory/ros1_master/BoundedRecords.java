/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original ufactory/ros1_master canonical value domain.
 * @details The selected domain contains 84 complete record/components and 196 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package ufactory.ros1_master;

import org.uwvm.roswasm.Codec;
import org.uwvm.roswasm.Codecs;

/** Generated complete canonical records; no CDR/native registration or ROS authority. */
public final class BoundedRecords
{
    /**
     * @brief Maintain the bounded local protocol state for the selected original interface.
     * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
     * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
     * synchronous return.
     * @return The declared local result; errors remain separate from native operation and cleanup outcomes.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private BoundedRecords()
    {
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
    private static void writeText(Codecs.Writer writer, String value, int maximum)
    {
        if(value == null || value.length() > maximum || value.indexOf('\0') >= 0)
            throw new IllegalArgumentException("bounded custom string without NUL required");
        byte[] bytes = Codecs.utf8(value);
        if(bytes.length > maximum)
            throw new IllegalArgumentException("custom UTF-8 byte bound");
        writer.integer(bytes.length, 4, false).raw(bytes);
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
    private static String readText(Codecs.Reader reader, int maximum)
    {
        long count = reader.integer(4, false);
        if(count > maximum || count > reader.remaining())
            throw new IllegalArgumentException("custom UTF-8 extent");
        String value = Codecs.text(reader.take((int)count));
        if(value.indexOf('\0') >= 0)
            throw new IllegalArgumentException("NUL in custom string");
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
    private static int readCount(Codecs.Reader reader, int maximum, int elementMinimum)
    {
        long count = reader.integer(4, false);
        if(count > maximum || (elementMinimum != 0 && count > reader.remaining() / elementMinimum))
            throw new IllegalArgumentException("sequence count/remaining extent");
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
    private static boolean readBool(Codecs.Reader reader)
    {
        long value = reader.integer(1, false);
        if(value > 1)
            throw new IllegalArgumentException("canonical bool must be0/1");
        return value == 1;
    }

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
    private static byte[] ownedWire(byte[] value, int minimum, int maximum)
    {
        if(value == null || value.length < minimum || value.length > maximum)
            throw new IllegalArgumentException("complete bounded wire required");
        return value.clone();
    }

    /**
     * @brief Preserve all original xarm_gripper/MoveGoal fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Xarm_gripperMoveGoal
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_gripper/MoveGoal";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0ab5e2829d7c78ed0a3cfd1b0dc5a15144c18f13b9b22afaef8cbe962f4f579e";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original xarm_gripper/MoveGoal.target_pulse field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float target_pulse = 0;
        /**
         * @brief Original xarm_gripper/MoveGoal.pulse_speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float pulse_speed = 0;

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
        public Ros1Xarm_gripperMoveGoal()
        {
        }

        public static final Codec<Ros1Xarm_gripperMoveGoal> CODEC = new Codec<Ros1Xarm_gripperMoveGoal>() {
            /**
             * @brief Encode the complete ordered value for xarm_gripper/MoveGoal.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_gripperMoveGoal value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_gripperMoveGoal(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_gripper/MoveGoal.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_gripperMoveGoal decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_gripperMoveGoal value = readRos1Xarm_gripperMoveGoal(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_gripperMoveGoal(Codecs.Writer writer, Ros1Xarm_gripperMoveGoal value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.target_pulse;
        writer.f32(part0);
        float part1 = value.pulse_speed;
        writer.f32(part1);
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
    private static Ros1Xarm_gripperMoveGoal readRos1Xarm_gripperMoveGoal(Codecs.Reader reader)
    {
        Ros1Xarm_gripperMoveGoal value = new Ros1Xarm_gripperMoveGoal();
        value.target_pulse = reader.f32();
        value.pulse_speed = reader.f32();
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
    public static final class Ros1Xarm_gripperMoveResult
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_gripper/MoveResult";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c0697aa25874f00de22f98f34460dd4ecf3471dba9f441d958959cda68b10e5c";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original xarm_gripper/MoveResult.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;
        /**
         * @brief Original xarm_gripper/MoveResult.err_code field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short err_code = 0;

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
        public Ros1Xarm_gripperMoveResult()
        {
        }

        public static final Codec<Ros1Xarm_gripperMoveResult> CODEC = new Codec<Ros1Xarm_gripperMoveResult>() {
            /**
             * @brief Encode the complete ordered value for xarm_gripper/MoveResult.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_gripperMoveResult value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_gripperMoveResult(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_gripper/MoveResult.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_gripperMoveResult decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_gripperMoveResult value = readRos1Xarm_gripperMoveResult(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_gripperMoveResult(Codecs.Writer writer, Ros1Xarm_gripperMoveResult value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
        short part1 = value.err_code;
        writer.integer(part1, 2, true);
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
    private static Ros1Xarm_gripperMoveResult readRos1Xarm_gripperMoveResult(Codecs.Reader reader)
    {
        Ros1Xarm_gripperMoveResult value = new Ros1Xarm_gripperMoveResult();
        value.success = readBool(reader);
        value.err_code = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_gripperMoveFeedback
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_gripper/MoveFeedback";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fe56a38c804b409b8b18a9d7bff2090e2c33fd0bd09afd8e8b5d0923ec4cfff6";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_gripper/MoveFeedback.current_pulse field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float current_pulse = 0;

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
        public Ros1Xarm_gripperMoveFeedback()
        {
        }

        public static final Codec<Ros1Xarm_gripperMoveFeedback> CODEC = new Codec<Ros1Xarm_gripperMoveFeedback>() {
            /**
             * @brief Encode the complete ordered value for xarm_gripper/MoveFeedback.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_gripperMoveFeedback value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_gripperMoveFeedback(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_gripper/MoveFeedback.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_gripperMoveFeedback decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_gripperMoveFeedback value = readRos1Xarm_gripperMoveFeedback(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_gripperMoveFeedback(Codecs.Writer writer, Ros1Xarm_gripperMoveFeedback value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.current_pulse;
        writer.f32(part0);
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
    private static Ros1Xarm_gripperMoveFeedback readRos1Xarm_gripperMoveFeedback(Codecs.Reader reader)
    {
        Ros1Xarm_gripperMoveFeedback value = new Ros1Xarm_gripperMoveFeedback();
        value.current_pulse = reader.f32();
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
    public static final class Ros1Geometry_msgsPoint
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original geometry_msgs/Point.x field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double x = 0;
        /**
         * @brief Original geometry_msgs/Point.y field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double y = 0;
        /**
         * @brief Original geometry_msgs/Point.z field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double z = 0;

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
        public Ros1Geometry_msgsPoint()
        {
        }

        public static final Codec<Ros1Geometry_msgsPoint> CODEC = new Codec<Ros1Geometry_msgsPoint>() {
            /**
             * @brief Encode the complete ordered value for geometry_msgs/Point.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Geometry_msgsPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Geometry_msgsPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for geometry_msgs/Point.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Geometry_msgsPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsPoint value = readRos1Geometry_msgsPoint(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Geometry_msgsPoint(Codecs.Writer writer, Ros1Geometry_msgsPoint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
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
    private static Ros1Geometry_msgsPoint readRos1Geometry_msgsPoint(Codecs.Reader reader)
    {
        Ros1Geometry_msgsPoint value = new Ros1Geometry_msgsPoint();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
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
    public static final class Ros1Geometry_msgsQuaternion
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief Original geometry_msgs/Quaternion.x field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double x = 0;
        /**
         * @brief Original geometry_msgs/Quaternion.y field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double y = 0;
        /**
         * @brief Original geometry_msgs/Quaternion.z field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double z = 0;
        /**
         * @brief Original geometry_msgs/Quaternion.w field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double w = 0;

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
        public Ros1Geometry_msgsQuaternion()
        {
        }

        public static final Codec<Ros1Geometry_msgsQuaternion> CODEC = new Codec<Ros1Geometry_msgsQuaternion>() {
            /**
             * @brief Encode the complete ordered value for geometry_msgs/Quaternion.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Geometry_msgsQuaternion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Geometry_msgsQuaternion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for geometry_msgs/Quaternion.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Geometry_msgsQuaternion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsQuaternion value = readRos1Geometry_msgsQuaternion(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Geometry_msgsQuaternion(Codecs.Writer writer, Ros1Geometry_msgsQuaternion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double part0 = value.x;
        writer.f64(part0);
        double part1 = value.y;
        writer.f64(part1);
        double part2 = value.z;
        writer.f64(part2);
        double part3 = value.w;
        writer.f64(part3);
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
    private static Ros1Geometry_msgsQuaternion readRos1Geometry_msgsQuaternion(Codecs.Reader reader)
    {
        Ros1Geometry_msgsQuaternion value = new Ros1Geometry_msgsQuaternion();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        value.w = reader.f64();
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
    public static final class Ros1Geometry_msgsPose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "geometry_msgs/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original geometry_msgs/Pose.position field.
         * @details geometry_msgs/Point scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPoint position = new Ros1Geometry_msgsPoint();
        /**
         * @brief Original geometry_msgs/Pose.orientation field.
         * @details geometry_msgs/Quaternion scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Geometry_msgsQuaternion orientation = new Ros1Geometry_msgsQuaternion();

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
        public Ros1Geometry_msgsPose()
        {
        }

        public static final Codec<Ros1Geometry_msgsPose> CODEC = new Codec<Ros1Geometry_msgsPose>() {
            /**
             * @brief Encode the complete ordered value for geometry_msgs/Pose.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Geometry_msgsPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Geometry_msgsPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for geometry_msgs/Pose.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Geometry_msgsPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Geometry_msgsPose value = readRos1Geometry_msgsPose(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Geometry_msgsPose(Codecs.Writer writer, Ros1Geometry_msgsPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPoint part0 = value.position;

        writeRos1Geometry_msgsPoint(writer, part0);
        Ros1Geometry_msgsQuaternion part1 = value.orientation;

        writeRos1Geometry_msgsQuaternion(writer, part1);
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
    private static Ros1Geometry_msgsPose readRos1Geometry_msgsPose(Codecs.Reader reader)
    {
        Ros1Geometry_msgsPose value = new Ros1Geometry_msgsPose();
        value.position = readRos1Geometry_msgsPoint(reader);
        value.orientation = readRos1Geometry_msgsQuaternion(reader);
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
    public static final class Ros1Time
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original time.sec field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long sec = 0;
        /**
         * @brief Original time.nsec field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long nsec = 0;

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
        public Ros1Time()
        {
        }

        public static final Codec<Ros1Time> CODEC = new Codec<Ros1Time>() {
            /**
             * @brief Encode the complete ordered value for time.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Time value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Time(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for time.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Time decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Time value = readRos1Time(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Time(Codecs.Writer writer, Ros1Time value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.sec;
        writer.integer(part0, 4, false);
        long part1 = value.nsec;
        writer.integer(part1, 4, false);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
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
    private static Ros1Time readRos1Time(Codecs.Reader reader)
    {
        Ros1Time value = new Ros1Time();
        value.sec = reader.integer(4, false);
        value.nsec = reader.integer(4, false);
        if(value.nsec < 0 || value.nsec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
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
    public static final class Ros1Std_msgsHeader
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "std_msgs/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        /**
         * @brief Original std_msgs/Header.seq field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long seq = 0;
        /**
         * @brief Original std_msgs/Header.stamp field.
         * @details time scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Time stamp = new Ros1Time();
        /**
         * @brief Original std_msgs/Header.frame_id field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String frame_id = "";

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
        public Ros1Std_msgsHeader()
        {
        }

        public static final Codec<Ros1Std_msgsHeader> CODEC = new Codec<Ros1Std_msgsHeader>() {
            /**
             * @brief Encode the complete ordered value for std_msgs/Header.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Std_msgsHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Std_msgsHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for std_msgs/Header.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Std_msgsHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Std_msgsHeader value = readRos1Std_msgsHeader(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Std_msgsHeader(Codecs.Writer writer, Ros1Std_msgsHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.seq;
        writer.integer(part0, 4, false);
        Ros1Time part1 = value.stamp;

        writeRos1Time(writer, part1);
        String part2 = value.frame_id;

        writeText(writer, part2, 256);
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
    private static Ros1Std_msgsHeader readRos1Std_msgsHeader(Codecs.Reader reader)
    {
        Ros1Std_msgsHeader value = new Ros1Std_msgsHeader();
        value.seq = reader.integer(4, false);
        value.stamp = readRos1Time(reader);
        value.frame_id = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsCIOState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/CIOState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_808cc76aae56a2fcd84fde437f7558a4852ef38f56df7897bf215afa27e22057";
        public static final int MIN_WIRE_BYTES = 76, MAX_WIRE_BYTES = 332;
        /**
         * @brief Original xarm_msgs/CIOState.header field.
         * @details std_msgs/Header scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        /**
         * @brief Original xarm_msgs/CIOState.state field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short state = 0;
        /**
         * @brief Original xarm_msgs/CIOState.code field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short code = 0;
        /**
         * @brief Original xarm_msgs/CIOState.input_digitals field.
         * @details uint16 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] input_digitals = new int[2];
        /**
         * @brief Original xarm_msgs/CIOState.output_digitals field.
         * @details uint16 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] output_digitals = new int[2];
        /**
         * @brief Original xarm_msgs/CIOState.input_analogs field.
         * @details float32 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] input_analogs = new float[2];
        /**
         * @brief Original xarm_msgs/CIOState.output_analogs field.
         * @details float32 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] output_analogs = new float[2];
        /**
         * @brief Original xarm_msgs/CIOState.input_conf field.
         * @details uint8 array, count/quota 16, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] input_conf = new int[16];
        /**
         * @brief Original xarm_msgs/CIOState.output_conf field.
         * @details uint8 array, count/quota 16, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] output_conf = new int[16];

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
        public Ros1Xarm_msgsCIOState()
        {
        }

        public static final Codec<Ros1Xarm_msgsCIOState> CODEC = new Codec<Ros1Xarm_msgsCIOState>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/CIOState.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsCIOState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsCIOState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/CIOState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsCIOState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsCIOState value = readRos1Xarm_msgsCIOState(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsCIOState(Codecs.Writer writer, Ros1Xarm_msgsCIOState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;

        writeRos1Std_msgsHeader(writer, part0);
        short part1 = value.state;
        writer.integer(part1, 2, true);
        short part2 = value.code;
        writer.integer(part2, 2, true);
        int[] part3 = value.input_digitals;
        if(part3 == null || part3.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 2, false);
        }
        int[] part4 = value.output_digitals;
        if(part4 == null || part4.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.integer(part4[i], 2, false);
        }
        float[] part5 = value.input_analogs;
        if(part5 == null || part5.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f32(part5[i]);
        }
        float[] part6 = value.output_analogs;
        if(part6 == null || part6.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f32(part6[i]);
        }
        int[] part7 = value.input_conf;
        if(part7 == null || part7.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.integer(part7[i], 1, false);
        }
        int[] part8 = value.output_conf;
        if(part8 == null || part8.length != 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.integer(part8[i], 1, false);
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
    private static Ros1Xarm_msgsCIOState readRos1Xarm_msgsCIOState(Codecs.Reader reader)
    {
        Ros1Xarm_msgsCIOState value = new Ros1Xarm_msgsCIOState();
        value.header = readRos1Std_msgsHeader(reader);
        value.state = (short)reader.integer(2, true);
        value.code = (short)reader.integer(2, true);
        value.input_digitals = new int[2];
        for(int i = 0; i < value.input_digitals.length; ++i)
            value.input_digitals[i] = (int)reader.integer(2, false);
        value.output_digitals = new int[2];
        for(int i = 0; i < value.output_digitals.length; ++i)
            value.output_digitals[i] = (int)reader.integer(2, false);
        value.input_analogs = new float[2];
        for(int i = 0; i < value.input_analogs.length; ++i)
            value.input_analogs[i] = reader.f32();
        value.output_analogs = new float[2];
        for(int i = 0; i < value.output_analogs.length; ++i)
            value.output_analogs[i] = reader.f32();
        value.input_conf = new int[16];
        for(int i = 0; i < value.input_conf.length; ++i)
            value.input_conf[i] = (int)reader.integer(1, false);
        value.output_conf = new int[16];
        for(int i = 0; i < value.output_conf.length; ++i)
            value.output_conf[i] = (int)reader.integer(1, false);
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
    public static final class Ros1Xarm_msgsIOState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/IOState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_93ef0c71a5fed6eaa7c8e87447b280778ffd05c376cf41a577c71acfeb02d996";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original xarm_msgs/IOState.digital_1 field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int digital_1 = 0;
        /**
         * @brief Original xarm_msgs/IOState.digital_2 field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int digital_2 = 0;
        /**
         * @brief Original xarm_msgs/IOState.analog_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float analog_1 = 0;
        /**
         * @brief Original xarm_msgs/IOState.analog_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float analog_2 = 0;

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
        public Ros1Xarm_msgsIOState()
        {
        }

        public static final Codec<Ros1Xarm_msgsIOState> CODEC = new Codec<Ros1Xarm_msgsIOState>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/IOState.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsIOState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsIOState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/IOState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsIOState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsIOState value = readRos1Xarm_msgsIOState(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsIOState(Codecs.Writer writer, Ros1Xarm_msgsIOState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.digital_1;
        writer.integer(part0, 4, true);
        int part1 = value.digital_2;
        writer.integer(part1, 4, true);
        float part2 = value.analog_1;
        writer.f32(part2);
        float part3 = value.analog_2;
        writer.f32(part3);
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
    private static Ros1Xarm_msgsIOState readRos1Xarm_msgsIOState(Codecs.Reader reader)
    {
        Ros1Xarm_msgsIOState value = new Ros1Xarm_msgsIOState();
        value.digital_1 = (int)reader.integer(4, true);
        value.digital_2 = (int)reader.integer(4, true);
        value.analog_1 = reader.f32();
        value.analog_2 = reader.f32();
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
    public static final class Ros1Xarm_msgsRobotMsg
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/RobotMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_03b0ad7c90edaeef28a240a857e18cc94de2ee170b7a64c29a6a96cac604f2fb";
        public static final int MIN_WIRE_BYTES = 82, MAX_WIRE_BYTES = 366;
        /**
         * @brief Original xarm_msgs/RobotMsg.header field.
         * @details std_msgs/Header scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        /**
         * @brief Original xarm_msgs/RobotMsg.state field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short state = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.mode field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mode = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.cmdnum field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short cmdnum = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.mt_brake field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mt_brake = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.mt_able field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mt_able = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.err field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short err = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.warn field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short warn = 0;
        /**
         * @brief Original xarm_msgs/RobotMsg.angle field.
         * @details float32 sequence, count/quota 7, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] angle = new float[0];
        /**
         * @brief Original xarm_msgs/RobotMsg.pose field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose = new float[6];
        /**
         * @brief Original xarm_msgs/RobotMsg.offset field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] offset = new float[6];

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
        public Ros1Xarm_msgsRobotMsg()
        {
        }

        public static final Codec<Ros1Xarm_msgsRobotMsg> CODEC = new Codec<Ros1Xarm_msgsRobotMsg>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/RobotMsg.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsRobotMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsRobotMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/RobotMsg.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsRobotMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsRobotMsg value = readRos1Xarm_msgsRobotMsg(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsRobotMsg(Codecs.Writer writer, Ros1Xarm_msgsRobotMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;

        writeRos1Std_msgsHeader(writer, part0);
        short part1 = value.state;
        writer.integer(part1, 2, true);
        short part2 = value.mode;
        writer.integer(part2, 2, true);
        short part3 = value.cmdnum;
        writer.integer(part3, 2, true);
        short part4 = value.mt_brake;
        writer.integer(part4, 2, true);
        short part5 = value.mt_able;
        writer.integer(part5, 2, true);
        short part6 = value.err;
        writer.integer(part6, 2, true);
        short part7 = value.warn;
        writer.integer(part7, 2, true);
        float[] part8 = value.angle;
        if(part8 == null || part8.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f32(part8[i]);
        }
        float[] part9 = value.pose;
        if(part9 == null || part9.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f32(part9[i]);
        }
        float[] part10 = value.offset;
        if(part10 == null || part10.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.f32(part10[i]);
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
    private static Ros1Xarm_msgsRobotMsg readRos1Xarm_msgsRobotMsg(Codecs.Reader reader)
    {
        Ros1Xarm_msgsRobotMsg value = new Ros1Xarm_msgsRobotMsg();
        value.header = readRos1Std_msgsHeader(reader);
        value.state = (short)reader.integer(2, true);
        value.mode = (short)reader.integer(2, true);
        value.cmdnum = (short)reader.integer(2, true);
        value.mt_brake = (short)reader.integer(2, true);
        value.mt_able = (short)reader.integer(2, true);
        value.err = (short)reader.integer(2, true);
        value.warn = (short)reader.integer(2, true);
        value.angle = new float[readCount(reader, 7, 4)];
        for(int i = 0; i < value.angle.length; ++i)
            value.angle[i] = reader.f32();
        value.pose = new float[6];
        for(int i = 0; i < value.pose.length; ++i)
            value.pose[i] = reader.f32();
        value.offset = new float[6];
        for(int i = 0; i < value.offset.length; ++i)
            value.offset[i] = reader.f32();
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
    public static final class Ros1Xarm_msgsVeloMoveMsg
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/VeloMoveMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_62e379e4b9093a641afc616d20d0b3b73eb545e9dca68e926c641f9dad1a1032";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;
        /**
         * @brief Original xarm_msgs/VeloMoveMsg.speeds field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] speeds = new float[0];
        /**
         * @brief Original xarm_msgs/VeloMoveMsg.is_sync field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_sync = false;
        /**
         * @brief Original xarm_msgs/VeloMoveMsg.is_tool_coord field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_tool_coord = false;
        /**
         * @brief Original xarm_msgs/VeloMoveMsg.duration field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float duration = 0;

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
        public Ros1Xarm_msgsVeloMoveMsg()
        {
        }

        public static final Codec<Ros1Xarm_msgsVeloMoveMsg> CODEC = new Codec<Ros1Xarm_msgsVeloMoveMsg>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/VeloMoveMsg.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsVeloMoveMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsVeloMoveMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/VeloMoveMsg.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsVeloMoveMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsVeloMoveMsg value = readRos1Xarm_msgsVeloMoveMsg(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsVeloMoveMsg(Codecs.Writer writer, Ros1Xarm_msgsVeloMoveMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.speeds;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        boolean part1 = value.is_sync;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.is_tool_coord;
        writer.integer(part2 ? 1 : 0, 1, false);
        float part3 = value.duration;
        writer.f32(part3);
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
    private static Ros1Xarm_msgsVeloMoveMsg readRos1Xarm_msgsVeloMoveMsg(Codecs.Reader reader)
    {
        Ros1Xarm_msgsVeloMoveMsg value = new Ros1Xarm_msgsVeloMoveMsg();
        value.speeds = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.speeds.length; ++i)
            value.speeds[i] = reader.f32();
        value.is_sync = readBool(reader);
        value.is_tool_coord = readBool(reader);
        value.duration = reader.f32();
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
    public static final class Ros1Xarm_msgsCallRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/CallRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5e66f3f703560f628a4b6a5023533e0e99a703a0d84c4ac7457a8423e73c3328";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsCallRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsCallRequest> CODEC = new Codec<Ros1Xarm_msgsCallRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/CallRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsCallRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsCallRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/CallRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsCallRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsCallRequest value = readRos1Xarm_msgsCallRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsCallRequest(Codecs.Writer writer, Ros1Xarm_msgsCallRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsCallRequest readRos1Xarm_msgsCallRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsCallRequest value = new Ros1Xarm_msgsCallRequest();
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
    public static final class Ros1Xarm_msgsCallResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/CallResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5d7eaafc40bbcfa49be097e3586b81df378518599c9a26ffbf3c596646c615f0";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/CallResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/CallResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsCallResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsCallResponse> CODEC = new Codec<Ros1Xarm_msgsCallResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/CallResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsCallResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsCallResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/CallResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsCallResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsCallResponse value = readRos1Xarm_msgsCallResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsCallResponse(Codecs.Writer writer, Ros1Xarm_msgsCallResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsCallResponse readRos1Xarm_msgsCallResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsCallResponse value = new Ros1Xarm_msgsCallResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsClearErrRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/ClearErrRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce83a45aee719e0916f27f8caab41c12bb15d04942bfdd0489047e7b79f3b9e8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsClearErrRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsClearErrRequest> CODEC = new Codec<Ros1Xarm_msgsClearErrRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/ClearErrRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsClearErrRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsClearErrRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/ClearErrRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsClearErrRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsClearErrRequest value = readRos1Xarm_msgsClearErrRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsClearErrRequest(Codecs.Writer writer, Ros1Xarm_msgsClearErrRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsClearErrRequest readRos1Xarm_msgsClearErrRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsClearErrRequest value = new Ros1Xarm_msgsClearErrRequest();
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
    public static final class Ros1Xarm_msgsClearErrResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/ClearErrResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_33a2634f63b2881e08efe4031630e29743093d33cf0da846bad1551329243054";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/ClearErrResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/ClearErrResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsClearErrResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsClearErrResponse> CODEC = new Codec<Ros1Xarm_msgsClearErrResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/ClearErrResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsClearErrResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsClearErrResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/ClearErrResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsClearErrResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsClearErrResponse value = readRos1Xarm_msgsClearErrResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsClearErrResponse(Codecs.Writer writer, Ros1Xarm_msgsClearErrResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsClearErrResponse readRos1Xarm_msgsClearErrResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsClearErrResponse value = new Ros1Xarm_msgsClearErrResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsConfigToolModbusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/ConfigToolModbusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2a1e6f98ac1ec94f8d670177cee7aa7ba3b60249b4311f42c518cf90f8575ae5";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original xarm_msgs/ConfigToolModbusRequest.baud_rate field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int baud_rate = 0;
        /**
         * @brief Original xarm_msgs/ConfigToolModbusRequest.timeout_ms field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout_ms = 0;

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
        public Ros1Xarm_msgsConfigToolModbusRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsConfigToolModbusRequest> CODEC = new Codec<Ros1Xarm_msgsConfigToolModbusRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/ConfigToolModbusRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsConfigToolModbusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsConfigToolModbusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/ConfigToolModbusRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsConfigToolModbusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsConfigToolModbusRequest value = readRos1Xarm_msgsConfigToolModbusRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsConfigToolModbusRequest(Codecs.Writer writer, Ros1Xarm_msgsConfigToolModbusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.baud_rate;
        writer.integer(part0, 4, true);
        int part1 = value.timeout_ms;
        writer.integer(part1, 4, true);
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
    private static Ros1Xarm_msgsConfigToolModbusRequest readRos1Xarm_msgsConfigToolModbusRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsConfigToolModbusRequest value = new Ros1Xarm_msgsConfigToolModbusRequest();
        value.baud_rate = (int)reader.integer(4, true);
        value.timeout_ms = (int)reader.integer(4, true);
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
    public static final class Ros1Xarm_msgsConfigToolModbusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/ConfigToolModbusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e9d6ed21b8c342e3740c8bc6b90980deea86c76926cc035e7e4f9d3a1aec32f9";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/ConfigToolModbusResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/ConfigToolModbusResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;

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
        public Ros1Xarm_msgsConfigToolModbusResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsConfigToolModbusResponse> CODEC = new Codec<Ros1Xarm_msgsConfigToolModbusResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/ConfigToolModbusResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsConfigToolModbusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsConfigToolModbusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/ConfigToolModbusResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsConfigToolModbusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsConfigToolModbusResponse value = readRos1Xarm_msgsConfigToolModbusResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsConfigToolModbusResponse(Codecs.Writer writer, Ros1Xarm_msgsConfigToolModbusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message;

        writeText(writer, part0, 256);
        short part1 = value.ret;
        writer.integer(part1, 2, true);
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
    private static Ros1Xarm_msgsConfigToolModbusResponse readRos1Xarm_msgsConfigToolModbusResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsConfigToolModbusResponse value = new Ros1Xarm_msgsConfigToolModbusResponse();
        value.message = readText(reader, 256);
        value.ret = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsFtCaliLoadRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/FtCaliLoadRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d058b31f6d441d4323f30033cf67ef4c4567c5101094cffa900295f36d129167";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 133;
        /**
         * @brief Original xarm_msgs/FtCaliLoadRequest.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];
        /**
         * @brief Original xarm_msgs/FtCaliLoadRequest.association_setting_tcp_load field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean association_setting_tcp_load = false;

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
        public Ros1Xarm_msgsFtCaliLoadRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsFtCaliLoadRequest> CODEC = new Codec<Ros1Xarm_msgsFtCaliLoadRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/FtCaliLoadRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsFtCaliLoadRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsFtCaliLoadRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/FtCaliLoadRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsFtCaliLoadRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsFtCaliLoadRequest value = readRos1Xarm_msgsFtCaliLoadRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsFtCaliLoadRequest(Codecs.Writer writer, Ros1Xarm_msgsFtCaliLoadRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.datas;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        boolean part1 = value.association_setting_tcp_load;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_msgsFtCaliLoadRequest readRos1Xarm_msgsFtCaliLoadRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsFtCaliLoadRequest value = new Ros1Xarm_msgsFtCaliLoadRequest();
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
        value.association_setting_tcp_load = readBool(reader);
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
    public static final class Ros1Xarm_msgsFtCaliLoadResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/FtCaliLoadResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2e1b2dd38c1fa2c7a36db848f2443e3cf68898ba48929e182f4f7652b310aef7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/FtCaliLoadResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/FtCaliLoadResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsFtCaliLoadResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsFtCaliLoadResponse> CODEC = new Codec<Ros1Xarm_msgsFtCaliLoadResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/FtCaliLoadResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsFtCaliLoadResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsFtCaliLoadResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/FtCaliLoadResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsFtCaliLoadResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsFtCaliLoadResponse value = readRos1Xarm_msgsFtCaliLoadResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsFtCaliLoadResponse(Codecs.Writer writer, Ros1Xarm_msgsFtCaliLoadResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsFtCaliLoadResponse readRos1Xarm_msgsFtCaliLoadResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsFtCaliLoadResponse value = new Ros1Xarm_msgsFtCaliLoadResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsFtIdenLoadRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/FtIdenLoadRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bf1ee0abaac38c9f3cd68e5c9a463180413260be7a8c21efe8441c3c7188396c";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsFtIdenLoadRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsFtIdenLoadRequest> CODEC = new Codec<Ros1Xarm_msgsFtIdenLoadRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/FtIdenLoadRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsFtIdenLoadRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsFtIdenLoadRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/FtIdenLoadRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsFtIdenLoadRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsFtIdenLoadRequest value = readRos1Xarm_msgsFtIdenLoadRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsFtIdenLoadRequest(Codecs.Writer writer, Ros1Xarm_msgsFtIdenLoadRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsFtIdenLoadRequest readRos1Xarm_msgsFtIdenLoadRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsFtIdenLoadRequest value = new Ros1Xarm_msgsFtIdenLoadRequest();
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
    public static final class Ros1Xarm_msgsFtIdenLoadResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/FtIdenLoadResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e5412aacedb3c2e3de29703081a744963bc0168778224ccd297511a49f2f67b8";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;
        /**
         * @brief Original xarm_msgs/FtIdenLoadResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/FtIdenLoadResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/FtIdenLoadResponse.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];

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
        public Ros1Xarm_msgsFtIdenLoadResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsFtIdenLoadResponse> CODEC = new Codec<Ros1Xarm_msgsFtIdenLoadResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/FtIdenLoadResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsFtIdenLoadResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsFtIdenLoadResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/FtIdenLoadResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsFtIdenLoadResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsFtIdenLoadResponse value = readRos1Xarm_msgsFtIdenLoadResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsFtIdenLoadResponse(Codecs.Writer writer, Ros1Xarm_msgsFtIdenLoadResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        float[] part2 = value.datas;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
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
    private static Ros1Xarm_msgsFtIdenLoadResponse readRos1Xarm_msgsFtIdenLoadResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsFtIdenLoadResponse value = new Ros1Xarm_msgsFtIdenLoadResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
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
    public static final class Ros1Xarm_msgsGetAnalogIORequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetAnalogIORequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_08bf2816e784cc03d6d2ea33d71e457038f9071f8d80726d05f566d60ab961e8";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/GetAnalogIORequest.port_num field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short port_num = 0;

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
        public Ros1Xarm_msgsGetAnalogIORequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetAnalogIORequest> CODEC = new Codec<Ros1Xarm_msgsGetAnalogIORequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIORequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetAnalogIORequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetAnalogIORequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIORequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetAnalogIORequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetAnalogIORequest value = readRos1Xarm_msgsGetAnalogIORequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetAnalogIORequest(Codecs.Writer writer, Ros1Xarm_msgsGetAnalogIORequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.port_num;
        writer.integer(part0, 2, true);
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
    private static Ros1Xarm_msgsGetAnalogIORequest readRos1Xarm_msgsGetAnalogIORequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetAnalogIORequest value = new Ros1Xarm_msgsGetAnalogIORequest();
        value.port_num = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsGetAnalogIOResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetAnalogIOResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_137ef1f1e94ed2e165023544043960031650f0848512d81afc97a2725144b835";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;
        /**
         * @brief Original xarm_msgs/GetAnalogIOResponse.analog_value field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float analog_value = 0;
        /**
         * @brief Original xarm_msgs/GetAnalogIOResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetAnalogIOResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGetAnalogIOResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetAnalogIOResponse> CODEC = new Codec<Ros1Xarm_msgsGetAnalogIOResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetAnalogIOResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetAnalogIOResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetAnalogIOResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetAnalogIOResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetAnalogIOResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetAnalogIOResponse value = readRos1Xarm_msgsGetAnalogIOResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetAnalogIOResponse(Codecs.Writer writer, Ros1Xarm_msgsGetAnalogIOResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.analog_value;
        writer.f32(part0);
        short part1 = value.ret;
        writer.integer(part1, 2, true);
        String part2 = value.message;

        writeText(writer, part2, 256);
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
    private static Ros1Xarm_msgsGetAnalogIOResponse readRos1Xarm_msgsGetAnalogIOResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetAnalogIOResponse value = new Ros1Xarm_msgsGetAnalogIOResponse();
        value.analog_value = reader.f32();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGetControllerDigitalIORequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetControllerDigitalIORequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_122db0972339f94d0bf6f4028643a020e85b286a46fa69dec71e7e998bf43f3c";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIORequest.io_num field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short io_num = 0;

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
        public Ros1Xarm_msgsGetControllerDigitalIORequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetControllerDigitalIORequest> CODEC = new Codec<Ros1Xarm_msgsGetControllerDigitalIORequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetControllerDigitalIORequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetControllerDigitalIORequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetControllerDigitalIORequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetControllerDigitalIORequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetControllerDigitalIORequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetControllerDigitalIORequest value = readRos1Xarm_msgsGetControllerDigitalIORequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetControllerDigitalIORequest(Codecs.Writer writer, Ros1Xarm_msgsGetControllerDigitalIORequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.io_num;
        writer.integer(part0, 2, true);
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
    private static Ros1Xarm_msgsGetControllerDigitalIORequest readRos1Xarm_msgsGetControllerDigitalIORequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetControllerDigitalIORequest value = new Ros1Xarm_msgsGetControllerDigitalIORequest();
        value.io_num = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsGetControllerDigitalIOResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetControllerDigitalIOResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bf0a756d069d7c15c2e59f1934db02c1516bb915626c7a59058c355ebfa8a161";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIOResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short value = 0;
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIOResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGetControllerDigitalIOResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetControllerDigitalIOResponse> CODEC = new Codec<Ros1Xarm_msgsGetControllerDigitalIOResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetControllerDigitalIOResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetControllerDigitalIOResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetControllerDigitalIOResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetControllerDigitalIOResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetControllerDigitalIOResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                /**
                 * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
                 * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                Ros1Xarm_msgsGetControllerDigitalIOResponse value = readRos1Xarm_msgsGetControllerDigitalIOResponse(reader);
                reader.end();
                /**
                 * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
                 * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetControllerDigitalIOResponse(Codecs.Writer writer, Ros1Xarm_msgsGetControllerDigitalIOResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        short part1 = value.value;
        writer.integer(part1, 2, true);
        String part2 = value.message;

        writeText(writer, part2, 256);
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
    private static Ros1Xarm_msgsGetControllerDigitalIOResponse readRos1Xarm_msgsGetControllerDigitalIOResponse(Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/GetControllerDigitalIOResponse.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        Ros1Xarm_msgsGetControllerDigitalIOResponse value = new Ros1Xarm_msgsGetControllerDigitalIOResponse();
        value.ret = (short)reader.integer(2, true);
        value.value = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGetDigitalIORequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetDigitalIORequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_edd78f1a2ed7ab9fc8541c8b5f0f9ff32713c949c03b66728ef7c41ed50a23da";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsGetDigitalIORequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetDigitalIORequest> CODEC = new Codec<Ros1Xarm_msgsGetDigitalIORequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIORequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetDigitalIORequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetDigitalIORequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIORequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetDigitalIORequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetDigitalIORequest value = readRos1Xarm_msgsGetDigitalIORequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetDigitalIORequest(Codecs.Writer writer, Ros1Xarm_msgsGetDigitalIORequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsGetDigitalIORequest readRos1Xarm_msgsGetDigitalIORequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetDigitalIORequest value = new Ros1Xarm_msgsGetDigitalIORequest();
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
    public static final class Ros1Xarm_msgsGetDigitalIOResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetDigitalIOResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7af72b4f19e23493c4b4c2cf7c88076549e34ed741a04ee758db31de11457498";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 270;
        /**
         * @brief Original xarm_msgs/GetDigitalIOResponse.digital_1 field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int digital_1 = 0;
        /**
         * @brief Original xarm_msgs/GetDigitalIOResponse.digital_2 field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int digital_2 = 0;
        /**
         * @brief Original xarm_msgs/GetDigitalIOResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetDigitalIOResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGetDigitalIOResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetDigitalIOResponse> CODEC = new Codec<Ros1Xarm_msgsGetDigitalIOResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetDigitalIOResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetDigitalIOResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetDigitalIOResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetDigitalIOResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetDigitalIOResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetDigitalIOResponse value = readRos1Xarm_msgsGetDigitalIOResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetDigitalIOResponse(Codecs.Writer writer, Ros1Xarm_msgsGetDigitalIOResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.digital_1;
        writer.integer(part0, 4, true);
        int part1 = value.digital_2;
        writer.integer(part1, 4, true);
        short part2 = value.ret;
        writer.integer(part2, 2, true);
        String part3 = value.message;

        writeText(writer, part3, 256);
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
    private static Ros1Xarm_msgsGetDigitalIOResponse readRos1Xarm_msgsGetDigitalIOResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetDigitalIOResponse value = new Ros1Xarm_msgsGetDigitalIOResponse();
        value.digital_1 = (int)reader.integer(4, true);
        value.digital_2 = (int)reader.integer(4, true);
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGetErrRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetErrRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80135f34c2643001ed9d387e3665176a01c44b651c9db7ca0d549472c7f2f531";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsGetErrRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetErrRequest> CODEC = new Codec<Ros1Xarm_msgsGetErrRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetErrRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetErrRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetErrRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetErrRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetErrRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetErrRequest value = readRos1Xarm_msgsGetErrRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetErrRequest(Codecs.Writer writer, Ros1Xarm_msgsGetErrRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsGetErrRequest readRos1Xarm_msgsGetErrRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetErrRequest value = new Ros1Xarm_msgsGetErrRequest();
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
    public static final class Ros1Xarm_msgsGetErrResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetErrResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7e592e5a0ce00323b48608ffd371da5ec37deddb35aa74c4a1acd3af6bc7b5de";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/GetErrResponse.err field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short err = 0;
        /**
         * @brief Original xarm_msgs/GetErrResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetErrResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGetErrResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetErrResponse> CODEC = new Codec<Ros1Xarm_msgsGetErrResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetErrResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetErrResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetErrResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetErrResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetErrResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetErrResponse value = readRos1Xarm_msgsGetErrResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetErrResponse(Codecs.Writer writer, Ros1Xarm_msgsGetErrResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.err;
        writer.integer(part0, 2, true);
        short part1 = value.ret;
        writer.integer(part1, 2, true);
        String part2 = value.message;

        writeText(writer, part2, 256);
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
    private static Ros1Xarm_msgsGetErrResponse readRos1Xarm_msgsGetErrResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetErrResponse value = new Ros1Xarm_msgsGetErrResponse();
        value.err = (short)reader.integer(2, true);
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGetFloat32ListRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetFloat32ListRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ca3226f94eafedde7b83757e0f679a8866b6d47906b22500736b8425a1c948db";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsGetFloat32ListRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetFloat32ListRequest> CODEC = new Codec<Ros1Xarm_msgsGetFloat32ListRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetFloat32ListRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetFloat32ListRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetFloat32ListRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetFloat32ListRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetFloat32ListRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetFloat32ListRequest value = readRos1Xarm_msgsGetFloat32ListRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetFloat32ListRequest(Codecs.Writer writer, Ros1Xarm_msgsGetFloat32ListRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsGetFloat32ListRequest readRos1Xarm_msgsGetFloat32ListRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetFloat32ListRequest value = new Ros1Xarm_msgsGetFloat32ListRequest();
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
    public static final class Ros1Xarm_msgsGetFloat32ListResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetFloat32ListResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_670267e409588697ce5fbde5d7b23d4e7e30fc301f32c92b3a26308d8db3d8e2";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;
        /**
         * @brief Original xarm_msgs/GetFloat32ListResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetFloat32ListResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/GetFloat32ListResponse.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];

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
        public Ros1Xarm_msgsGetFloat32ListResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetFloat32ListResponse> CODEC = new Codec<Ros1Xarm_msgsGetFloat32ListResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetFloat32ListResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetFloat32ListResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetFloat32ListResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetFloat32ListResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetFloat32ListResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetFloat32ListResponse value = readRos1Xarm_msgsGetFloat32ListResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetFloat32ListResponse(Codecs.Writer writer, Ros1Xarm_msgsGetFloat32ListResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        float[] part2 = value.datas;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
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
    private static Ros1Xarm_msgsGetFloat32ListResponse readRos1Xarm_msgsGetFloat32ListResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetFloat32ListResponse value = new Ros1Xarm_msgsGetFloat32ListResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
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
    public static final class Ros1Xarm_msgsGetInt32Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetInt32Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_82ede36edbb49a70ed84663fdf0361925a8008f7c7d249fa47dea437ad99a470";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsGetInt32Request()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetInt32Request> CODEC = new Codec<Ros1Xarm_msgsGetInt32Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetInt32Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetInt32Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetInt32Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetInt32Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetInt32Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetInt32Request value = readRos1Xarm_msgsGetInt32Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetInt32Request(Codecs.Writer writer, Ros1Xarm_msgsGetInt32Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsGetInt32Request readRos1Xarm_msgsGetInt32Request(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetInt32Request value = new Ros1Xarm_msgsGetInt32Request();
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
    public static final class Ros1Xarm_msgsGetInt32Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetInt32Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_904b69916be1ab0a927b39cfc99a056b7804dc1f56a678b9f38fc532f337720d";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;
        /**
         * @brief Original xarm_msgs/GetInt32Response.data field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int data = 0;
        /**
         * @brief Original xarm_msgs/GetInt32Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetInt32Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGetInt32Response()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetInt32Response> CODEC = new Codec<Ros1Xarm_msgsGetInt32Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetInt32Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetInt32Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetInt32Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetInt32Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetInt32Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetInt32Response value = readRos1Xarm_msgsGetInt32Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetInt32Response(Codecs.Writer writer, Ros1Xarm_msgsGetInt32Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.data;
        writer.integer(part0, 4, true);
        short part1 = value.ret;
        writer.integer(part1, 2, true);
        String part2 = value.message;

        writeText(writer, part2, 256);
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
    private static Ros1Xarm_msgsGetInt32Response readRos1Xarm_msgsGetInt32Response(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetInt32Response value = new Ros1Xarm_msgsGetInt32Response();
        value.data = (int)reader.integer(4, true);
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGetSetModbusDataRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetSetModbusDataRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e247cbe79230d6cb1dc68a913d22fd49fd2c8f261b40d70a4a8fcd07105d5cb7";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 4105;
        /**
         * @brief Original xarm_msgs/GetSetModbusDataRequest.send_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] send_data = new int[0];
        /**
         * @brief Original xarm_msgs/GetSetModbusDataRequest.respond_len field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short respond_len = 0;
        /**
         * @brief Original xarm_msgs/GetSetModbusDataRequest.host_id field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int host_id = 0;
        /**
         * @brief Original xarm_msgs/GetSetModbusDataRequest.is_transparent_transmission field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_transparent_transmission = false;
        /**
         * @brief Original xarm_msgs/GetSetModbusDataRequest.use_503_port field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean use_503_port = false;

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
        public Ros1Xarm_msgsGetSetModbusDataRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetSetModbusDataRequest> CODEC = new Codec<Ros1Xarm_msgsGetSetModbusDataRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetSetModbusDataRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetSetModbusDataRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetSetModbusDataRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetSetModbusDataRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetSetModbusDataRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetSetModbusDataRequest value = readRos1Xarm_msgsGetSetModbusDataRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetSetModbusDataRequest(Codecs.Writer writer, Ros1Xarm_msgsGetSetModbusDataRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.send_data;
        if(part0 == null || part0.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, false);
        }
        short part1 = value.respond_len;
        writer.integer(part1, 2, true);
        int part2 = value.host_id;
        writer.integer(part2, 1, false);
        boolean part3 = value.is_transparent_transmission;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.use_503_port;
        writer.integer(part4 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_msgsGetSetModbusDataRequest readRos1Xarm_msgsGetSetModbusDataRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetSetModbusDataRequest value = new Ros1Xarm_msgsGetSetModbusDataRequest();
        value.send_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.send_data.length; ++i)
            value.send_data[i] = (int)reader.integer(1, false);
        value.respond_len = (short)reader.integer(2, true);
        value.host_id = (int)reader.integer(1, false);
        value.is_transparent_transmission = readBool(reader);
        value.use_503_port = readBool(reader);
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
    public static final class Ros1Xarm_msgsGetSetModbusDataResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GetSetModbusDataResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_22afbef5c743fc643dcfb5bc32ef176e0de637a128ba6050cf320ebf80294ead";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/GetSetModbusDataResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GetSetModbusDataResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/GetSetModbusDataResponse.respond_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] respond_data = new int[0];

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
        public Ros1Xarm_msgsGetSetModbusDataResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGetSetModbusDataResponse> CODEC = new Codec<Ros1Xarm_msgsGetSetModbusDataResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GetSetModbusDataResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGetSetModbusDataResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGetSetModbusDataResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GetSetModbusDataResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGetSetModbusDataResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGetSetModbusDataResponse value = readRos1Xarm_msgsGetSetModbusDataResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGetSetModbusDataResponse(Codecs.Writer writer, Ros1Xarm_msgsGetSetModbusDataResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.respond_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros1Xarm_msgsGetSetModbusDataResponse readRos1Xarm_msgsGetSetModbusDataResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGetSetModbusDataResponse value = new Ros1Xarm_msgsGetSetModbusDataResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.respond_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.respond_data.length; ++i)
            value.respond_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros1Xarm_msgsGripperConfigRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GripperConfigRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b82ba6fd59917a738ec433efd16f238d6538dfcaa3b6718f8f8fa1fa1d01c8c4";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/GripperConfigRequest.pulse_vel field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float pulse_vel = 0;

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
        public Ros1Xarm_msgsGripperConfigRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGripperConfigRequest> CODEC = new Codec<Ros1Xarm_msgsGripperConfigRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GripperConfigRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGripperConfigRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGripperConfigRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GripperConfigRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGripperConfigRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGripperConfigRequest value = readRos1Xarm_msgsGripperConfigRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGripperConfigRequest(Codecs.Writer writer, Ros1Xarm_msgsGripperConfigRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.pulse_vel;
        writer.f32(part0);
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
    private static Ros1Xarm_msgsGripperConfigRequest readRos1Xarm_msgsGripperConfigRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGripperConfigRequest value = new Ros1Xarm_msgsGripperConfigRequest();
        value.pulse_vel = reader.f32();
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
    public static final class Ros1Xarm_msgsGripperConfigResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GripperConfigResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c62138166790a9348741cd419bd5e43492e9840842d8f2d29c5d49abea8d0e59";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/GripperConfigResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GripperConfigResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGripperConfigResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGripperConfigResponse> CODEC = new Codec<Ros1Xarm_msgsGripperConfigResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GripperConfigResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGripperConfigResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGripperConfigResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GripperConfigResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGripperConfigResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGripperConfigResponse value = readRos1Xarm_msgsGripperConfigResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGripperConfigResponse(Codecs.Writer writer, Ros1Xarm_msgsGripperConfigResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsGripperConfigResponse readRos1Xarm_msgsGripperConfigResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGripperConfigResponse value = new Ros1Xarm_msgsGripperConfigResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGripperMoveRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GripperMoveRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cd6b6852054385df9f6a65c12f8d887adbb1e5d01e9ba5367fef38c738ffbae2";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/GripperMoveRequest.pulse_pos field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float pulse_pos = 0;

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
        public Ros1Xarm_msgsGripperMoveRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGripperMoveRequest> CODEC = new Codec<Ros1Xarm_msgsGripperMoveRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GripperMoveRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGripperMoveRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGripperMoveRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GripperMoveRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGripperMoveRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGripperMoveRequest value = readRos1Xarm_msgsGripperMoveRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGripperMoveRequest(Codecs.Writer writer, Ros1Xarm_msgsGripperMoveRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.pulse_pos;
        writer.f32(part0);
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
    private static Ros1Xarm_msgsGripperMoveRequest readRos1Xarm_msgsGripperMoveRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGripperMoveRequest value = new Ros1Xarm_msgsGripperMoveRequest();
        value.pulse_pos = reader.f32();
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
    public static final class Ros1Xarm_msgsGripperMoveResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GripperMoveResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f590da8de750c4c7a0281dd9039a696f0ad9e8185263ac442f76a179448e57ad";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/GripperMoveResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GripperMoveResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsGripperMoveResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGripperMoveResponse> CODEC = new Codec<Ros1Xarm_msgsGripperMoveResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GripperMoveResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGripperMoveResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGripperMoveResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GripperMoveResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGripperMoveResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGripperMoveResponse value = readRos1Xarm_msgsGripperMoveResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGripperMoveResponse(Codecs.Writer writer, Ros1Xarm_msgsGripperMoveResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsGripperMoveResponse readRos1Xarm_msgsGripperMoveResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGripperMoveResponse value = new Ros1Xarm_msgsGripperMoveResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsGripperStateRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GripperStateRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_96f47b84fe0876daf4cfb6cb46df97783ba7d38a4b3cef749e699d029db59d5d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Xarm_msgsGripperStateRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsGripperStateRequest> CODEC = new Codec<Ros1Xarm_msgsGripperStateRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GripperStateRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGripperStateRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGripperStateRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GripperStateRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGripperStateRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGripperStateRequest value = readRos1Xarm_msgsGripperStateRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGripperStateRequest(Codecs.Writer writer, Ros1Xarm_msgsGripperStateRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Xarm_msgsGripperStateRequest readRos1Xarm_msgsGripperStateRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGripperStateRequest value = new Ros1Xarm_msgsGripperStateRequest();
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
    public static final class Ros1Xarm_msgsGripperStateResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/GripperStateResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_85cb994d18c9c946bf88dc35ae0be3da149a439c96949f0319004f59f2a84fe6";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Original xarm_msgs/GripperStateResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/GripperStateResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/GripperStateResponse.curr_pos field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float curr_pos = 0;
        /**
         * @brief Original xarm_msgs/GripperStateResponse.err_code field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short err_code = 0;

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
        public Ros1Xarm_msgsGripperStateResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsGripperStateResponse> CODEC = new Codec<Ros1Xarm_msgsGripperStateResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/GripperStateResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsGripperStateResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsGripperStateResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/GripperStateResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsGripperStateResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsGripperStateResponse value = readRos1Xarm_msgsGripperStateResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsGripperStateResponse(Codecs.Writer writer, Ros1Xarm_msgsGripperStateResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        float part2 = value.curr_pos;
        writer.f32(part2);
        short part3 = value.err_code;
        writer.integer(part3, 2, true);
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
    private static Ros1Xarm_msgsGripperStateResponse readRos1Xarm_msgsGripperStateResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsGripperStateResponse value = new Ros1Xarm_msgsGripperStateResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.curr_pos = reader.f32();
        value.err_code = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsMoveRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9bfae5d05a608fb8f020e0cdb251b7e3b00e50ff610a26b70093837f365d4ced";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        /**
         * @brief Original xarm_msgs/MoveRequest.pose field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose = new float[0];
        /**
         * @brief Original xarm_msgs/MoveRequest.mvvelo field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvvelo = 0;
        /**
         * @brief Original xarm_msgs/MoveRequest.mvacc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvacc = 0;
        /**
         * @brief Original xarm_msgs/MoveRequest.mvtime field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvtime = 0;
        /**
         * @brief Original xarm_msgs/MoveRequest.mvradii field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvradii = 0;

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
        public Ros1Xarm_msgsMoveRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveRequest> CODEC = new Codec<Ros1Xarm_msgsMoveRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsMoveRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveRequest value = readRos1Xarm_msgsMoveRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveRequest(Codecs.Writer writer, Ros1Xarm_msgsMoveRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.pose;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.mvvelo;
        writer.f32(part1);
        float part2 = value.mvacc;
        writer.f32(part2);
        float part3 = value.mvtime;
        writer.f32(part3);
        float part4 = value.mvradii;
        writer.f32(part4);
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
    private static Ros1Xarm_msgsMoveRequest readRos1Xarm_msgsMoveRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveRequest value = new Ros1Xarm_msgsMoveRequest();
        value.pose = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.pose.length; ++i)
            value.pose[i] = reader.f32();
        value.mvvelo = reader.f32();
        value.mvacc = reader.f32();
        value.mvtime = reader.f32();
        value.mvradii = reader.f32();
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
    public static final class Ros1Xarm_msgsMoveResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6081579d8a79f052cbb7616c0d366bad3948ac3b1380b118ad5b03e4123ce53d";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/MoveResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/MoveResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsMoveResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveResponse> CODEC = new Codec<Ros1Xarm_msgsMoveResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Xarm_msgsMoveResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveResponse value = readRos1Xarm_msgsMoveResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveResponse(Codecs.Writer writer, Ros1Xarm_msgsMoveResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsMoveResponse readRos1Xarm_msgsMoveResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveResponse value = new Ros1Xarm_msgsMoveResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsMoveAxisAngleRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveAxisAngleRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fc7be6f60b1e49b5444e9bdc3feb65e21cda3911db376dde843b427171d35b30";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 148;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleRequest.pose field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose = new float[0];
        /**
         * @brief Original xarm_msgs/MoveAxisAngleRequest.mvvelo field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvvelo = 0;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleRequest.mvacc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvacc = 0;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleRequest.mvtime field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvtime = 0;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleRequest.coord field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short coord = 0;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleRequest.relative field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short relative = 0;

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
        public Ros1Xarm_msgsMoveAxisAngleRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveAxisAngleRequest> CODEC = new Codec<Ros1Xarm_msgsMoveAxisAngleRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveAxisAngleRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveAxisAngleRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveAxisAngleRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveAxisAngleRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsMoveAxisAngleRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveAxisAngleRequest value = readRos1Xarm_msgsMoveAxisAngleRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveAxisAngleRequest(Codecs.Writer writer, Ros1Xarm_msgsMoveAxisAngleRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.pose;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.mvvelo;
        writer.f32(part1);
        float part2 = value.mvacc;
        writer.f32(part2);
        float part3 = value.mvtime;
        writer.f32(part3);
        short part4 = value.coord;
        writer.integer(part4, 2, true);
        short part5 = value.relative;
        writer.integer(part5, 2, true);
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
    private static Ros1Xarm_msgsMoveAxisAngleRequest readRos1Xarm_msgsMoveAxisAngleRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveAxisAngleRequest value = new Ros1Xarm_msgsMoveAxisAngleRequest();
        value.pose = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.pose.length; ++i)
            value.pose[i] = reader.f32();
        value.mvvelo = reader.f32();
        value.mvacc = reader.f32();
        value.mvtime = reader.f32();
        value.coord = (short)reader.integer(2, true);
        value.relative = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsMoveAxisAngleResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveAxisAngleResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7ba3459cd1369bd925a02f25150dd97524c333658c1c743fe532ff954c5bb300";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/MoveAxisAngleResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsMoveAxisAngleResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveAxisAngleResponse> CODEC = new Codec<Ros1Xarm_msgsMoveAxisAngleResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveAxisAngleResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveAxisAngleResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveAxisAngleResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveAxisAngleResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsMoveAxisAngleResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveAxisAngleResponse value = readRos1Xarm_msgsMoveAxisAngleResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveAxisAngleResponse(Codecs.Writer writer, Ros1Xarm_msgsMoveAxisAngleResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsMoveAxisAngleResponse readRos1Xarm_msgsMoveAxisAngleResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveAxisAngleResponse value = new Ros1Xarm_msgsMoveAxisAngleResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsMoveVeloRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveVeloRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5c047dc56f9ec7fa016e44f203c026009b683e77b8dd7c83fafc214b6ca4d204";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        /**
         * @brief Original xarm_msgs/MoveVeloRequest.velocities field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] velocities = new float[0];
        /**
         * @brief Original xarm_msgs/MoveVeloRequest.jnt_sync field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short jnt_sync = 0;
        /**
         * @brief Original xarm_msgs/MoveVeloRequest.coord field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short coord = 0;

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
        public Ros1Xarm_msgsMoveVeloRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveVeloRequest> CODEC = new Codec<Ros1Xarm_msgsMoveVeloRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveVeloRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveVeloRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveVeloRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveVeloRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsMoveVeloRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveVeloRequest value = readRos1Xarm_msgsMoveVeloRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveVeloRequest(Codecs.Writer writer, Ros1Xarm_msgsMoveVeloRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.velocities;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        short part1 = value.jnt_sync;
        writer.integer(part1, 2, true);
        short part2 = value.coord;
        writer.integer(part2, 2, true);
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
    private static Ros1Xarm_msgsMoveVeloRequest readRos1Xarm_msgsMoveVeloRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveVeloRequest value = new Ros1Xarm_msgsMoveVeloRequest();
        value.velocities = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.velocities.length; ++i)
            value.velocities[i] = reader.f32();
        value.jnt_sync = (short)reader.integer(2, true);
        value.coord = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsMoveVeloResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveVeloResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_429cbde29c47a90f5a0dfc2fa5d31a32c95570464c9394cc4dfa5be40dc3f5ce";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/MoveVeloResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/MoveVeloResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsMoveVeloResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveVeloResponse> CODEC = new Codec<Ros1Xarm_msgsMoveVeloResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveVeloResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveVeloResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveVeloResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveVeloResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsMoveVeloResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveVeloResponse value = readRos1Xarm_msgsMoveVeloResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveVeloResponse(Codecs.Writer writer, Ros1Xarm_msgsMoveVeloResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsMoveVeloResponse readRos1Xarm_msgsMoveVeloResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveVeloResponse value = new Ros1Xarm_msgsMoveVeloResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsMoveVelocityRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveVelocityRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_49e80cec4322b05b5da04a562022fe3e1d6cdd483c1c299e9bd8c8fe96ffe9ef";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;
        /**
         * @brief Original xarm_msgs/MoveVelocityRequest.speeds field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] speeds = new float[0];
        /**
         * @brief Original xarm_msgs/MoveVelocityRequest.is_sync field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_sync = false;
        /**
         * @brief Original xarm_msgs/MoveVelocityRequest.is_tool_coord field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_tool_coord = false;
        /**
         * @brief Original xarm_msgs/MoveVelocityRequest.duration field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float duration = 0;

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
        public Ros1Xarm_msgsMoveVelocityRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveVelocityRequest> CODEC = new Codec<Ros1Xarm_msgsMoveVelocityRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveVelocityRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveVelocityRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveVelocityRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveVelocityRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsMoveVelocityRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveVelocityRequest value = readRos1Xarm_msgsMoveVelocityRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveVelocityRequest(Codecs.Writer writer, Ros1Xarm_msgsMoveVelocityRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.speeds;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        boolean part1 = value.is_sync;
        writer.integer(part1 ? 1 : 0, 1, false);
        boolean part2 = value.is_tool_coord;
        writer.integer(part2 ? 1 : 0, 1, false);
        float part3 = value.duration;
        writer.f32(part3);
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
    private static Ros1Xarm_msgsMoveVelocityRequest readRos1Xarm_msgsMoveVelocityRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveVelocityRequest value = new Ros1Xarm_msgsMoveVelocityRequest();
        value.speeds = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.speeds.length; ++i)
            value.speeds[i] = reader.f32();
        value.is_sync = readBool(reader);
        value.is_tool_coord = readBool(reader);
        value.duration = reader.f32();
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
    public static final class Ros1Xarm_msgsMoveVelocityResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/MoveVelocityResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_acc65d558614e19b7f5b7b7cce68c7095ebd8cbe1de9ea16ea321e11f4fb3edc";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/MoveVelocityResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/MoveVelocityResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsMoveVelocityResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsMoveVelocityResponse> CODEC = new Codec<Ros1Xarm_msgsMoveVelocityResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/MoveVelocityResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsMoveVelocityResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsMoveVelocityResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/MoveVelocityResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsMoveVelocityResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsMoveVelocityResponse value = readRos1Xarm_msgsMoveVelocityResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsMoveVelocityResponse(Codecs.Writer writer, Ros1Xarm_msgsMoveVelocityResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsMoveVelocityResponse readRos1Xarm_msgsMoveVelocityResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsMoveVelocityResponse value = new Ros1Xarm_msgsMoveVelocityResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsPlayTrajRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/PlayTrajRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fc759117dcff2c6760da5440389c788522b715d0af1625304cd71abe3a5225d5";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/PlayTrajRequest.traj_file field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String traj_file = "";
        /**
         * @brief Original xarm_msgs/PlayTrajRequest.repeat_times field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short repeat_times = 0;
        /**
         * @brief Original xarm_msgs/PlayTrajRequest.speed_factor field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed_factor = 0;

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
        public Ros1Xarm_msgsPlayTrajRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsPlayTrajRequest> CODEC = new Codec<Ros1Xarm_msgsPlayTrajRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/PlayTrajRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsPlayTrajRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsPlayTrajRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/PlayTrajRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsPlayTrajRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsPlayTrajRequest value = readRos1Xarm_msgsPlayTrajRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsPlayTrajRequest(Codecs.Writer writer, Ros1Xarm_msgsPlayTrajRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.traj_file;

        writeText(writer, part0, 256);
        short part1 = value.repeat_times;
        writer.integer(part1, 2, true);
        short part2 = value.speed_factor;
        writer.integer(part2, 2, true);
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
    private static Ros1Xarm_msgsPlayTrajRequest readRos1Xarm_msgsPlayTrajRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsPlayTrajRequest value = new Ros1Xarm_msgsPlayTrajRequest();
        value.traj_file = readText(reader, 256);
        value.repeat_times = (short)reader.integer(2, true);
        value.speed_factor = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsPlayTrajResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/PlayTrajResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5455557b7aacda148cbaca2fa9aefd8e9c55b3e116d992953ed423079492b27a";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/PlayTrajResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/PlayTrajResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsPlayTrajResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsPlayTrajResponse> CODEC = new Codec<Ros1Xarm_msgsPlayTrajResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/PlayTrajResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsPlayTrajResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsPlayTrajResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/PlayTrajResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsPlayTrajResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsPlayTrajResponse value = readRos1Xarm_msgsPlayTrajResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsPlayTrajResponse(Codecs.Writer writer, Ros1Xarm_msgsPlayTrajResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsPlayTrajResponse readRos1Xarm_msgsPlayTrajResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsPlayTrajResponse value = new Ros1Xarm_msgsPlayTrajResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetAxisRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetAxisRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e9c45f00c83898744975890928756584b0646cf287024b3cb841380c368639f6";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/SetAxisRequest.id field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short id = 0;
        /**
         * @brief Original xarm_msgs/SetAxisRequest.data field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short data = 0;

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
        public Ros1Xarm_msgsSetAxisRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetAxisRequest> CODEC = new Codec<Ros1Xarm_msgsSetAxisRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetAxisRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetAxisRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetAxisRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetAxisRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetAxisRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetAxisRequest value = readRos1Xarm_msgsSetAxisRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetAxisRequest(Codecs.Writer writer, Ros1Xarm_msgsSetAxisRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.id;
        writer.integer(part0, 2, true);
        short part1 = value.data;
        writer.integer(part1, 2, true);
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
    private static Ros1Xarm_msgsSetAxisRequest readRos1Xarm_msgsSetAxisRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetAxisRequest value = new Ros1Xarm_msgsSetAxisRequest();
        value.id = (short)reader.integer(2, true);
        value.data = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsSetAxisResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetAxisResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f4de9fe78f1ee22ef7c06a47de4dfd6dbd0d4f9d25021ee58779a1f241304a27";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetAxisResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetAxisResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetAxisResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetAxisResponse> CODEC = new Codec<Ros1Xarm_msgsSetAxisResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetAxisResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetAxisResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetAxisResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetAxisResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetAxisResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetAxisResponse value = readRos1Xarm_msgsSetAxisResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetAxisResponse(Codecs.Writer writer, Ros1Xarm_msgsSetAxisResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetAxisResponse readRos1Xarm_msgsSetAxisResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetAxisResponse value = new Ros1Xarm_msgsSetAxisResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetControllerAnalogIORequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetControllerAnalogIORequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_146e98ac29dc5f902fe75643eee074eaaa37b87edc68e49e7377048f12344f66";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        /**
         * @brief Original xarm_msgs/SetControllerAnalogIORequest.port_num field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short port_num = 0;
        /**
         * @brief Original xarm_msgs/SetControllerAnalogIORequest.analog_value field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float analog_value = 0;

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
        public Ros1Xarm_msgsSetControllerAnalogIORequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetControllerAnalogIORequest> CODEC = new Codec<Ros1Xarm_msgsSetControllerAnalogIORequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetControllerAnalogIORequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetControllerAnalogIORequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetControllerAnalogIORequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetControllerAnalogIORequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetControllerAnalogIORequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetControllerAnalogIORequest value = readRos1Xarm_msgsSetControllerAnalogIORequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetControllerAnalogIORequest(Codecs.Writer writer, Ros1Xarm_msgsSetControllerAnalogIORequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.port_num;
        writer.integer(part0, 2, true);
        float part1 = value.analog_value;
        writer.f32(part1);
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
    private static Ros1Xarm_msgsSetControllerAnalogIORequest readRos1Xarm_msgsSetControllerAnalogIORequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetControllerAnalogIORequest value = new Ros1Xarm_msgsSetControllerAnalogIORequest();
        value.port_num = (short)reader.integer(2, true);
        value.analog_value = reader.f32();
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
    public static final class Ros1Xarm_msgsSetControllerAnalogIOResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetControllerAnalogIOResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a47ef61217e052829a26ee2b6f2d60714454f32df5fc583cca55a29b93debdec";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetControllerAnalogIOResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetControllerAnalogIOResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetControllerAnalogIOResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetControllerAnalogIOResponse> CODEC = new Codec<Ros1Xarm_msgsSetControllerAnalogIOResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetControllerAnalogIOResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetControllerAnalogIOResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetControllerAnalogIOResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetControllerAnalogIOResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetControllerAnalogIOResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetControllerAnalogIOResponse value = readRos1Xarm_msgsSetControllerAnalogIOResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetControllerAnalogIOResponse(Codecs.Writer writer, Ros1Xarm_msgsSetControllerAnalogIOResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetControllerAnalogIOResponse readRos1Xarm_msgsSetControllerAnalogIOResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetControllerAnalogIOResponse value = new Ros1Xarm_msgsSetControllerAnalogIOResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetDigitalIORequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetDigitalIORequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ac50ddbde487936e79606cb389b9bc074249136b4187a1334da6f09866cc3959";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.io_num field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short io_num = 0;
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short value = 0;

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
        public Ros1Xarm_msgsSetDigitalIORequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetDigitalIORequest> CODEC = new Codec<Ros1Xarm_msgsSetDigitalIORequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIORequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetDigitalIORequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetDigitalIORequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIORequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetDigitalIORequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                /**
                 * @brief Original xarm_msgs/SetDigitalIORequest.value field.
                 * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                Ros1Xarm_msgsSetDigitalIORequest value = readRos1Xarm_msgsSetDigitalIORequest(reader);
                reader.end();
                /**
                 * @brief Original xarm_msgs/SetDigitalIORequest.value field.
                 * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetDigitalIORequest(Codecs.Writer writer, Ros1Xarm_msgsSetDigitalIORequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.io_num;
        writer.integer(part0, 2, true);
        short part1 = value.value;
        writer.integer(part1, 2, true);
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
    private static Ros1Xarm_msgsSetDigitalIORequest readRos1Xarm_msgsSetDigitalIORequest(Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/SetDigitalIORequest.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        Ros1Xarm_msgsSetDigitalIORequest value = new Ros1Xarm_msgsSetDigitalIORequest();
        value.io_num = (short)reader.integer(2, true);
        value.value = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsSetDigitalIOResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetDigitalIOResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7f3aa4fdf4749d20e4ef13a51ecaa589df1a9a470ff3658ebb7c343e5940046a";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetDigitalIOResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetDigitalIOResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetDigitalIOResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetDigitalIOResponse> CODEC = new Codec<Ros1Xarm_msgsSetDigitalIOResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetDigitalIOResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetDigitalIOResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetDigitalIOResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetDigitalIOResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetDigitalIOResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetDigitalIOResponse value = readRos1Xarm_msgsSetDigitalIOResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetDigitalIOResponse(Codecs.Writer writer, Ros1Xarm_msgsSetDigitalIOResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetDigitalIOResponse readRos1Xarm_msgsSetDigitalIOResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetDigitalIOResponse value = new Ros1Xarm_msgsSetDigitalIOResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetFloat32Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetFloat32Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e723003cba5f2cc380015e77c978240a1b8c52bdbfe2e93357ffbe86e2ffd033";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/SetFloat32Request.data field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float data = 0;

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
        public Ros1Xarm_msgsSetFloat32Request()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetFloat32Request> CODEC = new Codec<Ros1Xarm_msgsSetFloat32Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetFloat32Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetFloat32Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetFloat32Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetFloat32Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetFloat32Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetFloat32Request value = readRos1Xarm_msgsSetFloat32Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetFloat32Request(Codecs.Writer writer, Ros1Xarm_msgsSetFloat32Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.data;
        writer.f32(part0);
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
    private static Ros1Xarm_msgsSetFloat32Request readRos1Xarm_msgsSetFloat32Request(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetFloat32Request value = new Ros1Xarm_msgsSetFloat32Request();
        value.data = reader.f32();
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
    public static final class Ros1Xarm_msgsSetFloat32Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetFloat32Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a42b57b8178d62ba34fb34eef2d92883a1c13135b19f5b1f876825bbea831712";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetFloat32Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetFloat32Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetFloat32Response()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetFloat32Response> CODEC = new Codec<Ros1Xarm_msgsSetFloat32Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetFloat32Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetFloat32Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetFloat32Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetFloat32Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetFloat32Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetFloat32Response value = readRos1Xarm_msgsSetFloat32Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetFloat32Response(Codecs.Writer writer, Ros1Xarm_msgsSetFloat32Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetFloat32Response readRos1Xarm_msgsSetFloat32Response(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetFloat32Response value = new Ros1Xarm_msgsSetFloat32Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetInt16Request
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetInt16Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a218118282ed14fca33c7529762ce9849398540f031ad6e18e3a99a90226c5c7";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/SetInt16Request.data field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short data = 0;

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
        public Ros1Xarm_msgsSetInt16Request()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetInt16Request> CODEC = new Codec<Ros1Xarm_msgsSetInt16Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetInt16Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetInt16Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetInt16Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetInt16Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetInt16Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetInt16Request value = readRos1Xarm_msgsSetInt16Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetInt16Request(Codecs.Writer writer, Ros1Xarm_msgsSetInt16Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.data;
        writer.integer(part0, 2, true);
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
    private static Ros1Xarm_msgsSetInt16Request readRos1Xarm_msgsSetInt16Request(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetInt16Request value = new Ros1Xarm_msgsSetInt16Request();
        value.data = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsSetInt16Response
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetInt16Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8df1192ff5ed3fc5eaaadf33980726b8764a541d30d062293d378d261367d656";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetInt16Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetInt16Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetInt16Response()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetInt16Response> CODEC = new Codec<Ros1Xarm_msgsSetInt16Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetInt16Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetInt16Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetInt16Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetInt16Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetInt16Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetInt16Response value = readRos1Xarm_msgsSetInt16Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetInt16Response(Codecs.Writer writer, Ros1Xarm_msgsSetInt16Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetInt16Response readRos1Xarm_msgsSetInt16Response(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetInt16Response value = new Ros1Xarm_msgsSetInt16Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetLoadRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetLoadRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47f2147c37956f007e24d79ddcdc080fb185aca0b30f5f2394f9c74bd00ee077";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original xarm_msgs/SetLoadRequest.mass field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mass = 0;
        /**
         * @brief Original xarm_msgs/SetLoadRequest.xc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float xc = 0;
        /**
         * @brief Original xarm_msgs/SetLoadRequest.yc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float yc = 0;
        /**
         * @brief Original xarm_msgs/SetLoadRequest.zc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float zc = 0;

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
        public Ros1Xarm_msgsSetLoadRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetLoadRequest> CODEC = new Codec<Ros1Xarm_msgsSetLoadRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetLoadRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetLoadRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetLoadRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetLoadRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetLoadRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetLoadRequest value = readRos1Xarm_msgsSetLoadRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetLoadRequest(Codecs.Writer writer, Ros1Xarm_msgsSetLoadRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.mass;
        writer.f32(part0);
        float part1 = value.xc;
        writer.f32(part1);
        float part2 = value.yc;
        writer.f32(part2);
        float part3 = value.zc;
        writer.f32(part3);
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
    private static Ros1Xarm_msgsSetLoadRequest readRos1Xarm_msgsSetLoadRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetLoadRequest value = new Ros1Xarm_msgsSetLoadRequest();
        value.mass = reader.f32();
        value.xc = reader.f32();
        value.yc = reader.f32();
        value.zc = reader.f32();
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
    public static final class Ros1Xarm_msgsSetLoadResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetLoadResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_20f4940a06078d160b6ea07f58b8fb060bc1a8821b1ad0f07b71eb69700d576e";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetLoadResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetLoadResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetLoadResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetLoadResponse> CODEC = new Codec<Ros1Xarm_msgsSetLoadResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetLoadResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetLoadResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetLoadResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetLoadResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetLoadResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetLoadResponse value = readRos1Xarm_msgsSetLoadResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetLoadResponse(Codecs.Writer writer, Ros1Xarm_msgsSetLoadResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetLoadResponse readRos1Xarm_msgsSetLoadResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetLoadResponse value = new Ros1Xarm_msgsSetLoadResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetModbusTimeoutRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetModbusTimeoutRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2cd77c33690133cdfe64c0a4ae5053e011792d98ac7c29281522f8576233c0cd";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original xarm_msgs/SetModbusTimeoutRequest.timeout_ms field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout_ms = 0;
        /**
         * @brief Original xarm_msgs/SetModbusTimeoutRequest.is_transparent_transmission field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_transparent_transmission = false;

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
        public Ros1Xarm_msgsSetModbusTimeoutRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetModbusTimeoutRequest> CODEC = new Codec<Ros1Xarm_msgsSetModbusTimeoutRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetModbusTimeoutRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetModbusTimeoutRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetModbusTimeoutRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetModbusTimeoutRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetModbusTimeoutRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetModbusTimeoutRequest value = readRos1Xarm_msgsSetModbusTimeoutRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetModbusTimeoutRequest(Codecs.Writer writer, Ros1Xarm_msgsSetModbusTimeoutRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.timeout_ms;
        writer.integer(part0, 4, true);
        boolean part1 = value.is_transparent_transmission;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_msgsSetModbusTimeoutRequest readRos1Xarm_msgsSetModbusTimeoutRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetModbusTimeoutRequest value = new Ros1Xarm_msgsSetModbusTimeoutRequest();
        value.timeout_ms = (int)reader.integer(4, true);
        value.is_transparent_transmission = readBool(reader);
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
    public static final class Ros1Xarm_msgsSetModbusTimeoutResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetModbusTimeoutResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4cb128cb7f3b2f8fed02ce3d6be008a47b6d607ca3a9fcb1f66faafa3aee5ce8";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetModbusTimeoutResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/SetModbusTimeoutResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;

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
        public Ros1Xarm_msgsSetModbusTimeoutResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetModbusTimeoutResponse> CODEC = new Codec<Ros1Xarm_msgsSetModbusTimeoutResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetModbusTimeoutResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetModbusTimeoutResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetModbusTimeoutResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetModbusTimeoutResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetModbusTimeoutResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetModbusTimeoutResponse value = readRos1Xarm_msgsSetModbusTimeoutResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetModbusTimeoutResponse(Codecs.Writer writer, Ros1Xarm_msgsSetModbusTimeoutResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message;

        writeText(writer, part0, 256);
        short part1 = value.ret;
        writer.integer(part1, 2, true);
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
    private static Ros1Xarm_msgsSetModbusTimeoutResponse readRos1Xarm_msgsSetModbusTimeoutResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetModbusTimeoutResponse value = new Ros1Xarm_msgsSetModbusTimeoutResponse();
        value.message = readText(reader, 256);
        value.ret = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsSetMultipleIntsRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetMultipleIntsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f94d07d162a7030fd07c31ced538836e2a43e1d674e027068a6b68f0807c23d1";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original xarm_msgs/SetMultipleIntsRequest.data_int field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] data_int = new short[0];

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
        public Ros1Xarm_msgsSetMultipleIntsRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetMultipleIntsRequest> CODEC = new Codec<Ros1Xarm_msgsSetMultipleIntsRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetMultipleIntsRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetMultipleIntsRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetMultipleIntsRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetMultipleIntsRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetMultipleIntsRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetMultipleIntsRequest value = readRos1Xarm_msgsSetMultipleIntsRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetMultipleIntsRequest(Codecs.Writer writer, Ros1Xarm_msgsSetMultipleIntsRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short[] part0 = value.data_int;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 2, true);
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
    private static Ros1Xarm_msgsSetMultipleIntsRequest readRos1Xarm_msgsSetMultipleIntsRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetMultipleIntsRequest value = new Ros1Xarm_msgsSetMultipleIntsRequest();
        value.data_int = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.data_int.length; ++i)
            value.data_int[i] = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsSetMultipleIntsResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetMultipleIntsResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_28610b145913b542d397376194b66e1d6bcda4cb648c00c7cc938716a7ee4e32";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetMultipleIntsResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetMultipleIntsResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetMultipleIntsResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetMultipleIntsResponse> CODEC = new Codec<Ros1Xarm_msgsSetMultipleIntsResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetMultipleIntsResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetMultipleIntsResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetMultipleIntsResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetMultipleIntsResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetMultipleIntsResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetMultipleIntsResponse value = readRos1Xarm_msgsSetMultipleIntsResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetMultipleIntsResponse(Codecs.Writer writer, Ros1Xarm_msgsSetMultipleIntsResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetMultipleIntsResponse readRos1Xarm_msgsSetMultipleIntsResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetMultipleIntsResponse value = new Ros1Xarm_msgsSetMultipleIntsResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetStringRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetStringRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7a1dc569d177cee8e573916e08ade45d02466e489320a09a66efdc97d533fd6f";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/SetStringRequest.str_data field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String str_data = "";
        /**
         * @brief Original xarm_msgs/SetStringRequest.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = 0;

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
        public Ros1Xarm_msgsSetStringRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetStringRequest> CODEC = new Codec<Ros1Xarm_msgsSetStringRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetStringRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetStringRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetStringRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetStringRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetStringRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetStringRequest value = readRos1Xarm_msgsSetStringRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetStringRequest(Codecs.Writer writer, Ros1Xarm_msgsSetStringRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.str_data;

        writeText(writer, part0, 256);
        float part1 = value.timeout;
        writer.f32(part1);
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
    private static Ros1Xarm_msgsSetStringRequest readRos1Xarm_msgsSetStringRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetStringRequest value = new Ros1Xarm_msgsSetStringRequest();
        value.str_data = readText(reader, 256);
        value.timeout = reader.f32();
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
    public static final class Ros1Xarm_msgsSetStringResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetStringResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a68d01727a39a01c8468fcd3aaa4833f62263dfd0b580675bbf8da3019759ade";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/SetStringResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetStringResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsSetStringResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetStringResponse> CODEC = new Codec<Ros1Xarm_msgsSetStringResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetStringResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetStringResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetStringResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetStringResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetStringResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetStringResponse value = readRos1Xarm_msgsSetStringResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetStringResponse(Codecs.Writer writer, Ros1Xarm_msgsSetStringResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsSetStringResponse readRos1Xarm_msgsSetStringResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetStringResponse value = new Ros1Xarm_msgsSetStringResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsSetToolModbusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetToolModbusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8bf73083009b67fc6a5f3342a1696a344887b83e9ef3b6b275179881e5cc25d6";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 4102;
        /**
         * @brief Original xarm_msgs/SetToolModbusRequest.send_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] send_data = new int[0];
        /**
         * @brief Original xarm_msgs/SetToolModbusRequest.respond_len field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short respond_len = 0;

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
        public Ros1Xarm_msgsSetToolModbusRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetToolModbusRequest> CODEC = new Codec<Ros1Xarm_msgsSetToolModbusRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetToolModbusRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetToolModbusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetToolModbusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetToolModbusRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetToolModbusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetToolModbusRequest value = readRos1Xarm_msgsSetToolModbusRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetToolModbusRequest(Codecs.Writer writer, Ros1Xarm_msgsSetToolModbusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.send_data;
        if(part0 == null || part0.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, false);
        }
        short part1 = value.respond_len;
        writer.integer(part1, 2, true);
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
    private static Ros1Xarm_msgsSetToolModbusRequest readRos1Xarm_msgsSetToolModbusRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetToolModbusRequest value = new Ros1Xarm_msgsSetToolModbusRequest();
        value.send_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.send_data.length; ++i)
            value.send_data[i] = (int)reader.integer(1, false);
        value.respond_len = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsSetToolModbusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/SetToolModbusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_74cd8b026001be17cac0cfa475dc33278df5c1c91b45fd01385fadd90990ef76";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/SetToolModbusResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/SetToolModbusResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/SetToolModbusResponse.respond_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] respond_data = new int[0];

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
        public Ros1Xarm_msgsSetToolModbusResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsSetToolModbusResponse> CODEC = new Codec<Ros1Xarm_msgsSetToolModbusResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/SetToolModbusResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsSetToolModbusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsSetToolModbusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/SetToolModbusResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsSetToolModbusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsSetToolModbusResponse value = readRos1Xarm_msgsSetToolModbusResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsSetToolModbusResponse(Codecs.Writer writer, Ros1Xarm_msgsSetToolModbusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.respond_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros1Xarm_msgsSetToolModbusResponse readRos1Xarm_msgsSetToolModbusResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsSetToolModbusResponse value = new Ros1Xarm_msgsSetToolModbusResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.respond_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.respond_data.length; ++i)
            value.respond_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros1Xarm_msgsTCPOffsetRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/TCPOffsetRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_588f23b909cce18cc490801b9d2f0960335362b0c823651cda6d5c8a27ee0afd";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original xarm_msgs/TCPOffsetRequest.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original xarm_msgs/TCPOffsetRequest.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original xarm_msgs/TCPOffsetRequest.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original xarm_msgs/TCPOffsetRequest.roll field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float roll = 0;
        /**
         * @brief Original xarm_msgs/TCPOffsetRequest.pitch field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float pitch = 0;
        /**
         * @brief Original xarm_msgs/TCPOffsetRequest.yaw field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float yaw = 0;

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
        public Ros1Xarm_msgsTCPOffsetRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsTCPOffsetRequest> CODEC = new Codec<Ros1Xarm_msgsTCPOffsetRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsTCPOffsetRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsTCPOffsetRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsTCPOffsetRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsTCPOffsetRequest value = readRos1Xarm_msgsTCPOffsetRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsTCPOffsetRequest(Codecs.Writer writer, Ros1Xarm_msgsTCPOffsetRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.roll;
        writer.f32(part3);
        float part4 = value.pitch;
        writer.f32(part4);
        float part5 = value.yaw;
        writer.f32(part5);
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
    private static Ros1Xarm_msgsTCPOffsetRequest readRos1Xarm_msgsTCPOffsetRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsTCPOffsetRequest value = new Ros1Xarm_msgsTCPOffsetRequest();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.roll = reader.f32();
        value.pitch = reader.f32();
        value.yaw = reader.f32();
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
    public static final class Ros1Xarm_msgsTCPOffsetResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/TCPOffsetResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f06deb14c2f0acce41ada4fecefd70e32bda4bc84b82354dffe333d2337464d";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/TCPOffsetResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/TCPOffsetResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsTCPOffsetResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsTCPOffsetResponse> CODEC = new Codec<Ros1Xarm_msgsTCPOffsetResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/TCPOffsetResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsTCPOffsetResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsTCPOffsetResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/TCPOffsetResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsTCPOffsetResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsTCPOffsetResponse value = readRos1Xarm_msgsTCPOffsetResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsTCPOffsetResponse(Codecs.Writer writer, Ros1Xarm_msgsTCPOffsetResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsTCPOffsetResponse readRos1Xarm_msgsTCPOffsetResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsTCPOffsetResponse value = new Ros1Xarm_msgsTCPOffsetResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_msgsVacuumGripperCtrlRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/VacuumGripperCtrlRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_08dc4a34df46f337acc6cd080e33cd67239f12882888374b08e2040c578f5fff";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlRequest.on field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean on = false;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlRequest.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlRequest.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = 0;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlRequest.delay_sec field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float delay_sec = 0;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlRequest.sync field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean sync = false;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlRequest.hardware_version field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short hardware_version = 0;

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
        public Ros1Xarm_msgsVacuumGripperCtrlRequest()
        {
        }

        public static final Codec<Ros1Xarm_msgsVacuumGripperCtrlRequest> CODEC = new Codec<Ros1Xarm_msgsVacuumGripperCtrlRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/VacuumGripperCtrlRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsVacuumGripperCtrlRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsVacuumGripperCtrlRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/VacuumGripperCtrlRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsVacuumGripperCtrlRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsVacuumGripperCtrlRequest value = readRos1Xarm_msgsVacuumGripperCtrlRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsVacuumGripperCtrlRequest(Codecs.Writer writer, Ros1Xarm_msgsVacuumGripperCtrlRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.on;
        writer.integer(part0 ? 1 : 0, 1, false);
        boolean part1 = value.wait;
        writer.integer(part1 ? 1 : 0, 1, false);
        float part2 = value.timeout;
        writer.f32(part2);
        float part3 = value.delay_sec;
        writer.f32(part3);
        boolean part4 = value.sync;
        writer.integer(part4 ? 1 : 0, 1, false);
        short part5 = value.hardware_version;
        writer.integer(part5, 2, true);
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
    private static Ros1Xarm_msgsVacuumGripperCtrlRequest readRos1Xarm_msgsVacuumGripperCtrlRequest(Codecs.Reader reader)
    {
        Ros1Xarm_msgsVacuumGripperCtrlRequest value = new Ros1Xarm_msgsVacuumGripperCtrlRequest();
        value.on = readBool(reader);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.delay_sec = reader.f32();
        value.sync = readBool(reader);
        value.hardware_version = (short)reader.integer(2, true);
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
    public static final class Ros1Xarm_msgsVacuumGripperCtrlResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_msgs/VacuumGripperCtrlResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_338ab06d98cb287b3c5f83221264346afa3c25aba360a93545d72ec6d6c0f540";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlResponse.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/VacuumGripperCtrlResponse.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros1Xarm_msgsVacuumGripperCtrlResponse()
        {
        }

        public static final Codec<Ros1Xarm_msgsVacuumGripperCtrlResponse> CODEC = new Codec<Ros1Xarm_msgsVacuumGripperCtrlResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/VacuumGripperCtrlResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_msgsVacuumGripperCtrlResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_msgsVacuumGripperCtrlResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/VacuumGripperCtrlResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_msgsVacuumGripperCtrlResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_msgsVacuumGripperCtrlResponse value = readRos1Xarm_msgsVacuumGripperCtrlResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_msgsVacuumGripperCtrlResponse(Codecs.Writer writer, Ros1Xarm_msgsVacuumGripperCtrlResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros1Xarm_msgsVacuumGripperCtrlResponse readRos1Xarm_msgsVacuumGripperCtrlResponse(Codecs.Reader reader)
    {
        Ros1Xarm_msgsVacuumGripperCtrlResponse value = new Ros1Xarm_msgsVacuumGripperCtrlResponse();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros1Xarm_plannerExec_planRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/exec_planRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f7c4c0d95453c6a7cfdc7726b003a63745ad0e533ced368d6422c5cb2c3d21f3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_planner/exec_planRequest.exec field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean exec = false;

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
        public Ros1Xarm_plannerExec_planRequest()
        {
        }

        public static final Codec<Ros1Xarm_plannerExec_planRequest> CODEC = new Codec<Ros1Xarm_plannerExec_planRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/exec_planRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerExec_planRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerExec_planRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/exec_planRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerExec_planRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerExec_planRequest value = readRos1Xarm_plannerExec_planRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerExec_planRequest(Codecs.Writer writer, Ros1Xarm_plannerExec_planRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.exec;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_plannerExec_planRequest readRos1Xarm_plannerExec_planRequest(Codecs.Reader reader)
    {
        Ros1Xarm_plannerExec_planRequest value = new Ros1Xarm_plannerExec_planRequest();
        value.exec = readBool(reader);
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
    public static final class Ros1Xarm_plannerExec_planResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/exec_planResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7e265ca343aa21c5f0dc043d8662e82ed8e57f56c4eaf7f15733162c1029a625";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_planner/exec_planResponse.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros1Xarm_plannerExec_planResponse()
        {
        }

        public static final Codec<Ros1Xarm_plannerExec_planResponse> CODEC = new Codec<Ros1Xarm_plannerExec_planResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/exec_planResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerExec_planResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerExec_planResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/exec_planResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerExec_planResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerExec_planResponse value = readRos1Xarm_plannerExec_planResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerExec_planResponse(Codecs.Writer writer, Ros1Xarm_plannerExec_planResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_plannerExec_planResponse readRos1Xarm_plannerExec_planResponse(Codecs.Reader reader)
    {
        Ros1Xarm_plannerExec_planResponse value = new Ros1Xarm_plannerExec_planResponse();
        value.success = readBool(reader);
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
    public static final class Ros1Xarm_plannerJoint_planRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/joint_planRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a531cf6d8b62366b63ef2f7c6fd2314211a3043b2da3f050c20080cf4ec8fd9";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original xarm_planner/joint_planRequest.target field.
         * @details float64 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public double[] target = new double[0];

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
        public Ros1Xarm_plannerJoint_planRequest()
        {
        }

        public static final Codec<Ros1Xarm_plannerJoint_planRequest> CODEC = new Codec<Ros1Xarm_plannerJoint_planRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/joint_planRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerJoint_planRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerJoint_planRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/joint_planRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerJoint_planRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerJoint_planRequest value = readRos1Xarm_plannerJoint_planRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerJoint_planRequest(Codecs.Writer writer, Ros1Xarm_plannerJoint_planRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        double[] part0 = value.target;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f64(part0[i]);
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
    private static Ros1Xarm_plannerJoint_planRequest readRos1Xarm_plannerJoint_planRequest(Codecs.Reader reader)
    {
        Ros1Xarm_plannerJoint_planRequest value = new Ros1Xarm_plannerJoint_planRequest();
        value.target = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.target.length; ++i)
            value.target[i] = reader.f64();
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
    public static final class Ros1Xarm_plannerJoint_planResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/joint_planResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_46925f1a9e54d9d74604a2f12457a97394e4ec30aa2832b7a66ae3da2782d668";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_planner/joint_planResponse.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros1Xarm_plannerJoint_planResponse()
        {
        }

        public static final Codec<Ros1Xarm_plannerJoint_planResponse> CODEC = new Codec<Ros1Xarm_plannerJoint_planResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/joint_planResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerJoint_planResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerJoint_planResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/joint_planResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerJoint_planResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerJoint_planResponse value = readRos1Xarm_plannerJoint_planResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerJoint_planResponse(Codecs.Writer writer, Ros1Xarm_plannerJoint_planResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_plannerJoint_planResponse readRos1Xarm_plannerJoint_planResponse(Codecs.Reader reader)
    {
        Ros1Xarm_plannerJoint_planResponse value = new Ros1Xarm_plannerJoint_planResponse();
        value.success = readBool(reader);
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
    public static final class Ros1Xarm_plannerPose_planRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/pose_planRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4ef40b7333ab897b974b0d800d68ed65ab28d52fc3b5dbe0561f799c7818cf22";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original xarm_planner/pose_planRequest.target field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose target = new Ros1Geometry_msgsPose();

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
        public Ros1Xarm_plannerPose_planRequest()
        {
        }

        public static final Codec<Ros1Xarm_plannerPose_planRequest> CODEC = new Codec<Ros1Xarm_plannerPose_planRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/pose_planRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerPose_planRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerPose_planRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/pose_planRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerPose_planRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerPose_planRequest value = readRos1Xarm_plannerPose_planRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerPose_planRequest(Codecs.Writer writer, Ros1Xarm_plannerPose_planRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.target;

        writeRos1Geometry_msgsPose(writer, part0);
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
    private static Ros1Xarm_plannerPose_planRequest readRos1Xarm_plannerPose_planRequest(Codecs.Reader reader)
    {
        Ros1Xarm_plannerPose_planRequest value = new Ros1Xarm_plannerPose_planRequest();
        value.target = readRos1Geometry_msgsPose(reader);
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
    public static final class Ros1Xarm_plannerPose_planResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/pose_planResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d8eb8efb60382e22f7c357dbfd8391a3c6608358522718dadaeb36a46b985113";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_planner/pose_planResponse.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros1Xarm_plannerPose_planResponse()
        {
        }

        public static final Codec<Ros1Xarm_plannerPose_planResponse> CODEC = new Codec<Ros1Xarm_plannerPose_planResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/pose_planResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerPose_planResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerPose_planResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/pose_planResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerPose_planResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerPose_planResponse value = readRos1Xarm_plannerPose_planResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerPose_planResponse(Codecs.Writer writer, Ros1Xarm_plannerPose_planResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_plannerPose_planResponse readRos1Xarm_plannerPose_planResponse(Codecs.Reader reader)
    {
        Ros1Xarm_plannerPose_planResponse value = new Ros1Xarm_plannerPose_planResponse();
        value.success = readBool(reader);
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
    public static final class Ros1Xarm_plannerSingle_straight_planRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/single_straight_planRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a6d7a443bf5aa7120d9595f93f922319b473efe007c59700a3b70ed7907809f";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original xarm_planner/single_straight_planRequest.target field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose target = new Ros1Geometry_msgsPose();

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
        public Ros1Xarm_plannerSingle_straight_planRequest()
        {
        }

        public static final Codec<Ros1Xarm_plannerSingle_straight_planRequest> CODEC = new Codec<Ros1Xarm_plannerSingle_straight_planRequest>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/single_straight_planRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerSingle_straight_planRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerSingle_straight_planRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/single_straight_planRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerSingle_straight_planRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerSingle_straight_planRequest value = readRos1Xarm_plannerSingle_straight_planRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerSingle_straight_planRequest(Codecs.Writer writer, Ros1Xarm_plannerSingle_straight_planRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.target;

        writeRos1Geometry_msgsPose(writer, part0);
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
    private static Ros1Xarm_plannerSingle_straight_planRequest readRos1Xarm_plannerSingle_straight_planRequest(Codecs.Reader reader)
    {
        Ros1Xarm_plannerSingle_straight_planRequest value = new Ros1Xarm_plannerSingle_straight_planRequest();
        value.target = readRos1Geometry_msgsPose(reader);
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
    public static final class Ros1Xarm_plannerSingle_straight_planResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "xarm_planner/single_straight_planResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_91dfc3564ce446deb95d1e7a9d080b597b426a13c16f0af6d0452af21c3697dd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_planner/single_straight_planResponse.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros1Xarm_plannerSingle_straight_planResponse()
        {
        }

        public static final Codec<Ros1Xarm_plannerSingle_straight_planResponse> CODEC = new Codec<Ros1Xarm_plannerSingle_straight_planResponse>() {
            /**
             * @brief Encode the complete ordered value for xarm_planner/single_straight_planResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Xarm_plannerSingle_straight_planResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Xarm_plannerSingle_straight_planResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_planner/single_straight_planResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Xarm_plannerSingle_straight_planResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Xarm_plannerSingle_straight_planResponse value = readRos1Xarm_plannerSingle_straight_planResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Xarm_plannerSingle_straight_planResponse(Codecs.Writer writer, Ros1Xarm_plannerSingle_straight_planResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Xarm_plannerSingle_straight_planResponse readRos1Xarm_plannerSingle_straight_planResponse(Codecs.Reader reader)
    {
        Ros1Xarm_plannerSingle_straight_planResponse value = new Ros1Xarm_plannerSingle_straight_planResponse();
        value.success = readBool(reader);
        return value;
    }
}
