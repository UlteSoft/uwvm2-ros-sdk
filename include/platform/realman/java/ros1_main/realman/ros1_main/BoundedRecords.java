/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original realman/ros1_main canonical value domain.
 * @details The selected domain contains 105 complete record/components and 349 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package realman.ros1_main;

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
     * @brief Preserve all original rm_msgs/ArmState fields.
     * @details 4 ordered fields, canonical extent 65..161 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Rm_msgsArmState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/ArmState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93";
        public static final int MIN_WIRE_BYTES = 65, MAX_WIRE_BYTES = 161;
        /**
         * @brief Original rm_msgs/ArmState.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/ArmState.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/ArmState.err field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] err = new int[0];
        /**
         * @brief Original rm_msgs/ArmState.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros1Rm_msgsArmState()
        {
        }

        public static final Codec<Ros1Rm_msgsArmState> CODEC = new Codec<Ros1Rm_msgsArmState>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/ArmState.
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
            public byte[] encode(Ros1Rm_msgsArmState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArmState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/ArmState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsArmState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArmState value = readRos1Rm_msgsArmState(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArmState(Codecs.Writer writer, Ros1Rm_msgsArmState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        Ros1Geometry_msgsPose part1 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part1);
        int[] part2 = value.err;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 2, false);
        }
        int part3 = value.dof;
        writer.integer(part3, 1, false);
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
    private static Ros1Rm_msgsArmState readRos1Rm_msgsArmState(Codecs.Reader reader)
    {
        Ros1Rm_msgsArmState value = new Ros1Rm_msgsArmState();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.Pose = readRos1Geometry_msgsPose(reader);
        value.err = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.err.length; ++i)
            value.err[i] = (int)reader.integer(2, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsArm_Analog_Output
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Analog_Output";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_msgs/Arm_Analog_Output.num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_msgs/Arm_Analog_Output.voltage field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float voltage = 0;

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
        public Ros1Rm_msgsArm_Analog_Output()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Analog_Output> CODEC = new Codec<Ros1Rm_msgsArm_Analog_Output>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Analog_Output.
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
            public byte[] encode(Ros1Rm_msgsArm_Analog_Output value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Analog_Output(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Analog_Output.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Analog_Output decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Analog_Output value = readRos1Rm_msgsArm_Analog_Output(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Analog_Output(Codecs.Writer writer, Ros1Rm_msgsArm_Analog_Output value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.num;
        writer.integer(part0, 1, false);
        float part1 = value.voltage;
        writer.f32(part1);
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
    private static Ros1Rm_msgsArm_Analog_Output readRos1Rm_msgsArm_Analog_Output(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Analog_Output value = new Ros1Rm_msgsArm_Analog_Output();
        value.num = (int)reader.integer(1, false);
        value.voltage = reader.f32();
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
    public static final class Ros1Rm_msgsArm_Current_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Current_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844";
        public static final int MIN_WIRE_BYTES = 33, MAX_WIRE_BYTES = 129;
        /**
         * @brief Original rm_msgs/Arm_Current_State.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/Arm_Current_State.Pose field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] Pose = new float[6];
        /**
         * @brief Original rm_msgs/Arm_Current_State.err field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] err = new int[0];
        /**
         * @brief Original rm_msgs/Arm_Current_State.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros1Rm_msgsArm_Current_State()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Current_State> CODEC = new Codec<Ros1Rm_msgsArm_Current_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Current_State.
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
            public byte[] encode(Ros1Rm_msgsArm_Current_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Current_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Current_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Current_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Current_State value = readRos1Rm_msgsArm_Current_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Current_State(Codecs.Writer writer, Ros1Rm_msgsArm_Current_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float[] part1 = value.Pose;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
        int[] part2 = value.err;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 2, false);
        }
        int part3 = value.dof;
        writer.integer(part3, 1, false);
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
    private static Ros1Rm_msgsArm_Current_State readRos1Rm_msgsArm_Current_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Current_State value = new Ros1Rm_msgsArm_Current_State();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.Pose = new float[6];
        for(int i = 0; i < value.Pose.length; ++i)
            value.Pose[i] = reader.f32();
        value.err = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.err.length; ++i)
            value.err[i] = (int)reader.integer(2, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsArm_Current_Status
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Current_Status";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_msgs/Arm_Current_Status.arm_current_status field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String arm_current_status = "";

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
        public Ros1Rm_msgsArm_Current_Status()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Current_Status> CODEC = new Codec<Ros1Rm_msgsArm_Current_Status>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Current_Status.
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
            public byte[] encode(Ros1Rm_msgsArm_Current_Status value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Current_Status(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Current_Status.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Current_Status decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Current_Status value = readRos1Rm_msgsArm_Current_Status(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Current_Status(Codecs.Writer writer, Ros1Rm_msgsArm_Current_Status value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.arm_current_status;

        writeText(writer, part0, 256);
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
    private static Ros1Rm_msgsArm_Current_Status readRos1Rm_msgsArm_Current_Status(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Current_Status value = new Ros1Rm_msgsArm_Current_Status();
        value.arm_current_status = readText(reader, 256);
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
    public static final class Ros1Rm_msgsArm_Digital_Output
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Digital_Output";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Arm_Digital_Output.num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_msgs/Arm_Digital_Output.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsArm_Digital_Output()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Digital_Output> CODEC = new Codec<Ros1Rm_msgsArm_Digital_Output>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Digital_Output.
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
            public byte[] encode(Ros1Rm_msgsArm_Digital_Output value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Digital_Output(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Digital_Output.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Digital_Output decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Digital_Output value = readRos1Rm_msgsArm_Digital_Output(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Digital_Output(Codecs.Writer writer, Ros1Rm_msgsArm_Digital_Output value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.num;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsArm_Digital_Output readRos1Rm_msgsArm_Digital_Output(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Digital_Output value = new Ros1Rm_msgsArm_Digital_Output();
        value.num = (int)reader.integer(1, false);
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsArm_IO_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_IO_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Arm_IO_State.Arm_Digital_Input field.
         * @details int8 array, count/quota 4, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte[] Arm_Digital_Input = new byte[4];

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
        public Ros1Rm_msgsArm_IO_State()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_IO_State> CODEC = new Codec<Ros1Rm_msgsArm_IO_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_IO_State.
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
            public byte[] encode(Ros1Rm_msgsArm_IO_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_IO_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_IO_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsArm_IO_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_IO_State value = readRos1Rm_msgsArm_IO_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_IO_State(Codecs.Writer writer, Ros1Rm_msgsArm_IO_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte[] part0 = value.Arm_Digital_Input;
        if(part0 == null || part0.length != 4)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, true);
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
    private static Ros1Rm_msgsArm_IO_State readRos1Rm_msgsArm_IO_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_IO_State value = new Ros1Rm_msgsArm_IO_State();
        value.Arm_Digital_Input = new byte[4];
        for(int i = 0; i < value.Arm_Digital_Input.length; ++i)
            value.Arm_Digital_Input[i] = (byte)reader.integer(1, true);
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
     * @brief Preserve all original rm_msgs/Arm_Joint_Speed_Max fields.
     * @details 3 ordered fields, canonical extent 24..4568 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Rm_msgsArm_Joint_Speed_Max
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Joint_Speed_Max";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 4568;
        /**
         * @brief Original rm_msgs/Arm_Joint_Speed_Max.header field.
         * @details std_msgs/Header scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        /**
         * @brief Original rm_msgs/Arm_Joint_Speed_Max.name field.
         * @details string sequence, count/quota 16, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String[] name = new String[0];
        /**
         * @brief Original rm_msgs/Arm_Joint_Speed_Max.max_velocity field.
         * @details float64 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public double[] max_velocity = new double[0];

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
        public Ros1Rm_msgsArm_Joint_Speed_Max()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Joint_Speed_Max> CODEC = new Codec<Ros1Rm_msgsArm_Joint_Speed_Max>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Joint_Speed_Max.
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
            public byte[] encode(Ros1Rm_msgsArm_Joint_Speed_Max value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Joint_Speed_Max(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Joint_Speed_Max.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Joint_Speed_Max decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Joint_Speed_Max value = readRos1Rm_msgsArm_Joint_Speed_Max(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Joint_Speed_Max(Codecs.Writer writer, Ros1Rm_msgsArm_Joint_Speed_Max value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;

        writeRos1Std_msgsHeader(writer, part0);
        String[] part1 = value.name;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {

            writeText(writer, part1[i], 256);
        }
        double[] part2 = value.max_velocity;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f64(part2[i]);
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
    private static Ros1Rm_msgsArm_Joint_Speed_Max readRos1Rm_msgsArm_Joint_Speed_Max(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Joint_Speed_Max value = new Ros1Rm_msgsArm_Joint_Speed_Max();
        value.header = readRos1Std_msgsHeader(reader);
        value.name = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.name.length; ++i)
            value.name[i] = readText(reader, 256);
        value.max_velocity = new double[readCount(reader, 16, 8)];
        for(int i = 0; i < value.max_velocity.length; ++i)
            value.max_velocity[i] = reader.f64();
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
    public static final class Ros1Rm_msgsSoftwarebuildinfo
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Softwarebuildinfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;
        /**
         * @brief Original rm_msgs/Softwarebuildinfo.build_time field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String build_time = "";
        /**
         * @brief Original rm_msgs/Softwarebuildinfo.version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String version = "";

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
        public Ros1Rm_msgsSoftwarebuildinfo()
        {
        }

        public static final Codec<Ros1Rm_msgsSoftwarebuildinfo> CODEC = new Codec<Ros1Rm_msgsSoftwarebuildinfo>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Softwarebuildinfo.
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
            public byte[] encode(Ros1Rm_msgsSoftwarebuildinfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsSoftwarebuildinfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Softwarebuildinfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsSoftwarebuildinfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsSoftwarebuildinfo value = readRos1Rm_msgsSoftwarebuildinfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsSoftwarebuildinfo(Codecs.Writer writer, Ros1Rm_msgsSoftwarebuildinfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.build_time;

        writeText(writer, part0, 256);
        String part1 = value.version;

        writeText(writer, part1, 256);
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
    private static Ros1Rm_msgsSoftwarebuildinfo readRos1Rm_msgsSoftwarebuildinfo(Codecs.Reader reader)
    {
        Ros1Rm_msgsSoftwarebuildinfo value = new Ros1Rm_msgsSoftwarebuildinfo();
        value.build_time = readText(reader, 256);
        value.version = readText(reader, 256);
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
    public static final class Ros1Rm_msgsArm_Softversion_v3
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Softversion_v3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1820;
        /**
         * @brief Original rm_msgs/Arm_Softversion_v3.product_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String product_version = "";
        /**
         * @brief Original rm_msgs/Arm_Softversion_v3.algorithm_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String algorithm_info = "";
        /**
         * @brief Original rm_msgs/Arm_Softversion_v3.ctrl_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo ctrl_info = new Ros1Rm_msgsSoftwarebuildinfo();
        /**
         * @brief Original rm_msgs/Arm_Softversion_v3.dynamic_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String dynamic_info = "";
        /**
         * @brief Original rm_msgs/Arm_Softversion_v3.plan_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo plan_info = new Ros1Rm_msgsSoftwarebuildinfo();

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
        public Ros1Rm_msgsArm_Softversion_v3()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Softversion_v3> CODEC = new Codec<Ros1Rm_msgsArm_Softversion_v3>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Softversion_v3.
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
            public byte[] encode(Ros1Rm_msgsArm_Softversion_v3 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Softversion_v3(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Softversion_v3.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Softversion_v3 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Softversion_v3 value = readRos1Rm_msgsArm_Softversion_v3(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Softversion_v3(Codecs.Writer writer, Ros1Rm_msgsArm_Softversion_v3 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.product_version;

        writeText(writer, part0, 256);
        String part1 = value.algorithm_info;

        writeText(writer, part1, 256);
        Ros1Rm_msgsSoftwarebuildinfo part2 = value.ctrl_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part2);
        String part3 = value.dynamic_info;

        writeText(writer, part3, 256);
        Ros1Rm_msgsSoftwarebuildinfo part4 = value.plan_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part4);
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
    private static Ros1Rm_msgsArm_Softversion_v3 readRos1Rm_msgsArm_Softversion_v3(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Softversion_v3 value = new Ros1Rm_msgsArm_Softversion_v3();
        value.product_version = readText(reader, 256);
        value.algorithm_info = readText(reader, 256);
        value.ctrl_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
        value.dynamic_info = readText(reader, 256);
        value.plan_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
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
    public static final class Ros1Rm_msgsArm_Softversion_v4
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Softversion_v4";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 2340;
        /**
         * @brief Original rm_msgs/Arm_Softversion_v4.product_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String product_version = "";
        /**
         * @brief Original rm_msgs/Arm_Softversion_v4.controller_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String controller_version = "";
        /**
         * @brief Original rm_msgs/Arm_Softversion_v4.algorithm_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String algorithm_info = "";
        /**
         * @brief Original rm_msgs/Arm_Softversion_v4.ctrl_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo ctrl_info = new Ros1Rm_msgsSoftwarebuildinfo();
        /**
         * @brief Original rm_msgs/Arm_Softversion_v4.com_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo com_info = new Ros1Rm_msgsSoftwarebuildinfo();
        /**
         * @brief Original rm_msgs/Arm_Softversion_v4.program_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo program_info = new Ros1Rm_msgsSoftwarebuildinfo();

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
        public Ros1Rm_msgsArm_Softversion_v4()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Softversion_v4> CODEC = new Codec<Ros1Rm_msgsArm_Softversion_v4>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Softversion_v4.
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
            public byte[] encode(Ros1Rm_msgsArm_Softversion_v4 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Softversion_v4(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Softversion_v4.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Softversion_v4 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Softversion_v4 value = readRos1Rm_msgsArm_Softversion_v4(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Softversion_v4(Codecs.Writer writer, Ros1Rm_msgsArm_Softversion_v4 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.product_version;

        writeText(writer, part0, 256);
        String part1 = value.controller_version;

        writeText(writer, part1, 256);
        String part2 = value.algorithm_info;

        writeText(writer, part2, 256);
        Ros1Rm_msgsSoftwarebuildinfo part3 = value.ctrl_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part3);
        Ros1Rm_msgsSoftwarebuildinfo part4 = value.com_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part4);
        Ros1Rm_msgsSoftwarebuildinfo part5 = value.program_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part5);
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
    private static Ros1Rm_msgsArm_Softversion_v4 readRos1Rm_msgsArm_Softversion_v4(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Softversion_v4 value = new Ros1Rm_msgsArm_Softversion_v4();
        value.product_version = readText(reader, 256);
        value.controller_version = readText(reader, 256);
        value.algorithm_info = readText(reader, 256);
        value.ctrl_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
        value.com_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
        value.program_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
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
    public static final class Ros1Rm_msgsArm_Software_Version
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Arm_Software_Version";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5";
        public static final int MIN_WIRE_BYTES = 48, MAX_WIRE_BYTES = 3120;
        /**
         * @brief Original rm_msgs/Arm_Software_Version.product_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String product_version = "";
        /**
         * @brief Original rm_msgs/Arm_Software_Version.algorithm_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String algorithm_info = "";
        /**
         * @brief Original rm_msgs/Arm_Software_Version.ctrl_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo ctrl_info = new Ros1Rm_msgsSoftwarebuildinfo();
        /**
         * @brief Original rm_msgs/Arm_Software_Version.dynamic_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String dynamic_info = "";
        /**
         * @brief Original rm_msgs/Arm_Software_Version.plan_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo plan_info = new Ros1Rm_msgsSoftwarebuildinfo();
        /**
         * @brief Original rm_msgs/Arm_Software_Version.controller_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String controller_version = "";
        /**
         * @brief Original rm_msgs/Arm_Software_Version.com_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo com_info = new Ros1Rm_msgsSoftwarebuildinfo();
        /**
         * @brief Original rm_msgs/Arm_Software_Version.program_info field.
         * @details rm_msgs/Softwarebuildinfo scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsSoftwarebuildinfo program_info = new Ros1Rm_msgsSoftwarebuildinfo();

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
        public Ros1Rm_msgsArm_Software_Version()
        {
        }

        public static final Codec<Ros1Rm_msgsArm_Software_Version> CODEC = new Codec<Ros1Rm_msgsArm_Software_Version>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Arm_Software_Version.
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
            public byte[] encode(Ros1Rm_msgsArm_Software_Version value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsArm_Software_Version(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Arm_Software_Version.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsArm_Software_Version decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsArm_Software_Version value = readRos1Rm_msgsArm_Software_Version(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsArm_Software_Version(Codecs.Writer writer, Ros1Rm_msgsArm_Software_Version value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.product_version;

        writeText(writer, part0, 256);
        String part1 = value.algorithm_info;

        writeText(writer, part1, 256);
        Ros1Rm_msgsSoftwarebuildinfo part2 = value.ctrl_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part2);
        String part3 = value.dynamic_info;

        writeText(writer, part3, 256);
        Ros1Rm_msgsSoftwarebuildinfo part4 = value.plan_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part4);
        String part5 = value.controller_version;

        writeText(writer, part5, 256);
        Ros1Rm_msgsSoftwarebuildinfo part6 = value.com_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part6);
        Ros1Rm_msgsSoftwarebuildinfo part7 = value.program_info;

        writeRos1Rm_msgsSoftwarebuildinfo(writer, part7);
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
    private static Ros1Rm_msgsArm_Software_Version readRos1Rm_msgsArm_Software_Version(Codecs.Reader reader)
    {
        Ros1Rm_msgsArm_Software_Version value = new Ros1Rm_msgsArm_Software_Version();
        value.product_version = readText(reader, 256);
        value.algorithm_info = readText(reader, 256);
        value.ctrl_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
        value.dynamic_info = readText(reader, 256);
        value.plan_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
        value.controller_version = readText(reader, 256);
        value.com_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
        value.program_info = readRos1Rm_msgsSoftwarebuildinfo(reader);
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
    public static final class Ros1Rm_msgsCabinet
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Cabinet";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf";
        public static final int MIN_WIRE_BYTES = 78, MAX_WIRE_BYTES = 334;
        /**
         * @brief Original rm_msgs/Cabinet.header field.
         * @details std_msgs/Header scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Std_msgsHeader header = new Ros1Std_msgsHeader();
        /**
         * @brief Original rm_msgs/Cabinet.pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/Cabinet.label field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short label = 0;
        /**
         * @brief Original rm_msgs/Cabinet.angle field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float angle = 0;

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
        public Ros1Rm_msgsCabinet()
        {
        }

        public static final Codec<Ros1Rm_msgsCabinet> CODEC = new Codec<Ros1Rm_msgsCabinet>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Cabinet.
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
            public byte[] encode(Ros1Rm_msgsCabinet value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsCabinet(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Cabinet.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsCabinet decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsCabinet value = readRos1Rm_msgsCabinet(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsCabinet(Codecs.Writer writer, Ros1Rm_msgsCabinet value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Std_msgsHeader part0 = value.header;

        writeRos1Std_msgsHeader(writer, part0);
        Ros1Geometry_msgsPose part1 = value.pose;

        writeRos1Geometry_msgsPose(writer, part1);
        short part2 = value.label;
        writer.integer(part2, 2, true);
        float part3 = value.angle;
        writer.f32(part3);
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
    private static Ros1Rm_msgsCabinet readRos1Rm_msgsCabinet(Codecs.Reader reader)
    {
        Ros1Rm_msgsCabinet value = new Ros1Rm_msgsCabinet();
        value.header = readRos1Std_msgsHeader(reader);
        value.pose = readRos1Geometry_msgsPose(reader);
        value.label = (short)reader.integer(2, true);
        value.angle = reader.f32();
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
    public static final class Ros1Rm_msgsCartePos
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/CartePos";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original rm_msgs/CartePos.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();

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
        public Ros1Rm_msgsCartePos()
        {
        }

        public static final Codec<Ros1Rm_msgsCartePos> CODEC = new Codec<Ros1Rm_msgsCartePos>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/CartePos.
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
            public byte[] encode(Ros1Rm_msgsCartePos value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsCartePos(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/CartePos.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsCartePos decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsCartePos value = readRos1Rm_msgsCartePos(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsCartePos(Codecs.Writer writer, Ros1Rm_msgsCartePos value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part0);
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
    private static Ros1Rm_msgsCartePos readRos1Rm_msgsCartePos(Codecs.Reader reader)
    {
        Ros1Rm_msgsCartePos value = new Ros1Rm_msgsCartePos();
        value.Pose = readRos1Geometry_msgsPose(reader);
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
    public static final class Ros1Rm_msgsCartePosCustom
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/CartePosCustom";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c";
        public static final int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;
        /**
         * @brief Original rm_msgs/CartePosCustom.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/CartePosCustom.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_msgs/CartePosCustom.trajectory_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_mode = 0;
        /**
         * @brief Original rm_msgs/CartePosCustom.radio field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int radio = 0;

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
        public Ros1Rm_msgsCartePosCustom()
        {
        }

        public static final Codec<Ros1Rm_msgsCartePosCustom> CODEC = new Codec<Ros1Rm_msgsCartePosCustom>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/CartePosCustom.
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
            public byte[] encode(Ros1Rm_msgsCartePosCustom value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsCartePosCustom(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/CartePosCustom.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsCartePosCustom decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsCartePosCustom value = readRos1Rm_msgsCartePosCustom(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsCartePosCustom(Codecs.Writer writer, Ros1Rm_msgsCartePosCustom value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part0);
        boolean part1 = value.follow;
        writer.integer(part1 ? 1 : 0, 1, false);
        int part2 = value.trajectory_mode;
        writer.integer(part2, 1, false);
        int part3 = value.radio;
        writer.integer(part3, 1, false);
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
    private static Ros1Rm_msgsCartePosCustom readRos1Rm_msgsCartePosCustom(Codecs.Reader reader)
    {
        Ros1Rm_msgsCartePosCustom value = new Ros1Rm_msgsCartePosCustom();
        value.Pose = readRos1Geometry_msgsPose(reader);
        value.follow = readBool(reader);
        value.trajectory_mode = (int)reader.integer(1, false);
        value.radio = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsChangeTool_Name
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/ChangeTool_Name";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_msgs/ChangeTool_Name.toolname field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String toolname = "";

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
        public Ros1Rm_msgsChangeTool_Name()
        {
        }

        public static final Codec<Ros1Rm_msgsChangeTool_Name> CODEC = new Codec<Ros1Rm_msgsChangeTool_Name>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/ChangeTool_Name.
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
            public byte[] encode(Ros1Rm_msgsChangeTool_Name value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsChangeTool_Name(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/ChangeTool_Name.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsChangeTool_Name decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsChangeTool_Name value = readRos1Rm_msgsChangeTool_Name(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsChangeTool_Name(Codecs.Writer writer, Ros1Rm_msgsChangeTool_Name value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.toolname;

        writeText(writer, part0, 256);
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
    private static Ros1Rm_msgsChangeTool_Name readRos1Rm_msgsChangeTool_Name(Codecs.Reader reader)
    {
        Ros1Rm_msgsChangeTool_Name value = new Ros1Rm_msgsChangeTool_Name();
        value.toolname = readText(reader, 256);
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
    public static final class Ros1Rm_msgsChangeTool_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/ChangeTool_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_msgs/ChangeTool_State.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsChangeTool_State()
        {
        }

        public static final Codec<Ros1Rm_msgsChangeTool_State> CODEC = new Codec<Ros1Rm_msgsChangeTool_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/ChangeTool_State.
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
            public byte[] encode(Ros1Rm_msgsChangeTool_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsChangeTool_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/ChangeTool_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsChangeTool_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsChangeTool_State value = readRos1Rm_msgsChangeTool_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsChangeTool_State(Codecs.Writer writer, Ros1Rm_msgsChangeTool_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.state;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsChangeTool_State readRos1Rm_msgsChangeTool_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsChangeTool_State value = new Ros1Rm_msgsChangeTool_State();
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsChangeWorkFrame_Name
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/ChangeWorkFrame_Name";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_msgs/ChangeWorkFrame_Name.WorkFrame_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String WorkFrame_name = "";

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
        public Ros1Rm_msgsChangeWorkFrame_Name()
        {
        }

        public static final Codec<Ros1Rm_msgsChangeWorkFrame_Name> CODEC = new Codec<Ros1Rm_msgsChangeWorkFrame_Name>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/ChangeWorkFrame_Name.
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
            public byte[] encode(Ros1Rm_msgsChangeWorkFrame_Name value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsChangeWorkFrame_Name(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/ChangeWorkFrame_Name.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsChangeWorkFrame_Name decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsChangeWorkFrame_Name value = readRos1Rm_msgsChangeWorkFrame_Name(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsChangeWorkFrame_Name(Codecs.Writer writer, Ros1Rm_msgsChangeWorkFrame_Name value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.WorkFrame_name;

        writeText(writer, part0, 256);
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
    private static Ros1Rm_msgsChangeWorkFrame_Name readRos1Rm_msgsChangeWorkFrame_Name(Codecs.Reader reader)
    {
        Ros1Rm_msgsChangeWorkFrame_Name value = new Ros1Rm_msgsChangeWorkFrame_Name();
        value.WorkFrame_name = readText(reader, 256);
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
    public static final class Ros1Rm_msgsChangeWorkFrame_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/ChangeWorkFrame_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_msgs/ChangeWorkFrame_State.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsChangeWorkFrame_State()
        {
        }

        public static final Codec<Ros1Rm_msgsChangeWorkFrame_State> CODEC = new Codec<Ros1Rm_msgsChangeWorkFrame_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/ChangeWorkFrame_State.
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
            public byte[] encode(Ros1Rm_msgsChangeWorkFrame_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsChangeWorkFrame_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/ChangeWorkFrame_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsChangeWorkFrame_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsChangeWorkFrame_State value = readRos1Rm_msgsChangeWorkFrame_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsChangeWorkFrame_State(Codecs.Writer writer, Ros1Rm_msgsChangeWorkFrame_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.state;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsChangeWorkFrame_State readRos1Rm_msgsChangeWorkFrame_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsChangeWorkFrame_State value = new Ros1Rm_msgsChangeWorkFrame_State();
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsErr
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Err";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 36;
        /**
         * @brief Original rm_msgs/Err.err field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] err = new int[0];

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
        public Ros1Rm_msgsErr()
        {
        }

        public static final Codec<Ros1Rm_msgsErr> CODEC = new Codec<Ros1Rm_msgsErr>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Err.
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
            public byte[] encode(Ros1Rm_msgsErr value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsErr(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Err.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsErr decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsErr value = readRos1Rm_msgsErr(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsErr(Codecs.Writer writer, Ros1Rm_msgsErr value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.err;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 2, false);
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
    private static Ros1Rm_msgsErr readRos1Rm_msgsErr(Codecs.Reader reader)
    {
        Ros1Rm_msgsErr value = new Ros1Rm_msgsErr();
        value.err = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.err.length; ++i)
            value.err[i] = (int)reader.integer(2, false);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/ExpandState fields.
     * @details 7 ordered fields, canonical extent 12..12 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Rm_msgsExpandState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/ExpandState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_640f4cf4113a2c38af646bd4b1a112916b795daec1b8c4b4362712ab473d3f1a";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        /**
         * @brief Original rm_msgs/ExpandState.get_state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean get_state = false;
        /**
         * @brief Original rm_msgs/ExpandState.pos field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short pos = 0;
        /**
         * @brief Original rm_msgs/ExpandState.err_flag field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short err_flag = 0;
        /**
         * @brief Original rm_msgs/ExpandState.en_flag field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int en_flag = 0;
        /**
         * @brief Original rm_msgs/ExpandState.current field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int current = 0;
        /**
         * @brief Original rm_msgs/ExpandState.mode field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte mode = 0;
        /**
         * @brief Original rm_msgs/ExpandState.joint_id field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int joint_id = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/ExpandState.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsExpandState()
        {
        }

        public static final Codec<Ros1Rm_msgsExpandState> CODEC = new Codec<Ros1Rm_msgsExpandState>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/ExpandState.
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
            public byte[] encode(Ros1Rm_msgsExpandState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsExpandState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/ExpandState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsExpandState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsExpandState value = readRos1Rm_msgsExpandState(reader);
                reader.end();
                return value;
            }
        };
    }

    /**
     * @brief Write one prevalidated rm_msgs/ExpandState component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void writeRos1Rm_msgsExpandState(Codecs.Writer writer, Ros1Rm_msgsExpandState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.get_state;
        writer.integer(part0 ? 1 : 0, 1, false);
        short part1 = value.pos;
        writer.integer(part1, 2, true);
        short part2 = value.err_flag;
        writer.integer(part2, 2, true);
        int part3 = value.en_flag;
        writer.integer(part3, 2, false);
        int part4 = value.current;
        writer.integer(part4, 2, false);
        byte part5 = value.mode;
        writer.integer(part5, 1, true);
        int part6 = value.joint_id;
        writer.integer(part6, 2, false);
    }

    /**
     * @brief Read one rm_msgs/ExpandState candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static Ros1Rm_msgsExpandState readRos1Rm_msgsExpandState(Codecs.Reader reader)
    {
        Ros1Rm_msgsExpandState value = new Ros1Rm_msgsExpandState();
        value.get_state = readBool(reader);
        value.pos = (short)reader.integer(2, true);
        value.err_flag = (short)reader.integer(2, true);
        value.en_flag = (int)reader.integer(2, false);
        value.current = (int)reader.integer(2, false);
        value.mode = (byte)reader.integer(1, true);
        value.joint_id = (int)reader.integer(2, false);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Expand_In_Position fields.
     * @details 4 ordered fields, canonical extent 7..263 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Rm_msgsExpand_In_Position
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Expand_In_Position";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_51acd7ca334e74e4c8ba72027230530ec5b1e63865cc0c35172aa6040969f3b0";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 263;
        /**
         * @brief Original rm_msgs/Expand_In_Position.device field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;
        /**
         * @brief Original rm_msgs/Expand_In_Position.state field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String state = "";
        /**
         * @brief Original rm_msgs/Expand_In_Position.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;
        /**
         * @brief Original rm_msgs/Expand_In_Position.trajectory_state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean trajectory_state = false;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Expand_In_Position.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsExpand_In_Position()
        {
        }

        public static final Codec<Ros1Rm_msgsExpand_In_Position> CODEC = new Codec<Ros1Rm_msgsExpand_In_Position>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Expand_In_Position.
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
            public byte[] encode(Ros1Rm_msgsExpand_In_Position value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsExpand_In_Position(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Expand_In_Position.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsExpand_In_Position decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsExpand_In_Position value = readRos1Rm_msgsExpand_In_Position(reader);
                reader.end();
                return value;
            }
        };
    }

    /**
     * @brief Write one prevalidated rm_msgs/Expand_In_Position component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void writeRos1Rm_msgsExpand_In_Position(Codecs.Writer writer, Ros1Rm_msgsExpand_In_Position value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.device;
        writer.integer(part0, 1, false);
        String part1 = value.state;

        writeText(writer, part1, 256);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
        boolean part3 = value.trajectory_state;
        writer.integer(part3 ? 1 : 0, 1, false);
    }

    /**
     * @brief Read one rm_msgs/Expand_In_Position candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static Ros1Rm_msgsExpand_In_Position readRos1Rm_msgsExpand_In_Position(Codecs.Reader reader)
    {
        Ros1Rm_msgsExpand_In_Position value = new Ros1Rm_msgsExpand_In_Position();
        value.device = (int)reader.integer(1, false);
        value.state = readText(reader, 256);
        value.trajectory_connect = (int)reader.integer(1, false);
        value.trajectory_state = readBool(reader);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Expand_Position fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Rm_msgsExpand_Position
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Expand_Position";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cd07785998b7fd5698c8606538f9ed6b35ae5f0aded4ca768c446dd7d235faed";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Expand_Position.pos field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short pos = 0;
        /**
         * @brief Original rm_msgs/Expand_Position.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Expand_Position.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsExpand_Position()
        {
        }

        public static final Codec<Ros1Rm_msgsExpand_Position> CODEC = new Codec<Ros1Rm_msgsExpand_Position>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Expand_Position.
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
            public byte[] encode(Ros1Rm_msgsExpand_Position value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsExpand_Position(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Expand_Position.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsExpand_Position decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsExpand_Position value = readRos1Rm_msgsExpand_Position(reader);
                reader.end();
                return value;
            }
        };
    }

    /**
     * @brief Write one prevalidated rm_msgs/Expand_Position component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void writeRos1Rm_msgsExpand_Position(Codecs.Writer writer, Ros1Rm_msgsExpand_Position value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.pos;
        writer.integer(part0, 2, true);
        short part1 = value.speed;
        writer.integer(part1, 2, true);
    }

    /**
     * @brief Read one rm_msgs/Expand_Position candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static Ros1Rm_msgsExpand_Position readRos1Rm_msgsExpand_Position(Codecs.Reader reader)
    {
        Ros1Rm_msgsExpand_Position value = new Ros1Rm_msgsExpand_Position();
        value.pos = (short)reader.integer(2, true);
        value.speed = (short)reader.integer(2, true);
        return value;
    }

    /**
     * @brief Preserve all original rm_msgs/Expand_Speed fields.
     * @details 1 ordered fields, canonical extent 2..2 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Rm_msgsExpand_Speed
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Expand_Speed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ec010d530738e2f4f9ba5fe992202886bb3485be97f1e72b5b36ba0f6b5d9d4";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Expand_Speed.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;

        /**
         * @brief Maintain the bounded local protocol state for rm_msgs/Expand_Speed.
         * @details Use exact initialized lengths and full-width identifiers. The enclosing documented caller
         * establishes storage lifetime, ownership and finite bounds; serialize shared mutation through
         * synchronous return.
         * @return The declared local result; errors remain separate from native operation and cleanup
         * outcomes.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsExpand_Speed()
        {
        }

        public static final Codec<Ros1Rm_msgsExpand_Speed> CODEC = new Codec<Ros1Rm_msgsExpand_Speed>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Expand_Speed.
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
            public byte[] encode(Ros1Rm_msgsExpand_Speed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsExpand_Speed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Expand_Speed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsExpand_Speed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsExpand_Speed value = readRos1Rm_msgsExpand_Speed(reader);
                reader.end();
                return value;
            }
        };
    }

    /**
     * @brief Write one prevalidated rm_msgs/Expand_Speed component into checked staging storage.
     * @details The caller supplies a completely validated source and sufficient cursor storage. This
     * internal compositional helper may change cursor state or staging bytes before failure. Use the public
     * whole-value encoder for transactional output. Retain the source, writer and exclusive staging storage
     * throughout this synchronous call.
     * @param writer Borrowed checked staging writer and exclusive storage; retain both until synchronous
     * return.
     * @param value Complete original component or local protocol value, with its documented owner and
     * bounds.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static void writeRos1Rm_msgsExpand_Speed(Codecs.Writer writer, Ros1Rm_msgsExpand_Speed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.speed;
        writer.integer(part0, 2, true);
    }

    /**
     * @brief Read one rm_msgs/Expand_Speed candidate through the checked canonical cursor.
     * @details This compositional helper does not establish final input consumption. The enclosing checked
     * decoder must verify the reader's error state, whole-value validity and exact outer boundary before
     * exposing an accepted value. Refusal may advance or invalidate the borrowed cursor; discard or reset it
     * before a new decoding attempt.
     * @param reader Borrowed checked reader and input; local candidates remain unaccepted until the
     * enclosing boundary check.
     * @return Local component candidate; only the enclosing checked decoder can publish an accepted complete
     * value.
     * @par Permissions
     * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
     */
    private static Ros1Rm_msgsExpand_Speed readRos1Rm_msgsExpand_Speed(Codecs.Reader reader)
    {
        Ros1Rm_msgsExpand_Speed value = new Ros1Rm_msgsExpand_Speed();
        value.speed = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsFlowchartrunstate
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Flowchartrunstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 524;
        /**
         * @brief Original rm_msgs/Flowchartrunstate.run_state field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int run_state = 0;
        /**
         * @brief Original rm_msgs/Flowchartrunstate.id field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int id = 0;
        /**
         * @brief Original rm_msgs/Flowchartrunstate.name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String name = "";
        /**
         * @brief Original rm_msgs/Flowchartrunstate.plan_speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_speed = 0;
        /**
         * @brief Original rm_msgs/Flowchartrunstate.step_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int step_mode = 0;
        /**
         * @brief Original rm_msgs/Flowchartrunstate.modal_id field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String modal_id = "";

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
        public Ros1Rm_msgsFlowchartrunstate()
        {
        }

        public static final Codec<Ros1Rm_msgsFlowchartrunstate> CODEC = new Codec<Ros1Rm_msgsFlowchartrunstate>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Flowchartrunstate.
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
            public byte[] encode(Ros1Rm_msgsFlowchartrunstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsFlowchartrunstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Flowchartrunstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsFlowchartrunstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsFlowchartrunstate value = readRos1Rm_msgsFlowchartrunstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsFlowchartrunstate(Codecs.Writer writer, Ros1Rm_msgsFlowchartrunstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.run_state;
        writer.integer(part0, 1, false);
        int part1 = value.id;
        writer.integer(part1, 1, false);
        String part2 = value.name;

        writeText(writer, part2, 256);
        int part3 = value.plan_speed;
        writer.integer(part3, 1, false);
        int part4 = value.step_mode;
        writer.integer(part4, 1, false);
        String part5 = value.modal_id;

        writeText(writer, part5, 256);
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
    private static Ros1Rm_msgsFlowchartrunstate readRos1Rm_msgsFlowchartrunstate(Codecs.Reader reader)
    {
        Ros1Rm_msgsFlowchartrunstate value = new Ros1Rm_msgsFlowchartrunstate();
        value.run_state = (int)reader.integer(1, false);
        value.id = (int)reader.integer(1, false);
        value.name = readText(reader, 256);
        value.plan_speed = (int)reader.integer(1, false);
        value.step_mode = (int)reader.integer(1, false);
        value.modal_id = readText(reader, 256);
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
    public static final class Ros1Rm_msgsForce_Position_Move_Joint
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Force_Position_Move_Joint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 74;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Joint.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/Force_Position_Move_Joint.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Joint.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Joint.dir field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dir = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Joint.force field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short force = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Joint.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros1Rm_msgsForce_Position_Move_Joint()
        {
        }

        public static final Codec<Ros1Rm_msgsForce_Position_Move_Joint> CODEC = new Codec<Ros1Rm_msgsForce_Position_Move_Joint>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Force_Position_Move_Joint.
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
            public byte[] encode(Ros1Rm_msgsForce_Position_Move_Joint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsForce_Position_Move_Joint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Force_Position_Move_Joint.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsForce_Position_Move_Joint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsForce_Position_Move_Joint value = readRos1Rm_msgsForce_Position_Move_Joint(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsForce_Position_Move_Joint(Codecs.Writer writer, Ros1Rm_msgsForce_Position_Move_Joint value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        int part1 = value.sensor;
        writer.integer(part1, 1, false);
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.dir;
        writer.integer(part3, 1, false);
        short part4 = value.force;
        writer.integer(part4, 2, true);
        int part5 = value.dof;
        writer.integer(part5, 1, false);
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
    private static Ros1Rm_msgsForce_Position_Move_Joint readRos1Rm_msgsForce_Position_Move_Joint(Codecs.Reader reader)
    {
        Ros1Rm_msgsForce_Position_Move_Joint value = new Ros1Rm_msgsForce_Position_Move_Joint();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.dir = (int)reader.integer(1, false);
        value.force = (short)reader.integer(2, true);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsForce_Position_Move_Pose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Force_Position_Move_Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02";
        public static final int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 61;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose.dir field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dir = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose.force field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short force = 0;

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
        public Ros1Rm_msgsForce_Position_Move_Pose()
        {
        }

        public static final Codec<Ros1Rm_msgsForce_Position_Move_Pose> CODEC = new Codec<Ros1Rm_msgsForce_Position_Move_Pose>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Force_Position_Move_Pose.
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
            public byte[] encode(Ros1Rm_msgsForce_Position_Move_Pose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsForce_Position_Move_Pose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Force_Position_Move_Pose.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsForce_Position_Move_Pose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsForce_Position_Move_Pose value = readRos1Rm_msgsForce_Position_Move_Pose(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsForce_Position_Move_Pose(Codecs.Writer writer, Ros1Rm_msgsForce_Position_Move_Pose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part0);
        int part1 = value.sensor;
        writer.integer(part1, 1, false);
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.dir;
        writer.integer(part3, 1, false);
        short part4 = value.force;
        writer.integer(part4, 2, true);
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
    private static Ros1Rm_msgsForce_Position_Move_Pose readRos1Rm_msgsForce_Position_Move_Pose(Codecs.Reader reader)
    {
        Ros1Rm_msgsForce_Position_Move_Pose value = new Ros1Rm_msgsForce_Position_Move_Pose();
        value.Pose = readRos1Geometry_msgsPose(reader);
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.dir = (int)reader.integer(1, false);
        value.force = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsForce_Position_Move_Pose_Custom
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Force_Position_Move_Pose_Custom";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 64;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.dir field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dir = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.force field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short force = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.trajectory_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_mode = 0;
        /**
         * @brief Original rm_msgs/Force_Position_Move_Pose_Custom.radio field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int radio = 0;

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
        public Ros1Rm_msgsForce_Position_Move_Pose_Custom()
        {
        }

        public static final Codec<Ros1Rm_msgsForce_Position_Move_Pose_Custom> CODEC = new Codec<Ros1Rm_msgsForce_Position_Move_Pose_Custom>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Force_Position_Move_Pose_Custom.
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
            public byte[] encode(Ros1Rm_msgsForce_Position_Move_Pose_Custom value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsForce_Position_Move_Pose_Custom(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Force_Position_Move_Pose_Custom.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsForce_Position_Move_Pose_Custom decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsForce_Position_Move_Pose_Custom value = readRos1Rm_msgsForce_Position_Move_Pose_Custom(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsForce_Position_Move_Pose_Custom(Codecs.Writer writer, Ros1Rm_msgsForce_Position_Move_Pose_Custom value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part0);
        int part1 = value.sensor;
        writer.integer(part1, 1, false);
        int part2 = value.mode;
        writer.integer(part2, 1, false);
        int part3 = value.dir;
        writer.integer(part3, 1, false);
        short part4 = value.force;
        writer.integer(part4, 2, true);
        boolean part5 = value.follow;
        writer.integer(part5 ? 1 : 0, 1, false);
        int part6 = value.trajectory_mode;
        writer.integer(part6, 1, false);
        int part7 = value.radio;
        writer.integer(part7, 1, false);
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
    private static Ros1Rm_msgsForce_Position_Move_Pose_Custom readRos1Rm_msgsForce_Position_Move_Pose_Custom(Codecs.Reader reader)
    {
        Ros1Rm_msgsForce_Position_Move_Pose_Custom value = new Ros1Rm_msgsForce_Position_Move_Pose_Custom();
        value.Pose = readRos1Geometry_msgsPose(reader);
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.dir = (int)reader.integer(1, false);
        value.force = (short)reader.integer(2, true);
        value.follow = readBool(reader);
        value.trajectory_mode = (int)reader.integer(1, false);
        value.radio = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsForce_Position_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Force_Position_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367";
        public static final int MIN_WIRE_BYTES = 11, MAX_WIRE_BYTES = 75;
        /**
         * @brief Original rm_msgs/Force_Position_State.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/Force_Position_State.force field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force = 0;
        /**
         * @brief Original rm_msgs/Force_Position_State.arm_err field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int arm_err = 0;
        /**
         * @brief Original rm_msgs/Force_Position_State.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros1Rm_msgsForce_Position_State()
        {
        }

        public static final Codec<Ros1Rm_msgsForce_Position_State> CODEC = new Codec<Ros1Rm_msgsForce_Position_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Force_Position_State.
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
            public byte[] encode(Ros1Rm_msgsForce_Position_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsForce_Position_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Force_Position_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsForce_Position_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsForce_Position_State value = readRos1Rm_msgsForce_Position_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsForce_Position_State(Codecs.Writer writer, Ros1Rm_msgsForce_Position_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.force;
        writer.f32(part1);
        int part2 = value.arm_err;
        writer.integer(part2, 2, false);
        int part3 = value.dof;
        writer.integer(part3, 1, false);
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
    private static Ros1Rm_msgsForce_Position_State readRos1Rm_msgsForce_Position_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsForce_Position_State value = new Ros1Rm_msgsForce_Position_State();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.force = reader.f32();
        value.arm_err = (int)reader.integer(2, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsGetArmState_Command
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/GetArmState_Command";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_msgs/GetArmState_Command.command field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String command = "";

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
        public Ros1Rm_msgsGetArmState_Command()
        {
        }

        public static final Codec<Ros1Rm_msgsGetArmState_Command> CODEC = new Codec<Ros1Rm_msgsGetArmState_Command>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/GetArmState_Command.
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
            public byte[] encode(Ros1Rm_msgsGetArmState_Command value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsGetArmState_Command(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/GetArmState_Command.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsGetArmState_Command decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsGetArmState_Command value = readRos1Rm_msgsGetArmState_Command(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsGetArmState_Command(Codecs.Writer writer, Ros1Rm_msgsGetArmState_Command value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.command;

        writeText(writer, part0, 256);
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
    private static Ros1Rm_msgsGetArmState_Command readRos1Rm_msgsGetArmState_Command(Codecs.Reader reader)
    {
        Ros1Rm_msgsGetArmState_Command value = new Ros1Rm_msgsGetArmState_Command();
        value.command = readText(reader, 256);
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
    public static final class Ros1Rm_msgsGet_TCP_Master_List_Param
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Get_TCP_Master_List_Param";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Original rm_msgs/Get_TCP_Master_List_Param.page_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_msgs/Get_TCP_Master_List_Param.page_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_msgs/Get_TCP_Master_List_Param.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";

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
        public Ros1Rm_msgsGet_TCP_Master_List_Param()
        {
        }

        public static final Codec<Ros1Rm_msgsGet_TCP_Master_List_Param> CODEC = new Codec<Ros1Rm_msgsGet_TCP_Master_List_Param>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Get_TCP_Master_List_Param.
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
            public byte[] encode(Ros1Rm_msgsGet_TCP_Master_List_Param value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsGet_TCP_Master_List_Param(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Get_TCP_Master_List_Param.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsGet_TCP_Master_List_Param decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsGet_TCP_Master_List_Param value = readRos1Rm_msgsGet_TCP_Master_List_Param(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsGet_TCP_Master_List_Param(Codecs.Writer writer, Ros1Rm_msgsGet_TCP_Master_List_Param value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.page_num;
        writer.integer(part0, 4, true);
        int part1 = value.page_size;
        writer.integer(part1, 4, true);
        String part2 = value.vague_search;

        writeText(writer, part2, 256);
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
    private static Ros1Rm_msgsGet_TCP_Master_List_Param readRos1Rm_msgsGet_TCP_Master_List_Param(Codecs.Reader reader)
    {
        Ros1Rm_msgsGet_TCP_Master_List_Param value = new Ros1Rm_msgsGet_TCP_Master_List_Param();
        value.page_num = (int)reader.integer(4, true);
        value.page_size = (int)reader.integer(4, true);
        value.vague_search = readText(reader, 256);
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
    public static final class Ros1Rm_msgsGettrajectorylist
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Gettrajectorylist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Original rm_msgs/Gettrajectorylist.page_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_msgs/Gettrajectorylist.page_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_msgs/Gettrajectorylist.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";

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
        public Ros1Rm_msgsGettrajectorylist()
        {
        }

        public static final Codec<Ros1Rm_msgsGettrajectorylist> CODEC = new Codec<Ros1Rm_msgsGettrajectorylist>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Gettrajectorylist.
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
            public byte[] encode(Ros1Rm_msgsGettrajectorylist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsGettrajectorylist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Gettrajectorylist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsGettrajectorylist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsGettrajectorylist value = readRos1Rm_msgsGettrajectorylist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsGettrajectorylist(Codecs.Writer writer, Ros1Rm_msgsGettrajectorylist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.page_num;
        writer.integer(part0, 4, true);
        int part1 = value.page_size;
        writer.integer(part1, 4, true);
        String part2 = value.vague_search;

        writeText(writer, part2, 256);
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
    private static Ros1Rm_msgsGettrajectorylist readRos1Rm_msgsGettrajectorylist(Codecs.Reader reader)
    {
        Ros1Rm_msgsGettrajectorylist value = new Ros1Rm_msgsGettrajectorylist();
        value.page_num = (int)reader.integer(4, true);
        value.page_size = (int)reader.integer(4, true);
        value.vague_search = readText(reader, 256);
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
    public static final class Ros1Rm_msgsGripper_Pick
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Gripper_Pick";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Gripper_Pick.speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_msgs/Gripper_Pick.force field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int force = 0;

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
        public Ros1Rm_msgsGripper_Pick()
        {
        }

        public static final Codec<Ros1Rm_msgsGripper_Pick> CODEC = new Codec<Ros1Rm_msgsGripper_Pick>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Gripper_Pick.
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
            public byte[] encode(Ros1Rm_msgsGripper_Pick value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsGripper_Pick(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Gripper_Pick.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsGripper_Pick decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsGripper_Pick value = readRos1Rm_msgsGripper_Pick(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsGripper_Pick(Codecs.Writer writer, Ros1Rm_msgsGripper_Pick value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.speed;
        writer.integer(part0, 2, false);
        int part1 = value.force;
        writer.integer(part1, 2, false);
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
    private static Ros1Rm_msgsGripper_Pick readRos1Rm_msgsGripper_Pick(Codecs.Reader reader)
    {
        Ros1Rm_msgsGripper_Pick value = new Ros1Rm_msgsGripper_Pick();
        value.speed = (int)reader.integer(2, false);
        value.force = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsGripper_Set
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Gripper_Set";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Gripper_Set.position field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int position = 0;

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
        public Ros1Rm_msgsGripper_Set()
        {
        }

        public static final Codec<Ros1Rm_msgsGripper_Set> CODEC = new Codec<Ros1Rm_msgsGripper_Set>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Gripper_Set.
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
            public byte[] encode(Ros1Rm_msgsGripper_Set value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsGripper_Set(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Gripper_Set.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsGripper_Set decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsGripper_Set value = readRos1Rm_msgsGripper_Set(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsGripper_Set(Codecs.Writer writer, Ros1Rm_msgsGripper_Set value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.position;
        writer.integer(part0, 2, false);
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
    private static Ros1Rm_msgsGripper_Set readRos1Rm_msgsGripper_Set(Codecs.Reader reader)
    {
        Ros1Rm_msgsGripper_Set value = new Ros1Rm_msgsGripper_Set();
        value.position = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsHand_Angle
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Hand_Angle";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;
        /**
         * @brief Original rm_msgs/Hand_Angle.hand_angle field.
         * @details int16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short[] hand_angle = new short[6];
        /**
         * @brief Original rm_msgs/Hand_Angle.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros1Rm_msgsHand_Angle()
        {
        }

        public static final Codec<Ros1Rm_msgsHand_Angle> CODEC = new Codec<Ros1Rm_msgsHand_Angle>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Hand_Angle.
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
            public byte[] encode(Ros1Rm_msgsHand_Angle value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsHand_Angle(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Hand_Angle.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsHand_Angle decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsHand_Angle value = readRos1Rm_msgsHand_Angle(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsHand_Angle(Codecs.Writer writer, Ros1Rm_msgsHand_Angle value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short[] part0 = value.hand_angle;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 2, true);
        }
        boolean part1 = value.block;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsHand_Angle readRos1Rm_msgsHand_Angle(Codecs.Reader reader)
    {
        Ros1Rm_msgsHand_Angle value = new Ros1Rm_msgsHand_Angle();
        value.hand_angle = new short[6];
        for(int i = 0; i < value.hand_angle.length; ++i)
            value.hand_angle[i] = (short)reader.integer(2, true);
        value.block = readBool(reader);
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
    public static final class Ros1Rm_msgsHand_Force
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Hand_Force";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Hand_Force.hand_force field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int hand_force = 0;

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
        public Ros1Rm_msgsHand_Force()
        {
        }

        public static final Codec<Ros1Rm_msgsHand_Force> CODEC = new Codec<Ros1Rm_msgsHand_Force>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Hand_Force.
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
            public byte[] encode(Ros1Rm_msgsHand_Force value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsHand_Force(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Hand_Force.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsHand_Force decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsHand_Force value = readRos1Rm_msgsHand_Force(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsHand_Force(Codecs.Writer writer, Ros1Rm_msgsHand_Force value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.hand_force;
        writer.integer(part0, 2, false);
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
    private static Ros1Rm_msgsHand_Force readRos1Rm_msgsHand_Force(Codecs.Reader reader)
    {
        Ros1Rm_msgsHand_Force value = new Ros1Rm_msgsHand_Force();
        value.hand_force = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsHand_Posture
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Hand_Posture";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original rm_msgs/Hand_Posture.posture_num field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int posture_num = 0;
        /**
         * @brief Original rm_msgs/Hand_Posture.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros1Rm_msgsHand_Posture()
        {
        }

        public static final Codec<Ros1Rm_msgsHand_Posture> CODEC = new Codec<Ros1Rm_msgsHand_Posture>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Hand_Posture.
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
            public byte[] encode(Ros1Rm_msgsHand_Posture value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsHand_Posture(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Hand_Posture.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsHand_Posture decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsHand_Posture value = readRos1Rm_msgsHand_Posture(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsHand_Posture(Codecs.Writer writer, Ros1Rm_msgsHand_Posture value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.posture_num;
        writer.integer(part0, 2, false);
        boolean part1 = value.block;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsHand_Posture readRos1Rm_msgsHand_Posture(Codecs.Reader reader)
    {
        Ros1Rm_msgsHand_Posture value = new Ros1Rm_msgsHand_Posture();
        value.posture_num = (int)reader.integer(2, false);
        value.block = readBool(reader);
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
    public static final class Ros1Rm_msgsHand_Seq
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Hand_Seq";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original rm_msgs/Hand_Seq.seq_num field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int seq_num = 0;
        /**
         * @brief Original rm_msgs/Hand_Seq.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros1Rm_msgsHand_Seq()
        {
        }

        public static final Codec<Ros1Rm_msgsHand_Seq> CODEC = new Codec<Ros1Rm_msgsHand_Seq>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Hand_Seq.
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
            public byte[] encode(Ros1Rm_msgsHand_Seq value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsHand_Seq(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Hand_Seq.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsHand_Seq decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsHand_Seq value = readRos1Rm_msgsHand_Seq(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsHand_Seq(Codecs.Writer writer, Ros1Rm_msgsHand_Seq value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.seq_num;
        writer.integer(part0, 2, false);
        boolean part1 = value.block;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsHand_Seq readRos1Rm_msgsHand_Seq(Codecs.Reader reader)
    {
        Ros1Rm_msgsHand_Seq value = new Ros1Rm_msgsHand_Seq();
        value.seq_num = (int)reader.integer(2, false);
        value.block = readBool(reader);
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
    public static final class Ros1Rm_msgsHand_Speed
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Hand_Speed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Hand_Speed.hand_speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int hand_speed = 0;

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
        public Ros1Rm_msgsHand_Speed()
        {
        }

        public static final Codec<Ros1Rm_msgsHand_Speed> CODEC = new Codec<Ros1Rm_msgsHand_Speed>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Hand_Speed.
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
            public byte[] encode(Ros1Rm_msgsHand_Speed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsHand_Speed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Hand_Speed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsHand_Speed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsHand_Speed value = readRos1Rm_msgsHand_Speed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsHand_Speed(Codecs.Writer writer, Ros1Rm_msgsHand_Speed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.hand_speed;
        writer.integer(part0, 2, false);
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
    private static Ros1Rm_msgsHand_Speed readRos1Rm_msgsHand_Speed(Codecs.Reader reader)
    {
        Ros1Rm_msgsHand_Speed value = new Ros1Rm_msgsHand_Speed();
        value.hand_speed = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsHand_Status
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Hand_Status";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        /**
         * @brief Original rm_msgs/Hand_Status.hand_angle field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_angle = new int[6];
        /**
         * @brief Original rm_msgs/Hand_Status.hand_pos field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_pos = new int[6];
        /**
         * @brief Original rm_msgs/Hand_Status.hand_state field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_state = new int[6];
        /**
         * @brief Original rm_msgs/Hand_Status.hand_force field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_force = new int[6];
        /**
         * @brief Original rm_msgs/Hand_Status.hand_err field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int hand_err = 0;

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
        public Ros1Rm_msgsHand_Status()
        {
        }

        public static final Codec<Ros1Rm_msgsHand_Status> CODEC = new Codec<Ros1Rm_msgsHand_Status>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Hand_Status.
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
            public byte[] encode(Ros1Rm_msgsHand_Status value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsHand_Status(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Hand_Status.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsHand_Status decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsHand_Status value = readRos1Rm_msgsHand_Status(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsHand_Status(Codecs.Writer writer, Ros1Rm_msgsHand_Status value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.hand_angle;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 2, false);
        }
        int[] part1 = value.hand_pos;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 2, false);
        }
        int[] part2 = value.hand_state;
        if(part2 == null || part2.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 2, false);
        }
        int[] part3 = value.hand_force;
        if(part3 == null || part3.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 2, false);
        }
        int part4 = value.hand_err;
        writer.integer(part4, 2, false);
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
    private static Ros1Rm_msgsHand_Status readRos1Rm_msgsHand_Status(Codecs.Reader reader)
    {
        Ros1Rm_msgsHand_Status value = new Ros1Rm_msgsHand_Status();
        value.hand_angle = new int[6];
        for(int i = 0; i < value.hand_angle.length; ++i)
            value.hand_angle[i] = (int)reader.integer(2, false);
        value.hand_pos = new int[6];
        for(int i = 0; i < value.hand_pos.length; ++i)
            value.hand_pos[i] = (int)reader.integer(2, false);
        value.hand_state = new int[6];
        for(int i = 0; i < value.hand_state.length; ++i)
            value.hand_state[i] = (int)reader.integer(2, false);
        value.hand_force = new int[6];
        for(int i = 0; i < value.hand_force.length; ++i)
            value.hand_force[i] = (int)reader.integer(2, false);
        value.hand_err = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsIO_Update
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/IO_Update";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_msgs/IO_Update.type field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;

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
        public Ros1Rm_msgsIO_Update()
        {
        }

        public static final Codec<Ros1Rm_msgsIO_Update> CODEC = new Codec<Ros1Rm_msgsIO_Update>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/IO_Update.
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
            public byte[] encode(Ros1Rm_msgsIO_Update value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsIO_Update(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/IO_Update.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsIO_Update decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsIO_Update value = readRos1Rm_msgsIO_Update(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsIO_Update(Codecs.Writer writer, Ros1Rm_msgsIO_Update value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.type;
        writer.integer(part0, 1, false);
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
    private static Ros1Rm_msgsIO_Update readRos1Rm_msgsIO_Update(Codecs.Reader reader)
    {
        Ros1Rm_msgsIO_Update value = new Ros1Rm_msgsIO_Update();
        value.type = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsJointPos
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/JointPos";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 72;
        /**
         * @brief Original rm_msgs/JointPos.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/JointPos.expand field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float expand = 0;

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
        public Ros1Rm_msgsJointPos()
        {
        }

        public static final Codec<Ros1Rm_msgsJointPos> CODEC = new Codec<Ros1Rm_msgsJointPos>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/JointPos.
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
            public byte[] encode(Ros1Rm_msgsJointPos value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJointPos(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/JointPos.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJointPos decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJointPos value = readRos1Rm_msgsJointPos(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJointPos(Codecs.Writer writer, Ros1Rm_msgsJointPos value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.expand;
        writer.f32(part1);
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
    private static Ros1Rm_msgsJointPos readRos1Rm_msgsJointPos(Codecs.Reader reader)
    {
        Ros1Rm_msgsJointPos value = new Ros1Rm_msgsJointPos();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.expand = reader.f32();
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
    public static final class Ros1Rm_msgsJointPosCustom
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/JointPosCustom";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676";
        public static final int MIN_WIRE_BYTES = 11, MAX_WIRE_BYTES = 75;
        /**
         * @brief Original rm_msgs/JointPosCustom.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/JointPosCustom.expand field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float expand = 0;
        /**
         * @brief Original rm_msgs/JointPosCustom.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_msgs/JointPosCustom.trajectory_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_mode = 0;
        /**
         * @brief Original rm_msgs/JointPosCustom.radio field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int radio = 0;

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
        public Ros1Rm_msgsJointPosCustom()
        {
        }

        public static final Codec<Ros1Rm_msgsJointPosCustom> CODEC = new Codec<Ros1Rm_msgsJointPosCustom>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/JointPosCustom.
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
            public byte[] encode(Ros1Rm_msgsJointPosCustom value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJointPosCustom(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/JointPosCustom.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJointPosCustom decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJointPosCustom value = readRos1Rm_msgsJointPosCustom(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJointPosCustom(Codecs.Writer writer, Ros1Rm_msgsJointPosCustom value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.expand;
        writer.f32(part1);
        boolean part2 = value.follow;
        writer.integer(part2 ? 1 : 0, 1, false);
        int part3 = value.trajectory_mode;
        writer.integer(part3, 1, false);
        int part4 = value.radio;
        writer.integer(part4, 1, false);
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
    private static Ros1Rm_msgsJointPosCustom readRos1Rm_msgsJointPosCustom(Codecs.Reader reader)
    {
        Ros1Rm_msgsJointPosCustom value = new Ros1Rm_msgsJointPosCustom();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.expand = reader.f32();
        value.follow = readBool(reader);
        value.trajectory_mode = (int)reader.integer(1, false);
        value.radio = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsJoint_Current
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Current";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_msgs/Joint_Current.joint_current field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_current = new float[0];

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
        public Ros1Rm_msgsJoint_Current()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Current> CODEC = new Codec<Ros1Rm_msgsJoint_Current>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Current.
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
            public byte[] encode(Ros1Rm_msgsJoint_Current value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Current(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Current.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_Current decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Current value = readRos1Rm_msgsJoint_Current(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Current(Codecs.Writer writer, Ros1Rm_msgsJoint_Current value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint_current;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
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
    private static Ros1Rm_msgsJoint_Current readRos1Rm_msgsJoint_Current(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Current value = new Ros1Rm_msgsJoint_Current();
        value.joint_current = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_current.length; ++i)
            value.joint_current[i] = reader.f32();
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
    public static final class Ros1Rm_msgsJoint_En_Flag
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_En_Flag";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 20;
        /**
         * @brief Original rm_msgs/Joint_En_Flag.joint_en_flag field.
         * @details bool sequence, count/quota 16, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean[] joint_en_flag = new boolean[0];

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
        public Ros1Rm_msgsJoint_En_Flag()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_En_Flag> CODEC = new Codec<Ros1Rm_msgsJoint_En_Flag>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_En_Flag.
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
            public byte[] encode(Ros1Rm_msgsJoint_En_Flag value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_En_Flag(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_En_Flag.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_En_Flag decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_En_Flag value = readRos1Rm_msgsJoint_En_Flag(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_En_Flag(Codecs.Writer writer, Ros1Rm_msgsJoint_En_Flag value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean[] part0 = value.joint_en_flag;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i] ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsJoint_En_Flag readRos1Rm_msgsJoint_En_Flag(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_En_Flag value = new Ros1Rm_msgsJoint_En_Flag();
        value.joint_en_flag = new boolean[readCount(reader, 16, 1)];
        for(int i = 0; i < value.joint_en_flag.length; ++i)
            value.joint_en_flag[i] = readBool(reader);
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
    public static final class Ros1Rm_msgsJoint_Enable
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Enable";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Joint_Enable.joint_num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int joint_num = 0;
        /**
         * @brief Original rm_msgs/Joint_Enable.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsJoint_Enable()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Enable> CODEC = new Codec<Ros1Rm_msgsJoint_Enable>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Enable.
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
            public byte[] encode(Ros1Rm_msgsJoint_Enable value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Enable(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Enable.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_Enable decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Enable value = readRos1Rm_msgsJoint_Enable(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Enable(Codecs.Writer writer, Ros1Rm_msgsJoint_Enable value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.joint_num;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsJoint_Enable readRos1Rm_msgsJoint_Enable(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Enable value = new Ros1Rm_msgsJoint_Enable();
        value.joint_num = (int)reader.integer(1, false);
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsJoint_Error_Code
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Error_Code";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 36;
        /**
         * @brief Original rm_msgs/Joint_Error_Code.joint_error field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] joint_error = new int[0];

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
        public Ros1Rm_msgsJoint_Error_Code()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Error_Code> CODEC = new Codec<Ros1Rm_msgsJoint_Error_Code>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Error_Code.
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
            public byte[] encode(Ros1Rm_msgsJoint_Error_Code value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Error_Code(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Error_Code.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsJoint_Error_Code decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Error_Code value = readRos1Rm_msgsJoint_Error_Code(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Error_Code(Codecs.Writer writer, Ros1Rm_msgsJoint_Error_Code value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.joint_error;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 2, false);
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
    private static Ros1Rm_msgsJoint_Error_Code readRos1Rm_msgsJoint_Error_Code(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Error_Code value = new Ros1Rm_msgsJoint_Error_Code();
        value.joint_error = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.joint_error.length; ++i)
            value.joint_error[i] = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsJoint_Max_Speed
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Max_Speed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_msgs/Joint_Max_Speed.joint_num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int joint_num = 0;
        /**
         * @brief Original rm_msgs/Joint_Max_Speed.joint_max_speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_max_speed = 0;

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
        public Ros1Rm_msgsJoint_Max_Speed()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Max_Speed> CODEC = new Codec<Ros1Rm_msgsJoint_Max_Speed>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Max_Speed.
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
            public byte[] encode(Ros1Rm_msgsJoint_Max_Speed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Max_Speed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Max_Speed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsJoint_Max_Speed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Max_Speed value = readRos1Rm_msgsJoint_Max_Speed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Max_Speed(Codecs.Writer writer, Ros1Rm_msgsJoint_Max_Speed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.joint_num;
        writer.integer(part0, 1, false);
        float part1 = value.joint_max_speed;
        writer.f32(part1);
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
    private static Ros1Rm_msgsJoint_Max_Speed readRos1Rm_msgsJoint_Max_Speed(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Max_Speed value = new Ros1Rm_msgsJoint_Max_Speed();
        value.joint_num = (int)reader.integer(1, false);
        value.joint_max_speed = reader.f32();
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
    public static final class Ros1Rm_msgsJoint_PoseEuler
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_PoseEuler";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original rm_msgs/Joint_PoseEuler.euler field.
         * @details float32 array, count/quota 3, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] euler = new float[3];
        /**
         * @brief Original rm_msgs/Joint_PoseEuler.position field.
         * @details float32 array, count/quota 3, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] position = new float[3];

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
        public Ros1Rm_msgsJoint_PoseEuler()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_PoseEuler> CODEC = new Codec<Ros1Rm_msgsJoint_PoseEuler>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_PoseEuler.
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
            public byte[] encode(Ros1Rm_msgsJoint_PoseEuler value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_PoseEuler(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_PoseEuler.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsJoint_PoseEuler decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_PoseEuler value = readRos1Rm_msgsJoint_PoseEuler(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_PoseEuler(Codecs.Writer writer, Ros1Rm_msgsJoint_PoseEuler value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.euler;
        if(part0 == null || part0.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float[] part1 = value.position;
        if(part1 == null || part1.length != 3)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
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
    private static Ros1Rm_msgsJoint_PoseEuler readRos1Rm_msgsJoint_PoseEuler(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_PoseEuler value = new Ros1Rm_msgsJoint_PoseEuler();
        value.euler = new float[3];
        for(int i = 0; i < value.euler.length; ++i)
            value.euler[i] = reader.f32();
        value.position = new float[3];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f32();
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
    public static final class Ros1Rm_msgsJoint_Speed
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Speed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_msgs/Joint_Speed.joint_speed field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_speed = new float[0];

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
        public Ros1Rm_msgsJoint_Speed()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Speed> CODEC = new Codec<Ros1Rm_msgsJoint_Speed>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Speed.
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
            public byte[] encode(Ros1Rm_msgsJoint_Speed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Speed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Speed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_Speed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Speed value = readRos1Rm_msgsJoint_Speed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Speed(Codecs.Writer writer, Ros1Rm_msgsJoint_Speed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint_speed;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
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
    private static Ros1Rm_msgsJoint_Speed readRos1Rm_msgsJoint_Speed(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Speed value = new Ros1Rm_msgsJoint_Speed();
        value.joint_speed = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_speed.length; ++i)
            value.joint_speed[i] = reader.f32();
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
    public static final class Ros1Rm_msgsJoint_Step
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Step";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        /**
         * @brief Original rm_msgs/Joint_Step.joint_num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int joint_num = 0;
        /**
         * @brief Original rm_msgs/Joint_Step.step_angle field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float step_angle = 0;
        /**
         * @brief Original rm_msgs/Joint_Step.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = 0;

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
        public Ros1Rm_msgsJoint_Step()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Step> CODEC = new Codec<Ros1Rm_msgsJoint_Step>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Step.
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
            public byte[] encode(Ros1Rm_msgsJoint_Step value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Step(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Step.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_Step decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Step value = readRos1Rm_msgsJoint_Step(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Step(Codecs.Writer writer, Ros1Rm_msgsJoint_Step value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.joint_num;
        writer.integer(part0, 1, false);
        float part1 = value.step_angle;
        writer.f32(part1);
        float part2 = value.speed;
        writer.f32(part2);
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
    private static Ros1Rm_msgsJoint_Step readRos1Rm_msgsJoint_Step(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Step value = new Ros1Rm_msgsJoint_Step();
        value.joint_num = (int)reader.integer(1, false);
        value.step_angle = reader.f32();
        value.speed = reader.f32();
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
    public static final class Ros1Rm_msgsJoint_Teach
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Teach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original rm_msgs/Joint_Teach.teach_joint field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short teach_joint = 0;
        /**
         * @brief Original rm_msgs/Joint_Teach.direction field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String direction = "";
        /**
         * @brief Original rm_msgs/Joint_Teach.v field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short v = 0;

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
        public Ros1Rm_msgsJoint_Teach()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Teach> CODEC = new Codec<Ros1Rm_msgsJoint_Teach>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Teach.
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
            public byte[] encode(Ros1Rm_msgsJoint_Teach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Teach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Teach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_Teach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Teach value = readRos1Rm_msgsJoint_Teach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Teach(Codecs.Writer writer, Ros1Rm_msgsJoint_Teach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.teach_joint;
        writer.integer(part0, 2, true);
        String part1 = value.direction;

        writeText(writer, part1, 256);
        short part2 = value.v;
        writer.integer(part2, 2, true);
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
    private static Ros1Rm_msgsJoint_Teach readRos1Rm_msgsJoint_Teach(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Teach value = new Ros1Rm_msgsJoint_Teach();
        value.teach_joint = (short)reader.integer(2, true);
        value.direction = readText(reader, 256);
        value.v = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsJoint_Temperature
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Temperature";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_msgs/Joint_Temperature.joint_temperature field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_temperature = new float[0];

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
        public Ros1Rm_msgsJoint_Temperature()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Temperature> CODEC = new Codec<Ros1Rm_msgsJoint_Temperature>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Temperature.
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
            public byte[] encode(Ros1Rm_msgsJoint_Temperature value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Temperature(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Temperature.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsJoint_Temperature decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Temperature value = readRos1Rm_msgsJoint_Temperature(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Temperature(Codecs.Writer writer, Ros1Rm_msgsJoint_Temperature value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint_temperature;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
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
    private static Ros1Rm_msgsJoint_Temperature readRos1Rm_msgsJoint_Temperature(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Temperature value = new Ros1Rm_msgsJoint_Temperature();
        value.joint_temperature = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_temperature.length; ++i)
            value.joint_temperature[i] = reader.f32();
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
    public static final class Ros1Rm_msgsJoint_Voltage
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Joint_Voltage";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_msgs/Joint_Voltage.joint_voltage field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_voltage = new float[0];

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
        public Ros1Rm_msgsJoint_Voltage()
        {
        }

        public static final Codec<Ros1Rm_msgsJoint_Voltage> CODEC = new Codec<Ros1Rm_msgsJoint_Voltage>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Joint_Voltage.
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
            public byte[] encode(Ros1Rm_msgsJoint_Voltage value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJoint_Voltage(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Joint_Voltage.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJoint_Voltage decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJoint_Voltage value = readRos1Rm_msgsJoint_Voltage(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJoint_Voltage(Codecs.Writer writer, Ros1Rm_msgsJoint_Voltage value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint_voltage;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
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
    private static Ros1Rm_msgsJoint_Voltage readRos1Rm_msgsJoint_Voltage(Codecs.Reader reader)
    {
        Ros1Rm_msgsJoint_Voltage value = new Ros1Rm_msgsJoint_Voltage();
        value.joint_voltage = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_voltage.length; ++i)
            value.joint_voltage[i] = reader.f32();
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
    public static final class Ros1Rm_msgsJointversion
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Jointversion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 1820;
        /**
         * @brief Original rm_msgs/Jointversion.joint_version field.
         * @details string array, count/quota 7, text byte bound 256. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public String[] joint_version = new String[7];

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
        public Ros1Rm_msgsJointversion()
        {
            for(int i = 0; i < 7; ++i)
                this.joint_version[i] = "";
        }

        public static final Codec<Ros1Rm_msgsJointversion> CODEC = new Codec<Ros1Rm_msgsJointversion>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Jointversion.
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
            public byte[] encode(Ros1Rm_msgsJointversion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsJointversion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Jointversion.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsJointversion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsJointversion value = readRos1Rm_msgsJointversion(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsJointversion(Codecs.Writer writer, Ros1Rm_msgsJointversion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.joint_version;
        if(part0 == null || part0.length != 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {

            writeText(writer, part0[i], 256);
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
    private static Ros1Rm_msgsJointversion readRos1Rm_msgsJointversion(Codecs.Reader reader)
    {
        Ros1Rm_msgsJointversion value = new Ros1Rm_msgsJointversion();
        value.joint_version = new String[7];
        for(int i = 0; i < value.joint_version.length; ++i)
            value.joint_version[i] = readText(reader, 256);
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
    public static final class Ros1Rm_msgsLiftState
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/LiftState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;
        /**
         * @brief Original rm_msgs/LiftState.height field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short height = 0;
        /**
         * @brief Original rm_msgs/LiftState.current field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short current = 0;
        /**
         * @brief Original rm_msgs/LiftState.err_flag field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_flag = 0;
        /**
         * @brief Original rm_msgs/LiftState.mode field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte mode = 0;

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
        public Ros1Rm_msgsLiftState()
        {
        }

        public static final Codec<Ros1Rm_msgsLiftState> CODEC = new Codec<Ros1Rm_msgsLiftState>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/LiftState.
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
            public byte[] encode(Ros1Rm_msgsLiftState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsLiftState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/LiftState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsLiftState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsLiftState value = readRos1Rm_msgsLiftState(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsLiftState(Codecs.Writer writer, Ros1Rm_msgsLiftState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.height;
        writer.integer(part0, 2, true);
        short part1 = value.current;
        writer.integer(part1, 2, true);
        int part2 = value.err_flag;
        writer.integer(part2, 2, false);
        byte part3 = value.mode;
        writer.integer(part3, 1, true);
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
    private static Ros1Rm_msgsLiftState readRos1Rm_msgsLiftState(Codecs.Reader reader)
    {
        Ros1Rm_msgsLiftState value = new Ros1Rm_msgsLiftState();
        value.height = (short)reader.integer(2, true);
        value.current = (short)reader.integer(2, true);
        value.err_flag = (int)reader.integer(2, false);
        value.mode = (byte)reader.integer(1, true);
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
    public static final class Ros1Rm_msgsLift_Height
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Lift_Height";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Lift_Height.height field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int height = 0;
        /**
         * @brief Original rm_msgs/Lift_Height.speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;

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
        public Ros1Rm_msgsLift_Height()
        {
        }

        public static final Codec<Ros1Rm_msgsLift_Height> CODEC = new Codec<Ros1Rm_msgsLift_Height>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Lift_Height.
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
            public byte[] encode(Ros1Rm_msgsLift_Height value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsLift_Height(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Lift_Height.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsLift_Height decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsLift_Height value = readRos1Rm_msgsLift_Height(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsLift_Height(Codecs.Writer writer, Ros1Rm_msgsLift_Height value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.height;
        writer.integer(part0, 2, false);
        int part1 = value.speed;
        writer.integer(part1, 2, false);
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
    private static Ros1Rm_msgsLift_Height readRos1Rm_msgsLift_Height(Codecs.Reader reader)
    {
        Ros1Rm_msgsLift_Height value = new Ros1Rm_msgsLift_Height();
        value.height = (int)reader.integer(2, false);
        value.speed = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsLift_In_Position
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Lift_In_Position";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 263;
        /**
         * @brief Original rm_msgs/Lift_In_Position.device field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;
        /**
         * @brief Original rm_msgs/Lift_In_Position.state field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String state = "";
        /**
         * @brief Original rm_msgs/Lift_In_Position.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;
        /**
         * @brief Original rm_msgs/Lift_In_Position.trajectory_state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean trajectory_state = false;

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
        public Ros1Rm_msgsLift_In_Position()
        {
        }

        public static final Codec<Ros1Rm_msgsLift_In_Position> CODEC = new Codec<Ros1Rm_msgsLift_In_Position>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Lift_In_Position.
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
            public byte[] encode(Ros1Rm_msgsLift_In_Position value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsLift_In_Position(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Lift_In_Position.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsLift_In_Position decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsLift_In_Position value = readRos1Rm_msgsLift_In_Position(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsLift_In_Position(Codecs.Writer writer, Ros1Rm_msgsLift_In_Position value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.device;
        writer.integer(part0, 1, false);
        String part1 = value.state;

        writeText(writer, part1, 256);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
        boolean part3 = value.trajectory_state;
        writer.integer(part3 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsLift_In_Position readRos1Rm_msgsLift_In_Position(Codecs.Reader reader)
    {
        Ros1Rm_msgsLift_In_Position value = new Ros1Rm_msgsLift_In_Position();
        value.device = (int)reader.integer(1, false);
        value.state = readText(reader, 256);
        value.trajectory_connect = (int)reader.integer(1, false);
        value.trajectory_state = readBool(reader);
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
    public static final class Ros1Rm_msgsLift_Speed
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Lift_Speed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Lift_Speed.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;

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
        public Ros1Rm_msgsLift_Speed()
        {
        }

        public static final Codec<Ros1Rm_msgsLift_Speed> CODEC = new Codec<Ros1Rm_msgsLift_Speed>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Lift_Speed.
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
            public byte[] encode(Ros1Rm_msgsLift_Speed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsLift_Speed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Lift_Speed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsLift_Speed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsLift_Speed value = readRos1Rm_msgsLift_Speed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsLift_Speed(Codecs.Writer writer, Ros1Rm_msgsLift_Speed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.speed;
        writer.integer(part0, 2, true);
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
    private static Ros1Rm_msgsLift_Speed readRos1Rm_msgsLift_Speed(Codecs.Reader reader)
    {
        Ros1Rm_msgsLift_Speed value = new Ros1Rm_msgsLift_Speed();
        value.speed = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsManual_Set_Force_Pose
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Manual_Set_Force_Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 392;
        /**
         * @brief Original rm_msgs/Manual_Set_Force_Pose.pose field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String pose = "";
        /**
         * @brief Original rm_msgs/Manual_Set_Force_Pose.joint field.
         * @details int64 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public long[] joint = new long[0];

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
        public Ros1Rm_msgsManual_Set_Force_Pose()
        {
        }

        public static final Codec<Ros1Rm_msgsManual_Set_Force_Pose> CODEC = new Codec<Ros1Rm_msgsManual_Set_Force_Pose>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Manual_Set_Force_Pose.
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
            public byte[] encode(Ros1Rm_msgsManual_Set_Force_Pose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsManual_Set_Force_Pose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Manual_Set_Force_Pose.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsManual_Set_Force_Pose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsManual_Set_Force_Pose value = readRos1Rm_msgsManual_Set_Force_Pose(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsManual_Set_Force_Pose(Codecs.Writer writer, Ros1Rm_msgsManual_Set_Force_Pose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.pose;

        writeText(writer, part0, 256);
        long[] part1 = value.joint;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 8, true);
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
    private static Ros1Rm_msgsManual_Set_Force_Pose readRos1Rm_msgsManual_Set_Force_Pose(Codecs.Reader reader)
    {
        Ros1Rm_msgsManual_Set_Force_Pose value = new Ros1Rm_msgsManual_Set_Force_Pose();
        value.pose = readText(reader, 256);
        value.joint = new long[readCount(reader, 16, 8)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.integer(8, true);
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
    public static final class Ros1Rm_msgsMastername
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Mastername";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_msgs/Mastername.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";

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
        public Ros1Rm_msgsMastername()
        {
        }

        public static final Codec<Ros1Rm_msgsMastername> CODEC = new Codec<Ros1Rm_msgsMastername>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Mastername.
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
            public byte[] encode(Ros1Rm_msgsMastername value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsMastername(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Mastername.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsMastername decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsMastername value = readRos1Rm_msgsMastername(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsMastername(Codecs.Writer writer, Ros1Rm_msgsMastername value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.master_name;

        writeText(writer, part0, 256);
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
    private static Ros1Rm_msgsMastername readRos1Rm_msgsMastername(Codecs.Reader reader)
    {
        Ros1Rm_msgsMastername value = new Ros1Rm_msgsMastername();
        value.master_name = readText(reader, 256);
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
    public static final class Ros1Rm_msgsModbusreaddata
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Modbusreaddata";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_msgs/Modbusreaddata.read_data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] read_data = new int[0];

        /**
         * @brief Decode the whole canonical value for rm_msgs/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsModbusreaddata()
        {
        }

        public static final Codec<Ros1Rm_msgsModbusreaddata> CODEC = new Codec<Ros1Rm_msgsModbusreaddata>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Modbusreaddata.
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
            public byte[] encode(Ros1Rm_msgsModbusreaddata value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsModbusreaddata(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Modbusreaddata.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsModbusreaddata decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsModbusreaddata value = readRos1Rm_msgsModbusreaddata(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsModbusreaddata(Codecs.Writer writer, Ros1Rm_msgsModbusreaddata value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.read_data;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 4, true);
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
    private static Ros1Rm_msgsModbusreaddata readRos1Rm_msgsModbusreaddata(Codecs.Reader reader)
    {
        Ros1Rm_msgsModbusreaddata value = new Ros1Rm_msgsModbusreaddata();
        value.read_data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.read_data.length; ++i)
            value.read_data[i] = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsModbustcpmasterinfo
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Modbustcpmasterinfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 524;
        /**
         * @brief Original rm_msgs/Modbustcpmasterinfo.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_msgs/Modbustcpmasterinfo.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_msgs/Modbustcpmasterinfo.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;

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
        public Ros1Rm_msgsModbustcpmasterinfo()
        {
        }

        public static final Codec<Ros1Rm_msgsModbustcpmasterinfo> CODEC = new Codec<Ros1Rm_msgsModbustcpmasterinfo>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Modbustcpmasterinfo.
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
            public byte[] encode(Ros1Rm_msgsModbustcpmasterinfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsModbustcpmasterinfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Modbustcpmasterinfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsModbustcpmasterinfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsModbustcpmasterinfo value = readRos1Rm_msgsModbustcpmasterinfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsModbustcpmasterinfo(Codecs.Writer writer, Ros1Rm_msgsModbustcpmasterinfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.master_name;

        writeText(writer, part0, 256);
        String part1 = value.ip;

        writeText(writer, part1, 256);
        int part2 = value.port;
        writer.integer(part2, 4, true);
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
    private static Ros1Rm_msgsModbustcpmasterinfo readRos1Rm_msgsModbustcpmasterinfo(Codecs.Reader reader)
    {
        Ros1Rm_msgsModbustcpmasterinfo value = new Ros1Rm_msgsModbustcpmasterinfo();
        value.master_name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsModbustcpmasterlist
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Modbustcpmasterlist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 8388;
        /**
         * @brief Original rm_msgs/Modbustcpmasterlist.master_list field.
         * @details rm_msgs/Modbustcpmasterinfo sequence, count/quota 16, text byte bound 0. Preserve
         * original units and frame. Full value checks occur before successful encoding; construction grants
         * no authority.
         */
        public Ros1Rm_msgsModbustcpmasterinfo[] master_list = new Ros1Rm_msgsModbustcpmasterinfo[0];

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
        public Ros1Rm_msgsModbustcpmasterlist()
        {
        }

        public static final Codec<Ros1Rm_msgsModbustcpmasterlist> CODEC = new Codec<Ros1Rm_msgsModbustcpmasterlist>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Modbustcpmasterlist.
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
            public byte[] encode(Ros1Rm_msgsModbustcpmasterlist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsModbustcpmasterlist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Modbustcpmasterlist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsModbustcpmasterlist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsModbustcpmasterlist value = readRos1Rm_msgsModbustcpmasterlist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsModbustcpmasterlist(Codecs.Writer writer, Ros1Rm_msgsModbustcpmasterlist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Rm_msgsModbustcpmasterinfo[] part0 = value.master_list;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {

            writeRos1Rm_msgsModbustcpmasterinfo(writer, part0[i]);
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
    private static Ros1Rm_msgsModbustcpmasterlist readRos1Rm_msgsModbustcpmasterlist(Codecs.Reader reader)
    {
        Ros1Rm_msgsModbustcpmasterlist value = new Ros1Rm_msgsModbustcpmasterlist();
        value.master_list = new Ros1Rm_msgsModbustcpmasterinfo[readCount(reader, 16, 12)];
        for(int i = 0; i < value.master_list.length; ++i)
            value.master_list[i] = readRos1Rm_msgsModbustcpmasterinfo(reader);
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
    public static final class Ros1Rm_msgsMoveC
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/MoveC";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69";
        public static final int MIN_WIRE_BYTES = 119, MAX_WIRE_BYTES = 119;
        /**
         * @brief Original rm_msgs/MoveC.Mid_Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Mid_Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/MoveC.End_Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose End_Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/MoveC.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = 0;
        /**
         * @brief Original rm_msgs/MoveC.loop field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int loop = 0;
        /**
         * @brief Original rm_msgs/MoveC.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;

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
        public Ros1Rm_msgsMoveC()
        {
        }

        public static final Codec<Ros1Rm_msgsMoveC> CODEC = new Codec<Ros1Rm_msgsMoveC>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/MoveC.
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
            public byte[] encode(Ros1Rm_msgsMoveC value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsMoveC(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/MoveC.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsMoveC decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsMoveC value = readRos1Rm_msgsMoveC(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsMoveC(Codecs.Writer writer, Ros1Rm_msgsMoveC value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Mid_Pose;

        writeRos1Geometry_msgsPose(writer, part0);
        Ros1Geometry_msgsPose part1 = value.End_Pose;

        writeRos1Geometry_msgsPose(writer, part1);
        float part2 = value.speed;
        writer.f32(part2);
        int part3 = value.loop;
        writer.integer(part3, 2, false);
        int part4 = value.trajectory_connect;
        writer.integer(part4, 1, false);
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
    private static Ros1Rm_msgsMoveC readRos1Rm_msgsMoveC(Codecs.Reader reader)
    {
        Ros1Rm_msgsMoveC value = new Ros1Rm_msgsMoveC();
        value.Mid_Pose = readRos1Geometry_msgsPose(reader);
        value.End_Pose = readRos1Geometry_msgsPose(reader);
        value.speed = reader.f32();
        value.loop = (int)reader.integer(2, false);
        value.trajectory_connect = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsMoveJ
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/MoveJ";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 73;
        /**
         * @brief Original rm_msgs/MoveJ.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_msgs/MoveJ.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = 0;
        /**
         * @brief Original rm_msgs/MoveJ.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;

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
        public Ros1Rm_msgsMoveJ()
        {
        }

        public static final Codec<Ros1Rm_msgsMoveJ> CODEC = new Codec<Ros1Rm_msgsMoveJ>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/MoveJ.
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
            public byte[] encode(Ros1Rm_msgsMoveJ value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsMoveJ(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/MoveJ.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsMoveJ decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsMoveJ value = readRos1Rm_msgsMoveJ(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsMoveJ(Codecs.Writer writer, Ros1Rm_msgsMoveJ value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.speed;
        writer.f32(part1);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
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
    private static Ros1Rm_msgsMoveJ readRos1Rm_msgsMoveJ(Codecs.Reader reader)
    {
        Ros1Rm_msgsMoveJ value = new Ros1Rm_msgsMoveJ();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.speed = reader.f32();
        value.trajectory_connect = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsMoveJ_P
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/MoveJ_P";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65";
        public static final int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 61;
        /**
         * @brief Original rm_msgs/MoveJ_P.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/MoveJ_P.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = 0;
        /**
         * @brief Original rm_msgs/MoveJ_P.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;

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
        public Ros1Rm_msgsMoveJ_P()
        {
        }

        public static final Codec<Ros1Rm_msgsMoveJ_P> CODEC = new Codec<Ros1Rm_msgsMoveJ_P>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/MoveJ_P.
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
            public byte[] encode(Ros1Rm_msgsMoveJ_P value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsMoveJ_P(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/MoveJ_P.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsMoveJ_P decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsMoveJ_P value = readRos1Rm_msgsMoveJ_P(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsMoveJ_P(Codecs.Writer writer, Ros1Rm_msgsMoveJ_P value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part0);
        float part1 = value.speed;
        writer.f32(part1);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
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
    private static Ros1Rm_msgsMoveJ_P readRos1Rm_msgsMoveJ_P(Codecs.Reader reader)
    {
        Ros1Rm_msgsMoveJ_P value = new Ros1Rm_msgsMoveJ_P();
        value.Pose = readRos1Geometry_msgsPose(reader);
        value.speed = reader.f32();
        value.trajectory_connect = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsMoveL
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/MoveL";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49";
        public static final int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 61;
        /**
         * @brief Original rm_msgs/MoveL.Pose field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose Pose = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/MoveL.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = 0;
        /**
         * @brief Original rm_msgs/MoveL.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;

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
        public Ros1Rm_msgsMoveL()
        {
        }

        public static final Codec<Ros1Rm_msgsMoveL> CODEC = new Codec<Ros1Rm_msgsMoveL>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/MoveL.
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
            public byte[] encode(Ros1Rm_msgsMoveL value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsMoveL(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/MoveL.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsMoveL decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsMoveL value = readRos1Rm_msgsMoveL(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsMoveL(Codecs.Writer writer, Ros1Rm_msgsMoveL value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.Pose;

        writeRos1Geometry_msgsPose(writer, part0);
        float part1 = value.speed;
        writer.f32(part1);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
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
    private static Ros1Rm_msgsMoveL readRos1Rm_msgsMoveL(Codecs.Reader reader)
    {
        Ros1Rm_msgsMoveL value = new Ros1Rm_msgsMoveL();
        value.Pose = readRos1Geometry_msgsPose(reader);
        value.speed = reader.f32();
        value.trajectory_connect = (int)reader.integer(1, false);
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
    public static final class Ros1Rm_msgsMoveloffset
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Moveloffset";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        /**
         * @brief Original rm_msgs/Moveloffset.offset field.
         * @details geometry_msgs/Pose scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros1Geometry_msgsPose offset = new Ros1Geometry_msgsPose();
        /**
         * @brief Original rm_msgs/Moveloffset.speed field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_msgs/Moveloffset.r field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int r = 0;
        /**
         * @brief Original rm_msgs/Moveloffset.trajectory_connect field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean trajectory_connect = false;
        /**
         * @brief Original rm_msgs/Moveloffset.frame_type field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean frame_type = false;
        /**
         * @brief Original rm_msgs/Moveloffset.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros1Rm_msgsMoveloffset()
        {
        }

        public static final Codec<Ros1Rm_msgsMoveloffset> CODEC = new Codec<Ros1Rm_msgsMoveloffset>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Moveloffset.
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
            public byte[] encode(Ros1Rm_msgsMoveloffset value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsMoveloffset(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Moveloffset.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsMoveloffset decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsMoveloffset value = readRos1Rm_msgsMoveloffset(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsMoveloffset(Codecs.Writer writer, Ros1Rm_msgsMoveloffset value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros1Geometry_msgsPose part0 = value.offset;

        writeRos1Geometry_msgsPose(writer, part0);
        int part1 = value.speed;
        writer.integer(part1, 4, true);
        int part2 = value.r;
        writer.integer(part2, 4, true);
        boolean part3 = value.trajectory_connect;
        writer.integer(part3 ? 1 : 0, 1, false);
        boolean part4 = value.frame_type;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.block;
        writer.integer(part5 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsMoveloffset readRos1Rm_msgsMoveloffset(Codecs.Reader reader)
    {
        Ros1Rm_msgsMoveloffset value = new Ros1Rm_msgsMoveloffset();
        value.offset = readRos1Geometry_msgsPose(reader);
        value.speed = (int)reader.integer(4, true);
        value.r = (int)reader.integer(4, true);
        value.trajectory_connect = readBool(reader);
        value.frame_type = readBool(reader);
        value.block = readBool(reader);
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
    public static final class Ros1Rm_msgsOrt_Teach
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Ort_Teach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;
        /**
         * @brief Original rm_msgs/Ort_Teach.teach_type field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String teach_type = "";
        /**
         * @brief Original rm_msgs/Ort_Teach.direction field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String direction = "";
        /**
         * @brief Original rm_msgs/Ort_Teach.v field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short v = 0;

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
        public Ros1Rm_msgsOrt_Teach()
        {
        }

        public static final Codec<Ros1Rm_msgsOrt_Teach> CODEC = new Codec<Ros1Rm_msgsOrt_Teach>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Ort_Teach.
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
            public byte[] encode(Ros1Rm_msgsOrt_Teach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsOrt_Teach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Ort_Teach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsOrt_Teach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsOrt_Teach value = readRos1Rm_msgsOrt_Teach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsOrt_Teach(Codecs.Writer writer, Ros1Rm_msgsOrt_Teach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.teach_type;

        writeText(writer, part0, 256);
        String part1 = value.direction;

        writeText(writer, part1, 256);
        short part2 = value.v;
        writer.integer(part2, 2, true);
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
    private static Ros1Rm_msgsOrt_Teach readRos1Rm_msgsOrt_Teach(Codecs.Reader reader)
    {
        Ros1Rm_msgsOrt_Teach value = new Ros1Rm_msgsOrt_Teach();
        value.teach_type = readText(reader, 256);
        value.direction = readText(reader, 256);
        value.v = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsPlan_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Plan_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_msgs/Plan_State.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsPlan_State()
        {
        }

        public static final Codec<Ros1Rm_msgsPlan_State> CODEC = new Codec<Ros1Rm_msgsPlan_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Plan_State.
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
            public byte[] encode(Ros1Rm_msgsPlan_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsPlan_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Plan_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsPlan_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsPlan_State value = readRos1Rm_msgsPlan_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsPlan_State(Codecs.Writer writer, Ros1Rm_msgsPlan_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.state;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsPlan_State readRos1Rm_msgsPlan_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsPlan_State value = new Ros1Rm_msgsPlan_State();
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsPos_Teach
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Pos_Teach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 522;
        /**
         * @brief Original rm_msgs/Pos_Teach.teach_type field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String teach_type = "";
        /**
         * @brief Original rm_msgs/Pos_Teach.direction field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String direction = "";
        /**
         * @brief Original rm_msgs/Pos_Teach.v field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short v = 0;

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
        public Ros1Rm_msgsPos_Teach()
        {
        }

        public static final Codec<Ros1Rm_msgsPos_Teach> CODEC = new Codec<Ros1Rm_msgsPos_Teach>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Pos_Teach.
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
            public byte[] encode(Ros1Rm_msgsPos_Teach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsPos_Teach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Pos_Teach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsPos_Teach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsPos_Teach value = readRos1Rm_msgsPos_Teach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsPos_Teach(Codecs.Writer writer, Ros1Rm_msgsPos_Teach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.teach_type;

        writeText(writer, part0, 256);
        String part1 = value.direction;

        writeText(writer, part1, 256);
        short part2 = value.v;
        writer.integer(part2, 2, true);
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
    private static Ros1Rm_msgsPos_Teach readRos1Rm_msgsPos_Teach(Codecs.Reader reader)
    {
        Ros1Rm_msgsPos_Teach value = new Ros1Rm_msgsPos_Teach();
        value.teach_type = readText(reader, 256);
        value.direction = readText(reader, 256);
        value.v = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsProgramrunstate
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Programrunstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 164;
        /**
         * @brief Original rm_msgs/Programrunstate.run_state field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int run_state = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int id = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.edit_id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int edit_id = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.plan_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_num = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.total_loop field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int total_loop = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.step_mode field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int step_mode = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.plan_speed field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_speed = 0;
        /**
         * @brief Original rm_msgs/Programrunstate.loop_num field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] loop_num = new int[0];
        /**
         * @brief Original rm_msgs/Programrunstate.loop_cont field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] loop_cont = new int[0];

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
        public Ros1Rm_msgsProgramrunstate()
        {
        }

        public static final Codec<Ros1Rm_msgsProgramrunstate> CODEC = new Codec<Ros1Rm_msgsProgramrunstate>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Programrunstate.
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
            public byte[] encode(Ros1Rm_msgsProgramrunstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsProgramrunstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Programrunstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsProgramrunstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsProgramrunstate value = readRos1Rm_msgsProgramrunstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsProgramrunstate(Codecs.Writer writer, Ros1Rm_msgsProgramrunstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.run_state;
        writer.integer(part0, 4, true);
        int part1 = value.id;
        writer.integer(part1, 4, true);
        int part2 = value.edit_id;
        writer.integer(part2, 4, true);
        int part3 = value.plan_num;
        writer.integer(part3, 4, true);
        int part4 = value.total_loop;
        writer.integer(part4, 4, true);
        int part5 = value.step_mode;
        writer.integer(part5, 4, true);
        int part6 = value.plan_speed;
        writer.integer(part6, 4, true);
        int[] part7 = value.loop_num;
        if(part7 == null || part7.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.integer(part7[i], 4, true);
        }
        int[] part8 = value.loop_cont;
        if(part8 == null || part8.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writer.integer(part8[i], 4, true);
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
    private static Ros1Rm_msgsProgramrunstate readRos1Rm_msgsProgramrunstate(Codecs.Reader reader)
    {
        Ros1Rm_msgsProgramrunstate value = new Ros1Rm_msgsProgramrunstate();
        value.run_state = (int)reader.integer(4, true);
        value.id = (int)reader.integer(4, true);
        value.edit_id = (int)reader.integer(4, true);
        value.plan_num = (int)reader.integer(4, true);
        value.total_loop = (int)reader.integer(4, true);
        value.step_mode = (int)reader.integer(4, true);
        value.plan_speed = (int)reader.integer(4, true);
        value.loop_num = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.loop_num.length; ++i)
            value.loop_num[i] = (int)reader.integer(4, true);
        value.loop_cont = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.loop_cont.length; ++i)
            value.loop_cont[i] = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsRS485_Mode
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/RS485_Mode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        /**
         * @brief Original rm_msgs/RS485_Mode.controller_RS485_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int controller_RS485_mode = 0;
        /**
         * @brief Original rm_msgs/RS485_Mode.tool_RS485_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int tool_RS485_mode = 0;
        /**
         * @brief Original rm_msgs/RS485_Mode.baudrate field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long baudrate = 0;
        /**
         * @brief Original rm_msgs/RS485_Mode.modbus_timeout field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long modbus_timeout = 0;

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
        public Ros1Rm_msgsRS485_Mode()
        {
        }

        public static final Codec<Ros1Rm_msgsRS485_Mode> CODEC = new Codec<Ros1Rm_msgsRS485_Mode>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/RS485_Mode.
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
            public byte[] encode(Ros1Rm_msgsRS485_Mode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRS485_Mode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/RS485_Mode.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRS485_Mode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRS485_Mode value = readRos1Rm_msgsRS485_Mode(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRS485_Mode(Codecs.Writer writer, Ros1Rm_msgsRS485_Mode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.controller_RS485_mode;
        writer.integer(part0, 1, false);
        int part1 = value.tool_RS485_mode;
        writer.integer(part1, 1, false);
        long part2 = value.baudrate;
        writer.integer(part2, 4, false);
        long part3 = value.modbus_timeout;
        writer.integer(part3, 4, false);
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
    private static Ros1Rm_msgsRS485_Mode readRos1Rm_msgsRS485_Mode(Codecs.Reader reader)
    {
        Ros1Rm_msgsRS485_Mode value = new Ros1Rm_msgsRS485_Mode();
        value.controller_RS485_mode = (int)reader.integer(1, false);
        value.tool_RS485_mode = (int)reader.integer(1, false);
        value.baudrate = reader.integer(4, false);
        value.modbus_timeout = reader.integer(4, false);
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
    public static final class Ros1Rm_msgsRS485params
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/RS485params";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original rm_msgs/RS485params.mode field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_msgs/RS485params.baudrate field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int baudrate = 0;

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
        public Ros1Rm_msgsRS485params()
        {
        }

        public static final Codec<Ros1Rm_msgsRS485params> CODEC = new Codec<Ros1Rm_msgsRS485params>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/RS485params.
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
            public byte[] encode(Ros1Rm_msgsRS485params value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRS485params(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/RS485params.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRS485params decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRS485params value = readRos1Rm_msgsRS485params(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRS485params(Codecs.Writer writer, Ros1Rm_msgsRS485params value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.mode;
        writer.integer(part0, 4, true);
        int part1 = value.baudrate;
        writer.integer(part1, 4, true);
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
    private static Ros1Rm_msgsRS485params readRos1Rm_msgsRS485params(Codecs.Reader reader)
    {
        Ros1Rm_msgsRS485params value = new Ros1Rm_msgsRS485params();
        value.mode = (int)reader.integer(4, true);
        value.baudrate = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsRead_ModbusRTU
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Read_ModbusRTU";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original rm_msgs/Read_ModbusRTU.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_msgs/Read_ModbusRTU.device field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;
        /**
         * @brief Original rm_msgs/Read_ModbusRTU.num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_msgs/Read_ModbusRTU.type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_ModbusRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsRead_ModbusRTU()
        {
        }

        public static final Codec<Ros1Rm_msgsRead_ModbusRTU> CODEC = new Codec<Ros1Rm_msgsRead_ModbusRTU>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Read_ModbusRTU.
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
            public byte[] encode(Ros1Rm_msgsRead_ModbusRTU value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRead_ModbusRTU(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Read_ModbusRTU.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRead_ModbusRTU decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRead_ModbusRTU value = readRos1Rm_msgsRead_ModbusRTU(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRead_ModbusRTU(Codecs.Writer writer, Ros1Rm_msgsRead_ModbusRTU value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        int part1 = value.device;
        writer.integer(part1, 4, true);
        int part2 = value.num;
        writer.integer(part2, 4, true);
        int part3 = value.type;
        writer.integer(part3, 4, true);
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
    private static Ros1Rm_msgsRead_ModbusRTU readRos1Rm_msgsRead_ModbusRTU(Codecs.Reader reader)
    {
        Ros1Rm_msgsRead_ModbusRTU value = new Ros1Rm_msgsRead_ModbusRTU();
        value.address = (int)reader.integer(4, true);
        value.device = (int)reader.integer(4, true);
        value.num = (int)reader.integer(4, true);
        value.type = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsRead_Register
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Read_Register";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;
        /**
         * @brief Original rm_msgs/Read_Register.port field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_msgs/Read_Register.address field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long address = 0;
        /**
         * @brief Original rm_msgs/Read_Register.num field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long num = 0;
        /**
         * @brief Original rm_msgs/Read_Register.device field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long device = 0;

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_Register.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsRead_Register()
        {
        }

        public static final Codec<Ros1Rm_msgsRead_Register> CODEC = new Codec<Ros1Rm_msgsRead_Register>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Read_Register.
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
            public byte[] encode(Ros1Rm_msgsRead_Register value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRead_Register(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Read_Register.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRead_Register decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRead_Register value = readRos1Rm_msgsRead_Register(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRead_Register(Codecs.Writer writer, Ros1Rm_msgsRead_Register value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.port;
        writer.integer(part0, 1, false);
        long part1 = value.address;
        writer.integer(part1, 4, false);
        long part2 = value.num;
        writer.integer(part2, 4, false);
        long part3 = value.device;
        writer.integer(part3, 4, false);
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
    private static Ros1Rm_msgsRead_Register readRos1Rm_msgsRead_Register(Codecs.Reader reader)
    {
        Ros1Rm_msgsRead_Register value = new Ros1Rm_msgsRead_Register();
        value.port = (int)reader.integer(1, false);
        value.address = reader.integer(4, false);
        value.num = reader.integer(4, false);
        value.device = reader.integer(4, false);
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
    public static final class Ros1Rm_msgsRead_TCPandRTU
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Read_TCPandRTU";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 540;
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.device field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;
        /**
         * @brief Original rm_msgs/Read_TCPandRTU.type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;

        /**
         * @brief Decode the whole canonical value for rm_msgs/Read_TCPandRTU.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros1Rm_msgsRead_TCPandRTU()
        {
        }

        public static final Codec<Ros1Rm_msgsRead_TCPandRTU> CODEC = new Codec<Ros1Rm_msgsRead_TCPandRTU>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Read_TCPandRTU.
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
            public byte[] encode(Ros1Rm_msgsRead_TCPandRTU value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRead_TCPandRTU(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Read_TCPandRTU.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRead_TCPandRTU decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRead_TCPandRTU value = readRos1Rm_msgsRead_TCPandRTU(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRead_TCPandRTU(Codecs.Writer writer, Ros1Rm_msgsRead_TCPandRTU value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        int part1 = value.num;
        writer.integer(part1, 4, true);
        String part2 = value.ip;

        writeText(writer, part2, 256);
        int part3 = value.port;
        writer.integer(part3, 4, true);
        String part4 = value.master_name;

        writeText(writer, part4, 256);
        int part5 = value.device;
        writer.integer(part5, 4, true);
        int part6 = value.type;
        writer.integer(part6, 4, true);
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
    private static Ros1Rm_msgsRead_TCPandRTU readRos1Rm_msgsRead_TCPandRTU(Codecs.Reader reader)
    {
        Ros1Rm_msgsRead_TCPandRTU value = new Ros1Rm_msgsRead_TCPandRTU();
        value.address = (int)reader.integer(4, true);
        value.num = (int)reader.integer(4, true);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.master_name = readText(reader, 256);
        value.device = (int)reader.integer(4, true);
        value.type = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsRegister_Data
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Register_Data";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 37;
        /**
         * @brief Original rm_msgs/Register_Data.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;
        /**
         * @brief Original rm_msgs/Register_Data.data field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] data = new int[0];

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
        public Ros1Rm_msgsRegister_Data()
        {
        }

        public static final Codec<Ros1Rm_msgsRegister_Data> CODEC = new Codec<Ros1Rm_msgsRegister_Data>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Register_Data.
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
            public byte[] encode(Ros1Rm_msgsRegister_Data value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRegister_Data(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Register_Data.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRegister_Data decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRegister_Data value = readRos1Rm_msgsRegister_Data(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRegister_Data(Codecs.Writer writer, Ros1Rm_msgsRegister_Data value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.state;
        writer.integer(part0 ? 1 : 0, 1, false);
        int[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 2, false);
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
    private static Ros1Rm_msgsRegister_Data readRos1Rm_msgsRegister_Data(Codecs.Reader reader)
    {
        Ros1Rm_msgsRegister_Data value = new Ros1Rm_msgsRegister_Data();
        value.state = readBool(reader);
        value.data = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsRm_Plus_Base
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Rm_Plus_Base";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6";
        public static final int MIN_WIRE_BYTES = 61, MAX_WIRE_BYTES = 1597;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.manu field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String manu = "";
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.type field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte type = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.hv field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String hv = "";
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.sv field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String sv = "";
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.bv field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String bv = "";
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int id = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.dof field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte dof = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.check field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte check = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.bee field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte bee = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.force field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean force = false;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.touch field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean touch = false;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.touch_num field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte touch_num = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.touch_sw field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte touch_sw = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.hand field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte hand = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.pos_up field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] pos_up = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.pos_low field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] pos_low = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.angle_up field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] angle_up = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.angle_low field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] angle_low = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.speed_up field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] speed_up = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.speed_low field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] speed_low = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.force_up field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] force_up = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_Base.force_low field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] force_low = new int[0];

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
        public Ros1Rm_msgsRm_Plus_Base()
        {
        }

        public static final Codec<Ros1Rm_msgsRm_Plus_Base> CODEC = new Codec<Ros1Rm_msgsRm_Plus_Base>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Rm_Plus_Base.
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
            public byte[] encode(Ros1Rm_msgsRm_Plus_Base value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRm_Plus_Base(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Rm_Plus_Base.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRm_Plus_Base decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRm_Plus_Base value = readRos1Rm_msgsRm_Plus_Base(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRm_Plus_Base(Codecs.Writer writer, Ros1Rm_msgsRm_Plus_Base value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.manu;
        writeText(writer, part0, 256);
        byte part1 = value.type;
        writer.integer(part1, 1, true);
        String part2 = value.hv;
        writeText(writer, part2, 256);
        String part3 = value.sv;
        writeText(writer, part3, 256);
        String part4 = value.bv;
        writeText(writer, part4, 256);
        int part5 = value.id;
        writer.integer(part5, 4, true);
        byte part6 = value.dof;
        writer.integer(part6, 1, true);
        byte part7 = value.check;
        writer.integer(part7, 1, true);
        byte part8 = value.bee;
        writer.integer(part8, 1, true);
        boolean part9 = value.force;
        writer.integer(part9 ? 1 : 0, 1, false);
        boolean part10 = value.touch;
        writer.integer(part10 ? 1 : 0, 1, false);
        byte part11 = value.touch_num;
        writer.integer(part11, 1, true);
        byte part12 = value.touch_sw;
        writer.integer(part12, 1, true);
        byte part13 = value.hand;
        writer.integer(part13, 1, true);
        int[] part14 = value.pos_up;
        if(part14 == null || part14.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part14.length, 4, false);
        for(int i = 0; i < part14.length; ++i)
        {
            writer.integer(part14[i], 4, true);
        }
        int[] part15 = value.pos_low;
        if(part15 == null || part15.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part15.length, 4, false);
        for(int i = 0; i < part15.length; ++i)
        {
            writer.integer(part15[i], 4, true);
        }
        int[] part16 = value.angle_up;
        if(part16 == null || part16.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part16.length, 4, false);
        for(int i = 0; i < part16.length; ++i)
        {
            writer.integer(part16[i], 4, true);
        }
        int[] part17 = value.angle_low;
        if(part17 == null || part17.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part17.length, 4, false);
        for(int i = 0; i < part17.length; ++i)
        {
            writer.integer(part17[i], 4, true);
        }
        int[] part18 = value.speed_up;
        if(part18 == null || part18.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part18.length, 4, false);
        for(int i = 0; i < part18.length; ++i)
        {
            writer.integer(part18[i], 4, true);
        }
        int[] part19 = value.speed_low;
        if(part19 == null || part19.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part19.length, 4, false);
        for(int i = 0; i < part19.length; ++i)
        {
            writer.integer(part19[i], 4, true);
        }
        int[] part20 = value.force_up;
        if(part20 == null || part20.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part20.length, 4, false);
        for(int i = 0; i < part20.length; ++i)
        {
            writer.integer(part20[i], 4, true);
        }
        int[] part21 = value.force_low;
        if(part21 == null || part21.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part21.length, 4, false);
        for(int i = 0; i < part21.length; ++i)
        {
            writer.integer(part21[i], 4, true);
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
    private static Ros1Rm_msgsRm_Plus_Base readRos1Rm_msgsRm_Plus_Base(Codecs.Reader reader)
    {
        Ros1Rm_msgsRm_Plus_Base value = new Ros1Rm_msgsRm_Plus_Base();
        value.manu = readText(reader, 256);
        value.type = (byte)reader.integer(1, true);
        value.hv = readText(reader, 256);
        value.sv = readText(reader, 256);
        value.bv = readText(reader, 256);
        value.id = (int)reader.integer(4, true);
        value.dof = (byte)reader.integer(1, true);
        value.check = (byte)reader.integer(1, true);
        value.bee = (byte)reader.integer(1, true);
        value.force = readBool(reader);
        value.touch = readBool(reader);
        value.touch_num = (byte)reader.integer(1, true);
        value.touch_sw = (byte)reader.integer(1, true);
        value.hand = (byte)reader.integer(1, true);
        value.pos_up = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.pos_up.length; ++i)
            value.pos_up[i] = (int)reader.integer(4, true);
        value.pos_low = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.pos_low.length; ++i)
            value.pos_low[i] = (int)reader.integer(4, true);
        value.angle_up = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.angle_up.length; ++i)
            value.angle_up[i] = (int)reader.integer(4, true);
        value.angle_low = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.angle_low.length; ++i)
            value.angle_low[i] = (int)reader.integer(4, true);
        value.speed_up = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.speed_up.length; ++i)
            value.speed_up[i] = (int)reader.integer(4, true);
        value.speed_low = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.speed_low.length; ++i)
            value.speed_low[i] = (int)reader.integer(4, true);
        value.force_up = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.force_up.length; ++i)
            value.force_up[i] = (int)reader.integer(4, true);
        value.force_low = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.force_low.length; ++i)
            value.force_low[i] = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsRm_Plus_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Rm_Plus_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1";
        public static final int MIN_WIRE_BYTES = 60, MAX_WIRE_BYTES = 892;
        /**
         * @brief Original rm_msgs/Rm_Plus_State.sys_state field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sys_state = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_State.sys_err field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sys_err = 0;
        /**
         * @brief Original rm_msgs/Rm_Plus_State.dof_state field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] dof_state = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.dof_err field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] dof_err = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.pos field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] pos = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.speed field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] speed = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.angle field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] angle = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.current field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] current = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.normal_force field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] normal_force = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.tangential_force field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] tangential_force = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.tangential_force_dir field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] tangential_force_dir = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.tsa field.
         * @details uint32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public long[] tsa = new long[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.tma field.
         * @details uint32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public long[] tma = new long[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.touch_data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] touch_data = new int[0];
        /**
         * @brief Original rm_msgs/Rm_Plus_State.force field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] force = new int[0];

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
        public Ros1Rm_msgsRm_Plus_State()
        {
        }

        public static final Codec<Ros1Rm_msgsRm_Plus_State> CODEC = new Codec<Ros1Rm_msgsRm_Plus_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Rm_Plus_State.
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
            public byte[] encode(Ros1Rm_msgsRm_Plus_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsRm_Plus_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Rm_Plus_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsRm_Plus_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsRm_Plus_State value = readRos1Rm_msgsRm_Plus_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsRm_Plus_State(Codecs.Writer writer, Ros1Rm_msgsRm_Plus_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sys_state;
        writer.integer(part0, 4, true);
        int part1 = value.sys_err;
        writer.integer(part1, 4, true);
        int[] part2 = value.dof_state;
        if(part2 == null || part2.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 4, true);
        }
        int[] part3 = value.dof_err;
        if(part3 == null || part3.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 4, true);
        }
        int[] part4 = value.pos;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.integer(part4[i], 4, true);
        }
        int[] part5 = value.speed;
        if(part5 == null || part5.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 4, true);
        }
        int[] part6 = value.angle;
        if(part6 == null || part6.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writer.integer(part6[i], 4, true);
        }
        int[] part7 = value.current;
        if(part7 == null || part7.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.integer(part7[i], 4, true);
        }
        int[] part8 = value.normal_force;
        if(part8 == null || part8.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part8.length, 4, false);
        for(int i = 0; i < part8.length; ++i)
        {
            writer.integer(part8[i], 4, true);
        }
        int[] part9 = value.tangential_force;
        if(part9 == null || part9.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part9.length, 4, false);
        for(int i = 0; i < part9.length; ++i)
        {
            writer.integer(part9[i], 4, true);
        }
        int[] part10 = value.tangential_force_dir;
        if(part10 == null || part10.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part10.length, 4, false);
        for(int i = 0; i < part10.length; ++i)
        {
            writer.integer(part10[i], 4, true);
        }
        long[] part11 = value.tsa;
        if(part11 == null || part11.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part11.length, 4, false);
        for(int i = 0; i < part11.length; ++i)
        {
            writer.integer(part11[i], 4, false);
        }
        long[] part12 = value.tma;
        if(part12 == null || part12.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part12.length, 4, false);
        for(int i = 0; i < part12.length; ++i)
        {
            writer.integer(part12[i], 4, false);
        }
        int[] part13 = value.touch_data;
        if(part13 == null || part13.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part13.length, 4, false);
        for(int i = 0; i < part13.length; ++i)
        {
            writer.integer(part13[i], 4, true);
        }
        int[] part14 = value.force;
        if(part14 == null || part14.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part14.length, 4, false);
        for(int i = 0; i < part14.length; ++i)
        {
            writer.integer(part14[i], 4, true);
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
    private static Ros1Rm_msgsRm_Plus_State readRos1Rm_msgsRm_Plus_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsRm_Plus_State value = new Ros1Rm_msgsRm_Plus_State();
        value.sys_state = (int)reader.integer(4, true);
        value.sys_err = (int)reader.integer(4, true);
        value.dof_state = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.dof_state.length; ++i)
            value.dof_state[i] = (int)reader.integer(4, true);
        value.dof_err = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.dof_err.length; ++i)
            value.dof_err[i] = (int)reader.integer(4, true);
        value.pos = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = (int)reader.integer(4, true);
        value.speed = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.speed.length; ++i)
            value.speed[i] = (int)reader.integer(4, true);
        value.angle = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.angle.length; ++i)
            value.angle[i] = (int)reader.integer(4, true);
        value.current = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.current.length; ++i)
            value.current[i] = (int)reader.integer(4, true);
        value.normal_force = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.normal_force.length; ++i)
            value.normal_force[i] = (int)reader.integer(4, true);
        value.tangential_force = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.tangential_force.length; ++i)
            value.tangential_force[i] = (int)reader.integer(4, true);
        value.tangential_force_dir = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.tangential_force_dir.length; ++i)
            value.tangential_force_dir[i] = (int)reader.integer(4, true);
        value.tsa = new long[readCount(reader, 16, 4)];
        for(int i = 0; i < value.tsa.length; ++i)
            value.tsa[i] = reader.integer(4, false);
        value.tma = new long[readCount(reader, 16, 4)];
        for(int i = 0; i < value.tma.length; ++i)
            value.tma[i] = reader.integer(4, false);
        value.touch_data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.touch_data.length; ++i)
            value.touch_data[i] = (int)reader.integer(4, true);
        value.force = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.force.length; ++i)
            value.force[i] = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsServo_GetAngle
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Servo_GetAngle";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Servo_GetAngle.servo_id field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int servo_id = 0;

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
        public Ros1Rm_msgsServo_GetAngle()
        {
        }

        public static final Codec<Ros1Rm_msgsServo_GetAngle> CODEC = new Codec<Ros1Rm_msgsServo_GetAngle>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Servo_GetAngle.
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
            public byte[] encode(Ros1Rm_msgsServo_GetAngle value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsServo_GetAngle(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Servo_GetAngle.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsServo_GetAngle decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsServo_GetAngle value = readRos1Rm_msgsServo_GetAngle(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsServo_GetAngle(Codecs.Writer writer, Ros1Rm_msgsServo_GetAngle value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.servo_id;
        writer.integer(part0, 2, false);
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
    private static Ros1Rm_msgsServo_GetAngle readRos1Rm_msgsServo_GetAngle(Codecs.Reader reader)
    {
        Ros1Rm_msgsServo_GetAngle value = new Ros1Rm_msgsServo_GetAngle();
        value.servo_id = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsServo_Move
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Servo_Move";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Servo_Move.servo_id field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int servo_id = 0;
        /**
         * @brief Original rm_msgs/Servo_Move.angle field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int angle = 0;

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
        public Ros1Rm_msgsServo_Move()
        {
        }

        public static final Codec<Ros1Rm_msgsServo_Move> CODEC = new Codec<Ros1Rm_msgsServo_Move>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Servo_Move.
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
            public byte[] encode(Ros1Rm_msgsServo_Move value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsServo_Move(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Servo_Move.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsServo_Move decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsServo_Move value = readRos1Rm_msgsServo_Move(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsServo_Move(Codecs.Writer writer, Ros1Rm_msgsServo_Move value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.servo_id;
        writer.integer(part0, 2, false);
        int part1 = value.angle;
        writer.integer(part1, 2, false);
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
    private static Ros1Rm_msgsServo_Move readRos1Rm_msgsServo_Move(Codecs.Reader reader)
    {
        Ros1Rm_msgsServo_Move value = new Ros1Rm_msgsServo_Move();
        value.servo_id = (int)reader.integer(2, false);
        value.angle = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsSet_Force_Position
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Set_Force_Position";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_msgs/Set_Force_Position.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_msgs/Set_Force_Position.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_msgs/Set_Force_Position.direction field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int direction = 0;
        /**
         * @brief Original rm_msgs/Set_Force_Position.N field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short N = 0;

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
        public Ros1Rm_msgsSet_Force_Position()
        {
        }

        public static final Codec<Ros1Rm_msgsSet_Force_Position> CODEC = new Codec<Ros1Rm_msgsSet_Force_Position>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Set_Force_Position.
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
            public byte[] encode(Ros1Rm_msgsSet_Force_Position value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsSet_Force_Position(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Set_Force_Position.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsSet_Force_Position decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsSet_Force_Position value = readRos1Rm_msgsSet_Force_Position(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsSet_Force_Position(Codecs.Writer writer, Ros1Rm_msgsSet_Force_Position value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sensor;
        writer.integer(part0, 1, false);
        int part1 = value.mode;
        writer.integer(part1, 1, false);
        int part2 = value.direction;
        writer.integer(part2, 1, false);
        short part3 = value.N;
        writer.integer(part3, 2, true);
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
    private static Ros1Rm_msgsSet_Force_Position readRos1Rm_msgsSet_Force_Position(Codecs.Reader reader)
    {
        Ros1Rm_msgsSet_Force_Position value = new Ros1Rm_msgsSet_Force_Position();
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.direction = (int)reader.integer(1, false);
        value.N = (short)reader.integer(2, true);
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
    public static final class Ros1Rm_msgsSet_Modbus_Mode
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Set_Modbus_Mode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 272;
        /**
         * @brief Original rm_msgs/Set_Modbus_Mode.port field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long port = 0;
        /**
         * @brief Original rm_msgs/Set_Modbus_Mode.baudrate field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long baudrate = 0;
        /**
         * @brief Original rm_msgs/Set_Modbus_Mode.timeout field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long timeout = 0;
        /**
         * @brief Original rm_msgs/Set_Modbus_Mode.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";

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
        public Ros1Rm_msgsSet_Modbus_Mode()
        {
        }

        public static final Codec<Ros1Rm_msgsSet_Modbus_Mode> CODEC = new Codec<Ros1Rm_msgsSet_Modbus_Mode>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Set_Modbus_Mode.
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
            public byte[] encode(Ros1Rm_msgsSet_Modbus_Mode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsSet_Modbus_Mode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Set_Modbus_Mode.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsSet_Modbus_Mode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsSet_Modbus_Mode value = readRos1Rm_msgsSet_Modbus_Mode(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsSet_Modbus_Mode(Codecs.Writer writer, Ros1Rm_msgsSet_Modbus_Mode value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        long part0 = value.port;
        writer.integer(part0, 4, false);
        long part1 = value.baudrate;
        writer.integer(part1, 4, false);
        long part2 = value.timeout;
        writer.integer(part2, 4, false);
        String part3 = value.ip;

        writeText(writer, part3, 256);
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
    private static Ros1Rm_msgsSet_Modbus_Mode readRos1Rm_msgsSet_Modbus_Mode(Codecs.Reader reader)
    {
        Ros1Rm_msgsSet_Modbus_Mode value = new Ros1Rm_msgsSet_Modbus_Mode();
        value.port = reader.integer(4, false);
        value.baudrate = reader.integer(4, false);
        value.timeout = reader.integer(4, false);
        value.ip = readText(reader, 256);
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
    public static final class Ros1Rm_msgsSet_Realtime_Push
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Set_Realtime_Push";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 276;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.cycle field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int cycle = 0;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.port field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.force_coordinate field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int force_coordinate = 0;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.aloha_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean aloha_state_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.arm_current_status_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean arm_current_status_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.expand_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean expand_state_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.hand_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean hand_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.joint_acc_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean joint_acc_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.joint_speed_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean joint_speed_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.lift_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean lift_state_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.tail_end_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean tail_end_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.rm_plus_base_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean rm_plus_base_enable = false;
        /**
         * @brief Original rm_msgs/Set_Realtime_Push.rm_plus_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean rm_plus_state_enable = false;

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
        public Ros1Rm_msgsSet_Realtime_Push()
        {
        }

        public static final Codec<Ros1Rm_msgsSet_Realtime_Push> CODEC = new Codec<Ros1Rm_msgsSet_Realtime_Push>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Set_Realtime_Push.
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
            public byte[] encode(Ros1Rm_msgsSet_Realtime_Push value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsSet_Realtime_Push(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Set_Realtime_Push.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsSet_Realtime_Push decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsSet_Realtime_Push value = readRos1Rm_msgsSet_Realtime_Push(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsSet_Realtime_Push(Codecs.Writer writer, Ros1Rm_msgsSet_Realtime_Push value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.cycle;
        writer.integer(part0, 2, false);
        int part1 = value.port;
        writer.integer(part1, 2, false);
        int part2 = value.force_coordinate;
        writer.integer(part2, 2, false);
        String part3 = value.ip;
        writeText(writer, part3, 256);
        boolean part4 = value.aloha_state_enable;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.arm_current_status_enable;
        writer.integer(part5 ? 1 : 0, 1, false);
        boolean part6 = value.expand_state_enable;
        writer.integer(part6 ? 1 : 0, 1, false);
        boolean part7 = value.hand_enable;
        writer.integer(part7 ? 1 : 0, 1, false);
        boolean part8 = value.joint_acc_enable;
        writer.integer(part8 ? 1 : 0, 1, false);
        boolean part9 = value.joint_speed_enable;
        writer.integer(part9 ? 1 : 0, 1, false);
        boolean part10 = value.lift_state_enable;
        writer.integer(part10 ? 1 : 0, 1, false);
        boolean part11 = value.tail_end_enable;
        writer.integer(part11 ? 1 : 0, 1, false);
        boolean part12 = value.rm_plus_base_enable;
        writer.integer(part12 ? 1 : 0, 1, false);
        boolean part13 = value.rm_plus_state_enable;
        writer.integer(part13 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsSet_Realtime_Push readRos1Rm_msgsSet_Realtime_Push(Codecs.Reader reader)
    {
        Ros1Rm_msgsSet_Realtime_Push value = new Ros1Rm_msgsSet_Realtime_Push();
        value.cycle = (int)reader.integer(2, false);
        value.port = (int)reader.integer(2, false);
        value.force_coordinate = (int)reader.integer(2, false);
        value.ip = readText(reader, 256);
        value.aloha_state_enable = readBool(reader);
        value.arm_current_status_enable = readBool(reader);
        value.expand_state_enable = readBool(reader);
        value.hand_enable = readBool(reader);
        value.joint_acc_enable = readBool(reader);
        value.joint_speed_enable = readBool(reader);
        value.lift_state_enable = readBool(reader);
        value.tail_end_enable = readBool(reader);
        value.rm_plus_base_enable = readBool(reader);
        value.rm_plus_state_enable = readBool(reader);
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
    public static final class Ros1Rm_msgsSix_Force
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Six_Force";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original rm_msgs/Six_Force.force_Fx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_Fx = 0;
        /**
         * @brief Original rm_msgs/Six_Force.force_Fy field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_Fy = 0;
        /**
         * @brief Original rm_msgs/Six_Force.force_Fz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_Fz = 0;
        /**
         * @brief Original rm_msgs/Six_Force.force_Mx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_Mx = 0;
        /**
         * @brief Original rm_msgs/Six_Force.force_My field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_My = 0;
        /**
         * @brief Original rm_msgs/Six_Force.force_Mz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_Mz = 0;

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
        public Ros1Rm_msgsSix_Force()
        {
        }

        public static final Codec<Ros1Rm_msgsSix_Force> CODEC = new Codec<Ros1Rm_msgsSix_Force>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Six_Force.
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
            public byte[] encode(Ros1Rm_msgsSix_Force value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsSix_Force(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Six_Force.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsSix_Force decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsSix_Force value = readRos1Rm_msgsSix_Force(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsSix_Force(Codecs.Writer writer, Ros1Rm_msgsSix_Force value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.force_Fx;
        writer.f32(part0);
        float part1 = value.force_Fy;
        writer.f32(part1);
        float part2 = value.force_Fz;
        writer.f32(part2);
        float part3 = value.force_Mx;
        writer.f32(part3);
        float part4 = value.force_My;
        writer.f32(part4);
        float part5 = value.force_Mz;
        writer.f32(part5);
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
    private static Ros1Rm_msgsSix_Force readRos1Rm_msgsSix_Force(Codecs.Reader reader)
    {
        Ros1Rm_msgsSix_Force value = new Ros1Rm_msgsSix_Force();
        value.force_Fx = reader.f32();
        value.force_Fy = reader.f32();
        value.force_Fz = reader.f32();
        value.force_Mx = reader.f32();
        value.force_My = reader.f32();
        value.force_Mz = reader.f32();
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
    public static final class Ros1Rm_msgsSocket_Command
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Socket_Command";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Socket_Command.command field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int command = 0;

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
        public Ros1Rm_msgsSocket_Command()
        {
        }

        public static final Codec<Ros1Rm_msgsSocket_Command> CODEC = new Codec<Ros1Rm_msgsSocket_Command>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Socket_Command.
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
            public byte[] encode(Ros1Rm_msgsSocket_Command value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsSocket_Command(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Socket_Command.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsSocket_Command decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsSocket_Command value = readRos1Rm_msgsSocket_Command(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsSocket_Command(Codecs.Writer writer, Ros1Rm_msgsSocket_Command value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.command;
        writer.integer(part0, 2, false);
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
    private static Ros1Rm_msgsSocket_Command readRos1Rm_msgsSocket_Command(Codecs.Reader reader)
    {
        Ros1Rm_msgsSocket_Command value = new Ros1Rm_msgsSocket_Command();
        value.command = (int)reader.integer(2, false);
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
    public static final class Ros1Rm_msgsStart_Multi_Drag_Teach
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Start_Multi_Drag_Teach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief Original rm_msgs/Start_Multi_Drag_Teach.free_axes field.
         * @details int32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] free_axes = new int[6];
        /**
         * @brief Original rm_msgs/Start_Multi_Drag_Teach.frame field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int frame = 0;
        /**
         * @brief Original rm_msgs/Start_Multi_Drag_Teach.singular_wall field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int singular_wall = 0;

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
        public Ros1Rm_msgsStart_Multi_Drag_Teach()
        {
        }

        public static final Codec<Ros1Rm_msgsStart_Multi_Drag_Teach> CODEC = new Codec<Ros1Rm_msgsStart_Multi_Drag_Teach>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Start_Multi_Drag_Teach.
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
            public byte[] encode(Ros1Rm_msgsStart_Multi_Drag_Teach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsStart_Multi_Drag_Teach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Start_Multi_Drag_Teach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsStart_Multi_Drag_Teach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsStart_Multi_Drag_Teach value = readRos1Rm_msgsStart_Multi_Drag_Teach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsStart_Multi_Drag_Teach(Codecs.Writer writer, Ros1Rm_msgsStart_Multi_Drag_Teach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.free_axes;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 4, true);
        }
        int part1 = value.frame;
        writer.integer(part1, 4, true);
        int part2 = value.singular_wall;
        writer.integer(part2, 4, true);
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
    private static Ros1Rm_msgsStart_Multi_Drag_Teach readRos1Rm_msgsStart_Multi_Drag_Teach(Codecs.Reader reader)
    {
        Ros1Rm_msgsStart_Multi_Drag_Teach value = new Ros1Rm_msgsStart_Multi_Drag_Teach();
        value.free_axes = new int[6];
        for(int i = 0; i < value.free_axes.length; ++i)
            value.free_axes[i] = (int)reader.integer(4, true);
        value.frame = (int)reader.integer(4, true);
        value.singular_wall = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsStop
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Stop";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_msgs/Stop.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsStop()
        {
        }

        public static final Codec<Ros1Rm_msgsStop> CODEC = new Codec<Ros1Rm_msgsStop>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Stop.
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
            public byte[] encode(Ros1Rm_msgsStop value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsStop(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Stop.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsStop decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsStop value = readRos1Rm_msgsStop(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsStop(Codecs.Writer writer, Ros1Rm_msgsStop value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.state;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsStop readRos1Rm_msgsStop(Codecs.Reader reader)
    {
        Ros1Rm_msgsStop value = new Ros1Rm_msgsStop();
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsStop_Teach
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Stop_Teach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_msgs/Stop_Teach.command field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String command = "";

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
        public Ros1Rm_msgsStop_Teach()
        {
        }

        public static final Codec<Ros1Rm_msgsStop_Teach> CODEC = new Codec<Ros1Rm_msgsStop_Teach>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Stop_Teach.
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
            public byte[] encode(Ros1Rm_msgsStop_Teach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsStop_Teach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Stop_Teach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsStop_Teach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsStop_Teach value = readRos1Rm_msgsStop_Teach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsStop_Teach(Codecs.Writer writer, Ros1Rm_msgsStop_Teach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.command;

        writeText(writer, part0, 256);
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
    private static Ros1Rm_msgsStop_Teach readRos1Rm_msgsStop_Teach(Codecs.Reader reader)
    {
        Ros1Rm_msgsStop_Teach value = new Ros1Rm_msgsStop_Teach();
        value.command = readText(reader, 256);
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
    public static final class Ros1Rm_msgsTool_Analog_Output
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Tool_Analog_Output";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Tool_Analog_Output.voltage field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float voltage = 0;

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
        public Ros1Rm_msgsTool_Analog_Output()
        {
        }

        public static final Codec<Ros1Rm_msgsTool_Analog_Output> CODEC = new Codec<Ros1Rm_msgsTool_Analog_Output>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Tool_Analog_Output.
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
            public byte[] encode(Ros1Rm_msgsTool_Analog_Output value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsTool_Analog_Output(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Tool_Analog_Output.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsTool_Analog_Output decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsTool_Analog_Output value = readRos1Rm_msgsTool_Analog_Output(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsTool_Analog_Output(Codecs.Writer writer, Ros1Rm_msgsTool_Analog_Output value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.voltage;
        writer.f32(part0);
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
    private static Ros1Rm_msgsTool_Analog_Output readRos1Rm_msgsTool_Analog_Output(Codecs.Reader reader)
    {
        Ros1Rm_msgsTool_Analog_Output value = new Ros1Rm_msgsTool_Analog_Output();
        value.voltage = reader.f32();
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
    public static final class Ros1Rm_msgsTool_Digital_Output
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Tool_Digital_Output";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_msgs/Tool_Digital_Output.num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_msgs/Tool_Digital_Output.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros1Rm_msgsTool_Digital_Output()
        {
        }

        public static final Codec<Ros1Rm_msgsTool_Digital_Output> CODEC = new Codec<Ros1Rm_msgsTool_Digital_Output>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Tool_Digital_Output.
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
            public byte[] encode(Ros1Rm_msgsTool_Digital_Output value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsTool_Digital_Output(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Tool_Digital_Output.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsTool_Digital_Output decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsTool_Digital_Output value = readRos1Rm_msgsTool_Digital_Output(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsTool_Digital_Output(Codecs.Writer writer, Ros1Rm_msgsTool_Digital_Output value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.num;
        writer.integer(part0, 1, false);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros1Rm_msgsTool_Digital_Output readRos1Rm_msgsTool_Digital_Output(Codecs.Reader reader)
    {
        Ros1Rm_msgsTool_Digital_Output value = new Ros1Rm_msgsTool_Digital_Output();
        value.num = (int)reader.integer(1, false);
        value.state = readBool(reader);
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
    public static final class Ros1Rm_msgsTool_IO_State
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Tool_IO_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_msgs/Tool_IO_State.Tool_IO_Mode field.
         * @details int8 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte[] Tool_IO_Mode = new byte[2];
        /**
         * @brief Original rm_msgs/Tool_IO_State.Tool_IO_State field.
         * @details int8 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte[] Tool_IO_State = new byte[2];

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
        public Ros1Rm_msgsTool_IO_State()
        {
        }

        public static final Codec<Ros1Rm_msgsTool_IO_State> CODEC = new Codec<Ros1Rm_msgsTool_IO_State>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Tool_IO_State.
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
            public byte[] encode(Ros1Rm_msgsTool_IO_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsTool_IO_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Tool_IO_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsTool_IO_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsTool_IO_State value = readRos1Rm_msgsTool_IO_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsTool_IO_State(Codecs.Writer writer, Ros1Rm_msgsTool_IO_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte[] part0 = value.Tool_IO_Mode;
        if(part0 == null || part0.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, true);
        }
        byte[] part1 = value.Tool_IO_State;
        if(part1 == null || part1.length != 2)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 1, true);
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
    private static Ros1Rm_msgsTool_IO_State readRos1Rm_msgsTool_IO_State(Codecs.Reader reader)
    {
        Ros1Rm_msgsTool_IO_State value = new Ros1Rm_msgsTool_IO_State();
        value.Tool_IO_Mode = new byte[2];
        for(int i = 0; i < value.Tool_IO_Mode.length; ++i)
            value.Tool_IO_Mode[i] = (byte)reader.integer(1, true);
        value.Tool_IO_State = new byte[2];
        for(int i = 0; i < value.Tool_IO_State.length; ++i)
            value.Tool_IO_State[i] = (byte)reader.integer(1, true);
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
    public static final class Ros1Rm_msgsTrajectoryinfo
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Trajectoryinfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 524;
        /**
         * @brief Original rm_msgs/Trajectoryinfo.name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String name = "";
        /**
         * @brief Original rm_msgs/Trajectoryinfo.create_time field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String create_time = "";
        /**
         * @brief Original rm_msgs/Trajectoryinfo.point_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int point_num = 0;

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
        public Ros1Rm_msgsTrajectoryinfo()
        {
        }

        public static final Codec<Ros1Rm_msgsTrajectoryinfo> CODEC = new Codec<Ros1Rm_msgsTrajectoryinfo>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Trajectoryinfo.
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
            public byte[] encode(Ros1Rm_msgsTrajectoryinfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsTrajectoryinfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Trajectoryinfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsTrajectoryinfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsTrajectoryinfo value = readRos1Rm_msgsTrajectoryinfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsTrajectoryinfo(Codecs.Writer writer, Ros1Rm_msgsTrajectoryinfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;

        writeText(writer, part0, 256);
        String part1 = value.create_time;

        writeText(writer, part1, 256);
        int part2 = value.point_num;
        writer.integer(part2, 4, true);
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
    private static Ros1Rm_msgsTrajectoryinfo readRos1Rm_msgsTrajectoryinfo(Codecs.Reader reader)
    {
        Ros1Rm_msgsTrajectoryinfo value = new Ros1Rm_msgsTrajectoryinfo();
        value.name = readText(reader, 256);
        value.create_time = readText(reader, 256);
        value.point_num = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsTrajectorylist
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Trajectorylist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 8660;
        /**
         * @brief Original rm_msgs/Trajectorylist.page_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_msgs/Trajectorylist.page_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_msgs/Trajectorylist.total_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int total_size = 0;
        /**
         * @brief Original rm_msgs/Trajectorylist.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";
        /**
         * @brief Original rm_msgs/Trajectorylist.tra_list field.
         * @details rm_msgs/Trajectoryinfo sequence, count/quota 16, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros1Rm_msgsTrajectoryinfo[] tra_list = new Ros1Rm_msgsTrajectoryinfo[0];

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
        public Ros1Rm_msgsTrajectorylist()
        {
        }

        public static final Codec<Ros1Rm_msgsTrajectorylist> CODEC = new Codec<Ros1Rm_msgsTrajectorylist>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Trajectorylist.
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
            public byte[] encode(Ros1Rm_msgsTrajectorylist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsTrajectorylist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Trajectorylist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsTrajectorylist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsTrajectorylist value = readRos1Rm_msgsTrajectorylist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsTrajectorylist(Codecs.Writer writer, Ros1Rm_msgsTrajectorylist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.page_num;
        writer.integer(part0, 4, true);
        int part1 = value.page_size;
        writer.integer(part1, 4, true);
        int part2 = value.total_size;
        writer.integer(part2, 4, true);
        String part3 = value.vague_search;

        writeText(writer, part3, 256);
        Ros1Rm_msgsTrajectoryinfo[] part4 = value.tra_list;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {

            writeRos1Rm_msgsTrajectoryinfo(writer, part4[i]);
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
    private static Ros1Rm_msgsTrajectorylist readRos1Rm_msgsTrajectorylist(Codecs.Reader reader)
    {
        Ros1Rm_msgsTrajectorylist value = new Ros1Rm_msgsTrajectorylist();
        value.page_num = (int)reader.integer(4, true);
        value.page_size = (int)reader.integer(4, true);
        value.total_size = (int)reader.integer(4, true);
        value.vague_search = readText(reader, 256);
        value.tra_list = new Ros1Rm_msgsTrajectoryinfo[readCount(reader, 16, 12)];
        for(int i = 0; i < value.tra_list.length; ++i)
            value.tra_list[i] = readRos1Rm_msgsTrajectoryinfo(reader);
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
    public static final class Ros1Rm_msgsTurtle_Driver
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Turtle_Driver";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 532;
        /**
         * @brief Original rm_msgs/Turtle_Driver.message_type field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message_type = "";
        /**
         * @brief Original rm_msgs/Turtle_Driver.robot_mac_address field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String robot_mac_address = "";
        /**
         * @brief Original rm_msgs/Turtle_Driver.vx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float vx = 0;
        /**
         * @brief Original rm_msgs/Turtle_Driver.vy field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float vy = 0;
        /**
         * @brief Original rm_msgs/Turtle_Driver.vtheta field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float vtheta = 0;

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
        public Ros1Rm_msgsTurtle_Driver()
        {
        }

        public static final Codec<Ros1Rm_msgsTurtle_Driver> CODEC = new Codec<Ros1Rm_msgsTurtle_Driver>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Turtle_Driver.
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
            public byte[] encode(Ros1Rm_msgsTurtle_Driver value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsTurtle_Driver(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Turtle_Driver.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsTurtle_Driver decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsTurtle_Driver value = readRos1Rm_msgsTurtle_Driver(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsTurtle_Driver(Codecs.Writer writer, Ros1Rm_msgsTurtle_Driver value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.message_type;

        writeText(writer, part0, 256);
        String part1 = value.robot_mac_address;

        writeText(writer, part1, 256);
        float part2 = value.vx;
        writer.f32(part2);
        float part3 = value.vy;
        writer.f32(part3);
        float part4 = value.vtheta;
        writer.f32(part4);
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
    private static Ros1Rm_msgsTurtle_Driver readRos1Rm_msgsTurtle_Driver(Codecs.Reader reader)
    {
        Ros1Rm_msgsTurtle_Driver value = new Ros1Rm_msgsTurtle_Driver();
        value.message_type = readText(reader, 256);
        value.robot_mac_address = readText(reader, 256);
        value.vx = reader.f32();
        value.vy = reader.f32();
        value.vtheta = reader.f32();
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
    public static final class Ros1Rm_msgsUpdateTCPmasterparam
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/UpdateTCPmasterparam";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 784;
        /**
         * @brief Original rm_msgs/UpdateTCPmasterparam.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_msgs/UpdateTCPmasterparam.new_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String new_name = "";
        /**
         * @brief Original rm_msgs/UpdateTCPmasterparam.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_msgs/UpdateTCPmasterparam.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;

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
        public Ros1Rm_msgsUpdateTCPmasterparam()
        {
        }

        public static final Codec<Ros1Rm_msgsUpdateTCPmasterparam> CODEC = new Codec<Ros1Rm_msgsUpdateTCPmasterparam>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/UpdateTCPmasterparam.
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
            public byte[] encode(Ros1Rm_msgsUpdateTCPmasterparam value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsUpdateTCPmasterparam(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/UpdateTCPmasterparam.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsUpdateTCPmasterparam decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsUpdateTCPmasterparam value = readRos1Rm_msgsUpdateTCPmasterparam(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsUpdateTCPmasterparam(Codecs.Writer writer, Ros1Rm_msgsUpdateTCPmasterparam value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.master_name;

        writeText(writer, part0, 256);
        String part1 = value.new_name;

        writeText(writer, part1, 256);
        String part2 = value.ip;

        writeText(writer, part2, 256);
        int part3 = value.port;
        writer.integer(part3, 4, true);
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
    private static Ros1Rm_msgsUpdateTCPmasterparam readRos1Rm_msgsUpdateTCPmasterparam(Codecs.Reader reader)
    {
        Ros1Rm_msgsUpdateTCPmasterparam value = new Ros1Rm_msgsUpdateTCPmasterparam();
        value.master_name = readText(reader, 256);
        value.new_name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsWrite_ModbusRTU
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Write_ModbusRTU";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 80;
        /**
         * @brief Original rm_msgs/Write_ModbusRTU.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_msgs/Write_ModbusRTU.data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] data = new int[0];
        /**
         * @brief Original rm_msgs/Write_ModbusRTU.type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;
        /**
         * @brief Original rm_msgs/Write_ModbusRTU.device field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;

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
        public Ros1Rm_msgsWrite_ModbusRTU()
        {
        }

        public static final Codec<Ros1Rm_msgsWrite_ModbusRTU> CODEC = new Codec<Ros1Rm_msgsWrite_ModbusRTU>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Write_ModbusRTU.
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
            public byte[] encode(Ros1Rm_msgsWrite_ModbusRTU value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsWrite_ModbusRTU(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Write_ModbusRTU.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsWrite_ModbusRTU decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsWrite_ModbusRTU value = readRos1Rm_msgsWrite_ModbusRTU(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsWrite_ModbusRTU(Codecs.Writer writer, Ros1Rm_msgsWrite_ModbusRTU value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        int[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, true);
        }
        int part2 = value.type;
        writer.integer(part2, 4, true);
        int part3 = value.device;
        writer.integer(part3, 4, true);
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
    private static Ros1Rm_msgsWrite_ModbusRTU readRos1Rm_msgsWrite_ModbusRTU(Codecs.Reader reader)
    {
        Ros1Rm_msgsWrite_ModbusRTU value = new Ros1Rm_msgsWrite_ModbusRTU();
        value.address = (int)reader.integer(4, true);
        value.data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(4, true);
        value.type = (int)reader.integer(4, true);
        value.device = (int)reader.integer(4, true);
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
    public static final class Ros1Rm_msgsWrite_Register
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Write_Register";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 49;
        /**
         * @brief Original rm_msgs/Write_Register.port field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_msgs/Write_Register.address field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long address = 0;
        /**
         * @brief Original rm_msgs/Write_Register.num field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long num = 0;
        /**
         * @brief Original rm_msgs/Write_Register.data field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] data = new int[0];
        /**
         * @brief Original rm_msgs/Write_Register.device field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long device = 0;

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
        public Ros1Rm_msgsWrite_Register()
        {
        }

        public static final Codec<Ros1Rm_msgsWrite_Register> CODEC = new Codec<Ros1Rm_msgsWrite_Register>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Write_Register.
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
            public byte[] encode(Ros1Rm_msgsWrite_Register value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsWrite_Register(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Write_Register.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros1Rm_msgsWrite_Register decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsWrite_Register value = readRos1Rm_msgsWrite_Register(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsWrite_Register(Codecs.Writer writer, Ros1Rm_msgsWrite_Register value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.port;
        writer.integer(part0, 1, false);
        long part1 = value.address;
        writer.integer(part1, 4, false);
        long part2 = value.num;
        writer.integer(part2, 4, false);
        int[] part3 = value.data;
        if(part3 == null || part3.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 2, false);
        }
        long part4 = value.device;
        writer.integer(part4, 4, false);
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
    private static Ros1Rm_msgsWrite_Register readRos1Rm_msgsWrite_Register(Codecs.Reader reader)
    {
        Ros1Rm_msgsWrite_Register value = new Ros1Rm_msgsWrite_Register();
        value.port = (int)reader.integer(1, false);
        value.address = reader.integer(4, false);
        value.num = reader.integer(4, false);
        value.data = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(2, false);
        value.device = reader.integer(4, false);
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
    public static final class Ros1Rm_msgsWrite_TCPandRTU
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "rm_msgs/Write_TCPandRTU";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 604;
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] data = new int[0];
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;
        /**
         * @brief Original rm_msgs/Write_TCPandRTU.device field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;

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
        public Ros1Rm_msgsWrite_TCPandRTU()
        {
        }

        public static final Codec<Ros1Rm_msgsWrite_TCPandRTU> CODEC = new Codec<Ros1Rm_msgsWrite_TCPandRTU>() {
            /**
             * @brief Encode the complete ordered value for rm_msgs/Write_TCPandRTU.
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
            public byte[] encode(Ros1Rm_msgsWrite_TCPandRTU value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Rm_msgsWrite_TCPandRTU(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_msgs/Write_TCPandRTU.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Rm_msgsWrite_TCPandRTU decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Rm_msgsWrite_TCPandRTU value = readRos1Rm_msgsWrite_TCPandRTU(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Rm_msgsWrite_TCPandRTU(Codecs.Writer writer, Ros1Rm_msgsWrite_TCPandRTU value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        int[] part1 = value.data;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, true);
        }
        String part2 = value.ip;

        writeText(writer, part2, 256);
        int part3 = value.port;
        writer.integer(part3, 4, true);
        String part4 = value.master_name;

        writeText(writer, part4, 256);
        int part5 = value.type;
        writer.integer(part5, 4, true);
        int part6 = value.device;
        writer.integer(part6, 4, true);
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
    private static Ros1Rm_msgsWrite_TCPandRTU readRos1Rm_msgsWrite_TCPandRTU(Codecs.Reader reader)
    {
        Ros1Rm_msgsWrite_TCPandRTU value = new Ros1Rm_msgsWrite_TCPandRTU();
        value.address = (int)reader.integer(4, true);
        value.data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(4, true);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.master_name = readText(reader, 256);
        value.type = (int)reader.integer(4, true);
        value.device = (int)reader.integer(4, true);
        return value;
    }
}
