/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original ufactory/ros1_legacy canonical value domain.
 * @details The selected domain contains 29 complete record/components and 67 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package ufactory.ros1_legacy;

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
     * @details 10 ordered fields, canonical extent 66..94 bytes. Declared defaults and finite quotas remain
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
        public static final String CODEC_IDENTITY = "UWVMROS1_e5509a530075a638bfa1f09cf5fd78c4d609dccbd79ddd75ef50f5061f68b0f7";
        public static final int MIN_WIRE_BYTES = 66, MAX_WIRE_BYTES = 94;
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
        short part0 = value.state;
        writer.integer(part0, 2, true);
        short part1 = value.mode;
        writer.integer(part1, 2, true);
        short part2 = value.cmdnum;
        writer.integer(part2, 2, true);
        short part3 = value.mt_brake;
        writer.integer(part3, 2, true);
        short part4 = value.mt_able;
        writer.integer(part4, 2, true);
        short part5 = value.err;
        writer.integer(part5, 2, true);
        short part6 = value.warn;
        writer.integer(part6, 2, true);
        float[] part7 = value.angle;
        if(part7 == null || part7.length > 7)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f32(part7[i]);
        }
        float[] part8 = value.pose;
        if(part8 == null || part8.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f32(part8[i]);
        }
        float[] part9 = value.offset;
        if(part9 == null || part9.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part9.length; ++i)
        {
            writer.f32(part9[i]);
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
