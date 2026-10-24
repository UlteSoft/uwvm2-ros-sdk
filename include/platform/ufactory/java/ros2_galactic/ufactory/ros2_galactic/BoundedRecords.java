/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original ufactory/ros2_galactic canonical value domain.
 * @details The selected domain contains 111 complete record/components and 300 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package ufactory.ros2_galactic;

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
     * @brief Preserve all original builtin_interfaces/msg/Time fields.
     * @details 2 ordered fields, canonical extent 8..8 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros2Builtin_interfacesMsgTime
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "builtin_interfaces/msg/Time";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original builtin_interfaces/msg/Time.sec field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sec = 0;
        /**
         * @brief Original builtin_interfaces/msg/Time.nanosec field.
         * @details uint32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long nanosec = 0;

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
        public Ros2Builtin_interfacesMsgTime()
        {
        }

        public static final Codec<Ros2Builtin_interfacesMsgTime> CODEC = new Codec<Ros2Builtin_interfacesMsgTime>() {
            /**
             * @brief Encode the complete ordered value for builtin_interfaces/msg/Time.
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
            public byte[] encode(Ros2Builtin_interfacesMsgTime value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Builtin_interfacesMsgTime(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for builtin_interfaces/msg/Time.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Builtin_interfacesMsgTime decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Builtin_interfacesMsgTime value = readRos2Builtin_interfacesMsgTime(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Builtin_interfacesMsgTime(Codecs.Writer writer, Ros2Builtin_interfacesMsgTime value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sec;
        writer.integer(part0, 4, true);
        long part1 = value.nanosec;
        writer.integer(part1, 4, false);
        if(part1 < 0 || part1 >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
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
    private static Ros2Builtin_interfacesMsgTime readRos2Builtin_interfacesMsgTime(Codecs.Reader reader)
    {
        Ros2Builtin_interfacesMsgTime value = new Ros2Builtin_interfacesMsgTime();
        value.sec = (int)reader.integer(4, true);
        value.nanosec = reader.integer(4, false);
        if(value.nanosec < 0 || value.nanosec >= 1000000000L)
            throw new IllegalArgumentException("normalized subsecond field required");
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
    public static final class Ros2Geometry_msgsMsgPoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Point";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original geometry_msgs/msg/Point.x field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double x = 0;
        /**
         * @brief Original geometry_msgs/msg/Point.y field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double y = 0;
        /**
         * @brief Original geometry_msgs/msg/Point.z field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double z = 0;

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
        public Ros2Geometry_msgsMsgPoint()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPoint> CODEC = new Codec<Ros2Geometry_msgsMsgPoint>() {
            /**
             * @brief Encode the complete ordered value for geometry_msgs/msg/Point.
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
            public byte[] encode(Ros2Geometry_msgsMsgPoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Geometry_msgsMsgPoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for geometry_msgs/msg/Point.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros2Geometry_msgsMsgPoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPoint value = readRos2Geometry_msgsMsgPoint(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Geometry_msgsMsgPoint(Codecs.Writer writer, Ros2Geometry_msgsMsgPoint value)
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
    private static Ros2Geometry_msgsMsgPoint readRos2Geometry_msgsMsgPoint(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPoint value = new Ros2Geometry_msgsMsgPoint();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
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
    public static final class Ros2Geometry_msgsMsgQuaternion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Quaternion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 32;
        /**
         * @brief Original geometry_msgs/msg/Quaternion.x field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double x = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Original geometry_msgs/msg/Quaternion.y field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double y = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Original geometry_msgs/msg/Quaternion.z field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double z = Double.longBitsToDouble(0x0000000000000000L);
        /**
         * @brief Original geometry_msgs/msg/Quaternion.w field.
         * @details float64 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public double w = Double.longBitsToDouble(0x3ff0000000000000L);

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
        public Ros2Geometry_msgsMsgQuaternion()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgQuaternion> CODEC = new Codec<Ros2Geometry_msgsMsgQuaternion>() {
            /**
             * @brief Encode the complete ordered value for geometry_msgs/msg/Quaternion.
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
            public byte[] encode(Ros2Geometry_msgsMsgQuaternion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Geometry_msgsMsgQuaternion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for geometry_msgs/msg/Quaternion.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Geometry_msgsMsgQuaternion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgQuaternion value = readRos2Geometry_msgsMsgQuaternion(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Geometry_msgsMsgQuaternion(Codecs.Writer writer, Ros2Geometry_msgsMsgQuaternion value)
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
    private static Ros2Geometry_msgsMsgQuaternion readRos2Geometry_msgsMsgQuaternion(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgQuaternion value = new Ros2Geometry_msgsMsgQuaternion();
        value.x = reader.f64();
        value.y = reader.f64();
        value.z = reader.f64();
        value.w = reader.f64();
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
    public static final class Ros2Geometry_msgsMsgPose
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "geometry_msgs/msg/Pose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original geometry_msgs/msg/Pose.position field.
         * @details geometry_msgs/msg/Point scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPoint position = new Ros2Geometry_msgsMsgPoint();
        /**
         * @brief Original geometry_msgs/msg/Pose.orientation field.
         * @details geometry_msgs/msg/Quaternion scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros2Geometry_msgsMsgQuaternion orientation = new Ros2Geometry_msgsMsgQuaternion();

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
        public Ros2Geometry_msgsMsgPose()
        {
        }

        public static final Codec<Ros2Geometry_msgsMsgPose> CODEC = new Codec<Ros2Geometry_msgsMsgPose>() {
            /**
             * @brief Encode the complete ordered value for geometry_msgs/msg/Pose.
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
            public byte[] encode(Ros2Geometry_msgsMsgPose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Geometry_msgsMsgPose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for geometry_msgs/msg/Pose.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros2Geometry_msgsMsgPose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Geometry_msgsMsgPose value = readRos2Geometry_msgsMsgPose(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Geometry_msgsMsgPose(Codecs.Writer writer, Ros2Geometry_msgsMsgPose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPoint part0 = value.position;

        writeRos2Geometry_msgsMsgPoint(writer, part0);
        Ros2Geometry_msgsMsgQuaternion part1 = value.orientation;

        writeRos2Geometry_msgsMsgQuaternion(writer, part1);
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
    private static Ros2Geometry_msgsMsgPose readRos2Geometry_msgsMsgPose(Codecs.Reader reader)
    {
        Ros2Geometry_msgsMsgPose value = new Ros2Geometry_msgsMsgPose();
        value.position = readRos2Geometry_msgsMsgPoint(reader);
        value.orientation = readRos2Geometry_msgsMsgQuaternion(reader);
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
    public static final class Ros2Std_msgsMsgHeader
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "std_msgs/msg/Header";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Original std_msgs/msg/Header.stamp field.
         * @details builtin_interfaces/msg/Time scalar, count/quota 0, text byte bound 0. Preserve original
         * units and frame. Full value checks occur before successful encoding; construction grants no
         * authority.
         */
        public Ros2Builtin_interfacesMsgTime stamp = new Ros2Builtin_interfacesMsgTime();
        /**
         * @brief Original std_msgs/msg/Header.frame_id field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String frame_id = "";

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
        public Ros2Std_msgsMsgHeader()
        {
        }

        public static final Codec<Ros2Std_msgsMsgHeader> CODEC = new Codec<Ros2Std_msgsMsgHeader>() {
            /**
             * @brief Encode the complete ordered value for std_msgs/msg/Header.
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
            public byte[] encode(Ros2Std_msgsMsgHeader value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Std_msgsMsgHeader(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for std_msgs/msg/Header.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros2Std_msgsMsgHeader decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Std_msgsMsgHeader value = readRos2Std_msgsMsgHeader(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Std_msgsMsgHeader(Codecs.Writer writer, Ros2Std_msgsMsgHeader value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Builtin_interfacesMsgTime part0 = value.stamp;

        writeRos2Builtin_interfacesMsgTime(writer, part0);
        String part1 = value.frame_id;

        writeText(writer, part1, 256);
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
    private static Ros2Std_msgsMsgHeader readRos2Std_msgsMsgHeader(Codecs.Reader reader)
    {
        Ros2Std_msgsMsgHeader value = new Ros2Std_msgsMsgHeader();
        value.stamp = readRos2Builtin_interfacesMsgTime(reader);
        value.frame_id = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsMsgCIOState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/msg/CIOState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_87e50011fee05d07ce49effe9f8fd2be4e5edf3a09a2b3cd735692fea85c2268";
        public static final int MIN_WIRE_BYTES = 72, MAX_WIRE_BYTES = 328;
        /**
         * @brief Original xarm_msgs/msg/CIOState.header field.
         * @details std_msgs/msg/Header scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Original xarm_msgs/msg/CIOState.state field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short state = 0;
        /**
         * @brief Original xarm_msgs/msg/CIOState.code field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short code = 0;
        /**
         * @brief Original xarm_msgs/msg/CIOState.input_digitals field.
         * @details uint16 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] input_digitals = new int[2];
        /**
         * @brief Original xarm_msgs/msg/CIOState.output_digitals field.
         * @details uint16 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] output_digitals = new int[2];
        /**
         * @brief Original xarm_msgs/msg/CIOState.input_analogs field.
         * @details float32 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] input_analogs = new float[2];
        /**
         * @brief Original xarm_msgs/msg/CIOState.output_analogs field.
         * @details float32 array, count/quota 2, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] output_analogs = new float[2];
        /**
         * @brief Original xarm_msgs/msg/CIOState.input_conf field.
         * @details uint8 array, count/quota 16, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] input_conf = new int[16];
        /**
         * @brief Original xarm_msgs/msg/CIOState.output_conf field.
         * @details uint8 array, count/quota 16, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] output_conf = new int[16];

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
        public Ros2Xarm_msgsMsgCIOState()
        {
        }

        public static final Codec<Ros2Xarm_msgsMsgCIOState> CODEC = new Codec<Ros2Xarm_msgsMsgCIOState>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/msg/CIOState.
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
            public byte[] encode(Ros2Xarm_msgsMsgCIOState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsMsgCIOState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/msg/CIOState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros2Xarm_msgsMsgCIOState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsMsgCIOState value = readRos2Xarm_msgsMsgCIOState(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsMsgCIOState(Codecs.Writer writer, Ros2Xarm_msgsMsgCIOState value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;

        writeRos2Std_msgsMsgHeader(writer, part0);
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
    private static Ros2Xarm_msgsMsgCIOState readRos2Xarm_msgsMsgCIOState(Codecs.Reader reader)
    {
        Ros2Xarm_msgsMsgCIOState value = new Ros2Xarm_msgsMsgCIOState();
        value.header = readRos2Std_msgsMsgHeader(reader);
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
     * @brief Preserve all original xarm_msgs/msg/IOState fields.
     * @details 4 ordered fields, canonical extent 16..16 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros2Xarm_msgsMsgIOState
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/msg/IOState";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8f3e77d7d4c6ac1e49dadd8f4615cb015c028ecf494050a5a6b794d310863dc3";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original xarm_msgs/msg/IOState.digital_1 field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int digital_1 = 0;
        /**
         * @brief Original xarm_msgs/msg/IOState.digital_2 field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int digital_2 = 0;
        /**
         * @brief Original xarm_msgs/msg/IOState.analog_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float analog_1 = 0;
        /**
         * @brief Original xarm_msgs/msg/IOState.analog_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float analog_2 = 0;

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
        public Ros2Xarm_msgsMsgIOState()
        {
        }

        public static final Codec<Ros2Xarm_msgsMsgIOState> CODEC = new Codec<Ros2Xarm_msgsMsgIOState>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/msg/IOState.
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
            public byte[] encode(Ros2Xarm_msgsMsgIOState value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsMsgIOState(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/msg/IOState.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros2Xarm_msgsMsgIOState decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsMsgIOState value = readRos2Xarm_msgsMsgIOState(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsMsgIOState(Codecs.Writer writer, Ros2Xarm_msgsMsgIOState value)
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
    private static Ros2Xarm_msgsMsgIOState readRos2Xarm_msgsMsgIOState(Codecs.Reader reader)
    {
        Ros2Xarm_msgsMsgIOState value = new Ros2Xarm_msgsMsgIOState();
        value.digital_1 = (int)reader.integer(4, true);
        value.digital_2 = (int)reader.integer(4, true);
        value.analog_1 = reader.f32();
        value.analog_2 = reader.f32();
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
    public static final class Ros2Xarm_msgsMsgMoveVelocity
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/msg/MoveVelocity";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5ba20d989b68823e2b6a83c108f75912c8ab3472caf926903a76078321b5366f";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;
        /**
         * @brief Original xarm_msgs/msg/MoveVelocity.speeds field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] speeds = new float[0];
        /**
         * @brief Original xarm_msgs/msg/MoveVelocity.is_sync field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_sync = true;
        /**
         * @brief Original xarm_msgs/msg/MoveVelocity.is_tool_coord field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_tool_coord = false;
        /**
         * @brief Original xarm_msgs/msg/MoveVelocity.duration field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float duration = Float.intBitsToFloat(0xbf800000);

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
        public Ros2Xarm_msgsMsgMoveVelocity()
        {
        }

        public static final Codec<Ros2Xarm_msgsMsgMoveVelocity> CODEC = new Codec<Ros2Xarm_msgsMsgMoveVelocity>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/msg/MoveVelocity.
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
            public byte[] encode(Ros2Xarm_msgsMsgMoveVelocity value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsMsgMoveVelocity(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/msg/MoveVelocity.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsMsgMoveVelocity decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsMsgMoveVelocity value = readRos2Xarm_msgsMsgMoveVelocity(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsMsgMoveVelocity(Codecs.Writer writer, Ros2Xarm_msgsMsgMoveVelocity value)
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
    private static Ros2Xarm_msgsMsgMoveVelocity readRos2Xarm_msgsMsgMoveVelocity(Codecs.Reader reader)
    {
        Ros2Xarm_msgsMsgMoveVelocity value = new Ros2Xarm_msgsMsgMoveVelocity();
        value.speeds = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.speeds.length; ++i)
            value.speeds[i] = reader.f32();
        value.is_sync = readBool(reader);
        value.is_tool_coord = readBool(reader);
        value.duration = reader.f32();
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
    public static final class Ros2Xarm_msgsMsgRobotMsg
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/msg/RobotMsg";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_065254beab3e0439a6fb2965a10d270ca0aef1384523118d04cb39e886841c78";
        public static final int MIN_WIRE_BYTES = 78, MAX_WIRE_BYTES = 362;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.header field.
         * @details std_msgs/msg/Header scalar, count/quota 0, text byte bound 0. Preserve original units and
         * frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Std_msgsMsgHeader header = new Ros2Std_msgsMsgHeader();
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.state field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short state = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.mode field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mode = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.cmdnum field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short cmdnum = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.mt_brake field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mt_brake = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.mt_able field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mt_able = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.err field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short err = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.warn field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short warn = 0;
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.angle field.
         * @details float32 sequence, count/quota 7, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] angle = new float[0];
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.pose field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose = new float[6];
        /**
         * @brief Original xarm_msgs/msg/RobotMsg.offset field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] offset = new float[6];

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
        public Ros2Xarm_msgsMsgRobotMsg()
        {
        }

        public static final Codec<Ros2Xarm_msgsMsgRobotMsg> CODEC = new Codec<Ros2Xarm_msgsMsgRobotMsg>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/msg/RobotMsg.
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
            public byte[] encode(Ros2Xarm_msgsMsgRobotMsg value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsMsgRobotMsg(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/msg/RobotMsg.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing
             * a complete value. Returned nested values own their storage and retain every original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
             */
            public Ros2Xarm_msgsMsgRobotMsg decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsMsgRobotMsg value = readRos2Xarm_msgsMsgRobotMsg(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsMsgRobotMsg(Codecs.Writer writer, Ros2Xarm_msgsMsgRobotMsg value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Std_msgsMsgHeader part0 = value.header;

        writeRos2Std_msgsMsgHeader(writer, part0);
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
    private static Ros2Xarm_msgsMsgRobotMsg readRos2Xarm_msgsMsgRobotMsg(Codecs.Reader reader)
    {
        Ros2Xarm_msgsMsgRobotMsg value = new Ros2Xarm_msgsMsgRobotMsg();
        value.header = readRos2Std_msgsMsgHeader(reader);
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
     * @brief Preserve all original xarm_msgs/srv/BioGripperCtrl_Request fields.
     * @details 3 ordered fields, canonical extent 7..7 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros2Xarm_msgsSrvBioGripperCtrl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/BioGripperCtrl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7eccf0c454f9b64aae93f91d23083b3b5121f540b0d0406142ea7e234a2f634f";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;
        /**
         * @brief Original xarm_msgs/srv/BioGripperCtrl_Request.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;
        /**
         * @brief Original xarm_msgs/srv/BioGripperCtrl_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/BioGripperCtrl_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x40a00000);

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
        public Ros2Xarm_msgsSrvBioGripperCtrl_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvBioGripperCtrl_Request> CODEC = new Codec<Ros2Xarm_msgsSrvBioGripperCtrl_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperCtrl_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvBioGripperCtrl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvBioGripperCtrl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperCtrl_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvBioGripperCtrl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvBioGripperCtrl_Request value = readRos2Xarm_msgsSrvBioGripperCtrl_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvBioGripperCtrl_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvBioGripperCtrl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.speed;
        writer.integer(part0, 2, true);
        boolean part1 = value.wait;
        writer.integer(part1 ? 1 : 0, 1, false);
        float part2 = value.timeout;
        writer.f32(part2);
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
    private static Ros2Xarm_msgsSrvBioGripperCtrl_Request readRos2Xarm_msgsSrvBioGripperCtrl_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvBioGripperCtrl_Request value = new Ros2Xarm_msgsSrvBioGripperCtrl_Request();
        value.speed = (short)reader.integer(2, true);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvBioGripperCtrl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/BioGripperCtrl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c72e0d7eb90ef20e8f7f521346886fc558547a1357a7915058d0e47c238f316a";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/BioGripperCtrl_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/BioGripperCtrl_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvBioGripperCtrl_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvBioGripperCtrl_Response> CODEC = new Codec<Ros2Xarm_msgsSrvBioGripperCtrl_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperCtrl_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvBioGripperCtrl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvBioGripperCtrl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperCtrl_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvBioGripperCtrl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvBioGripperCtrl_Response value = readRos2Xarm_msgsSrvBioGripperCtrl_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvBioGripperCtrl_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvBioGripperCtrl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvBioGripperCtrl_Response readRos2Xarm_msgsSrvBioGripperCtrl_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvBioGripperCtrl_Response value = new Ros2Xarm_msgsSrvBioGripperCtrl_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvBioGripperEnable_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/BioGripperEnable_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_611333734053d9a2c9d3f776be73081c9ddcaaf435d927e1c87ff9b74f12eb43";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        /**
         * @brief Original xarm_msgs/srv/BioGripperEnable_Request.enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean enable = false;
        /**
         * @brief Original xarm_msgs/srv/BioGripperEnable_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/BioGripperEnable_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x40400000);

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
        public Ros2Xarm_msgsSrvBioGripperEnable_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvBioGripperEnable_Request> CODEC = new Codec<Ros2Xarm_msgsSrvBioGripperEnable_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperEnable_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvBioGripperEnable_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvBioGripperEnable_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperEnable_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvBioGripperEnable_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvBioGripperEnable_Request value = readRos2Xarm_msgsSrvBioGripperEnable_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvBioGripperEnable_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvBioGripperEnable_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.enable;
        writer.integer(part0 ? 1 : 0, 1, false);
        boolean part1 = value.wait;
        writer.integer(part1 ? 1 : 0, 1, false);
        float part2 = value.timeout;
        writer.f32(part2);
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
    private static Ros2Xarm_msgsSrvBioGripperEnable_Request readRos2Xarm_msgsSrvBioGripperEnable_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvBioGripperEnable_Request value = new Ros2Xarm_msgsSrvBioGripperEnable_Request();
        value.enable = readBool(reader);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvBioGripperEnable_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/BioGripperEnable_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_95ffb8f48b2e1bf41855513b3234b6a7b070e0d58d5a07d98fd7de4454034586";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/BioGripperEnable_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/BioGripperEnable_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvBioGripperEnable_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvBioGripperEnable_Response> CODEC = new Codec<Ros2Xarm_msgsSrvBioGripperEnable_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/BioGripperEnable_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvBioGripperEnable_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvBioGripperEnable_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/BioGripperEnable_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvBioGripperEnable_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvBioGripperEnable_Response value = readRos2Xarm_msgsSrvBioGripperEnable_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvBioGripperEnable_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvBioGripperEnable_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvBioGripperEnable_Response readRos2Xarm_msgsSrvBioGripperEnable_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvBioGripperEnable_Response value = new Ros2Xarm_msgsSrvBioGripperEnable_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvCall_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/Call_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6646b9fc8c0050e5c56cf918988e8cf8d7c633aabece1be11ec515f1ca2f837d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvCall_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvCall_Request> CODEC = new Codec<Ros2Xarm_msgsSrvCall_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/Call_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvCall_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvCall_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/Call_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvCall_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvCall_Request value = readRos2Xarm_msgsSrvCall_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvCall_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvCall_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvCall_Request readRos2Xarm_msgsSrvCall_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvCall_Request value = new Ros2Xarm_msgsSrvCall_Request();
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
    public static final class Ros2Xarm_msgsSrvCall_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/Call_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c41e249f4ee21ea39233597918f3204e3a276e70c67b120b164c9cd3852c19da";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/srv/Call_Response.ret field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int ret = 0;
        /**
         * @brief Original xarm_msgs/srv/Call_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvCall_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvCall_Response> CODEC = new Codec<Ros2Xarm_msgsSrvCall_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/Call_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvCall_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvCall_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/Call_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvCall_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvCall_Response value = readRos2Xarm_msgsSrvCall_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvCall_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvCall_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.ret;
        writer.integer(part0, 4, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvCall_Response readRos2Xarm_msgsSrvCall_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvCall_Response value = new Ros2Xarm_msgsSrvCall_Response();
        value.ret = (int)reader.integer(4, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvFtAdmittanceParams_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtAdmittanceParams_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1840d594fd4b929bc350ebaef47f43840937c445b24f4f22371c953323de8e92";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 466;
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Request.coord field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short coord = 0;
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Request.c_axis field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] c_axis = new short[0];
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Request.m field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] m = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Request.k field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] k = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Request.b field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] b = new float[0];

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
        public Ros2Xarm_msgsSrvFtAdmittanceParams_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtAdmittanceParams_Request> CODEC = new Codec<Ros2Xarm_msgsSrvFtAdmittanceParams_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtAdmittanceParams_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtAdmittanceParams_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtAdmittanceParams_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtAdmittanceParams_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtAdmittanceParams_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtAdmittanceParams_Request value = readRos2Xarm_msgsSrvFtAdmittanceParams_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtAdmittanceParams_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvFtAdmittanceParams_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.coord;
        writer.integer(part0, 2, true);
        short[] part1 = value.c_axis;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 2, true);
        }
        float[] part2 = value.m;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float[] part3 = value.k;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
        }
        float[] part4 = value.b;
        if(part4 == null || part4.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f32(part4[i]);
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
    private static Ros2Xarm_msgsSrvFtAdmittanceParams_Request readRos2Xarm_msgsSrvFtAdmittanceParams_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtAdmittanceParams_Request value = new Ros2Xarm_msgsSrvFtAdmittanceParams_Request();
        value.coord = (short)reader.integer(2, true);
        value.c_axis = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.c_axis.length; ++i)
            value.c_axis[i] = (short)reader.integer(2, true);
        value.m = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.m.length; ++i)
            value.m[i] = reader.f32();
        value.k = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.k.length; ++i)
            value.k[i] = reader.f32();
        value.b = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.b.length; ++i)
            value.b[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvFtAdmittanceParams_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtAdmittanceParams_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a91b64c60079cb6473e500e18d2da474d1fabc27f8c9cc7690f22b74531cbf07";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/FtAdmittanceParams_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvFtAdmittanceParams_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtAdmittanceParams_Response> CODEC = new Codec<Ros2Xarm_msgsSrvFtAdmittanceParams_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtAdmittanceParams_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtAdmittanceParams_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtAdmittanceParams_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtAdmittanceParams_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtAdmittanceParams_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtAdmittanceParams_Response value = readRos2Xarm_msgsSrvFtAdmittanceParams_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtAdmittanceParams_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvFtAdmittanceParams_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvFtAdmittanceParams_Response readRos2Xarm_msgsSrvFtAdmittanceParams_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtAdmittanceParams_Response value = new Ros2Xarm_msgsSrvFtAdmittanceParams_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvFtCaliLoad_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtCaliLoad_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1132f426ed1335b5d92054df6693f0f5d5e5b5b9b21aa4ef19a65c293fa8394f";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 149;
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Request.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Request.association_setting_tcp_load field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean association_setting_tcp_load = false;
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Request.m field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float m = Float.intBitsToFloat(0x3e8a3d71);
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Request.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = Float.intBitsToFloat(0xc1880000);
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Request.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = Float.intBitsToFloat(0x41100000);
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Request.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = Float.intBitsToFloat(0x413ccccd);

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
        public Ros2Xarm_msgsSrvFtCaliLoad_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtCaliLoad_Request> CODEC = new Codec<Ros2Xarm_msgsSrvFtCaliLoad_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtCaliLoad_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtCaliLoad_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtCaliLoad_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtCaliLoad_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtCaliLoad_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtCaliLoad_Request value = readRos2Xarm_msgsSrvFtCaliLoad_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtCaliLoad_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvFtCaliLoad_Request value)
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
        float part2 = value.m;
        writer.f32(part2);
        float part3 = value.x;
        writer.f32(part3);
        float part4 = value.y;
        writer.f32(part4);
        float part5 = value.z;
        writer.f32(part5);
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
    private static Ros2Xarm_msgsSrvFtCaliLoad_Request readRos2Xarm_msgsSrvFtCaliLoad_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtCaliLoad_Request value = new Ros2Xarm_msgsSrvFtCaliLoad_Request();
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
        value.association_setting_tcp_load = readBool(reader);
        value.m = reader.f32();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvFtCaliLoad_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtCaliLoad_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_990034f596c4a8e859c06c438635306e2938e763b5bea45019cdf5223347e4e7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/FtCaliLoad_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvFtCaliLoad_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtCaliLoad_Response> CODEC = new Codec<Ros2Xarm_msgsSrvFtCaliLoad_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtCaliLoad_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtCaliLoad_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtCaliLoad_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtCaliLoad_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtCaliLoad_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtCaliLoad_Response value = readRos2Xarm_msgsSrvFtCaliLoad_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtCaliLoad_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvFtCaliLoad_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvFtCaliLoad_Response readRos2Xarm_msgsSrvFtCaliLoad_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtCaliLoad_Response value = new Ros2Xarm_msgsSrvFtCaliLoad_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvFtForceConfig_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtForceConfig_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b337f5e2eb604e3057ca3378f3e1cb2b2032bac9d8c60e6b64ac85548b94e63";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 334;
        /**
         * @brief Original xarm_msgs/srv/FtForceConfig_Request.coord field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short coord = 0;
        /**
         * @brief Original xarm_msgs/srv/FtForceConfig_Request.c_axis field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] c_axis = new short[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceConfig_Request.ref field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] ref = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceConfig_Request.limits field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] limits = new float[0];

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
        public Ros2Xarm_msgsSrvFtForceConfig_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtForceConfig_Request> CODEC = new Codec<Ros2Xarm_msgsSrvFtForceConfig_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceConfig_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtForceConfig_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtForceConfig_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceConfig_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtForceConfig_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtForceConfig_Request value = readRos2Xarm_msgsSrvFtForceConfig_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtForceConfig_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvFtForceConfig_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.coord;
        writer.integer(part0, 2, true);
        short[] part1 = value.c_axis;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 2, true);
        }
        float[] part2 = value.ref;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float[] part3 = value.limits;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
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
    private static Ros2Xarm_msgsSrvFtForceConfig_Request readRos2Xarm_msgsSrvFtForceConfig_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtForceConfig_Request value = new Ros2Xarm_msgsSrvFtForceConfig_Request();
        value.coord = (short)reader.integer(2, true);
        value.c_axis = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.c_axis.length; ++i)
            value.c_axis[i] = (short)reader.integer(2, true);
        value.ref = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.ref.length; ++i)
            value.ref[i] = reader.f32();
        value.limits = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.limits.length; ++i)
            value.limits[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvFtForceConfig_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtForceConfig_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_43ef4f729fcc96502a26261afb70e25a7cdd02d03097d93099b691dec28d59dc";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/FtForceConfig_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/FtForceConfig_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvFtForceConfig_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtForceConfig_Response> CODEC = new Codec<Ros2Xarm_msgsSrvFtForceConfig_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceConfig_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtForceConfig_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtForceConfig_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceConfig_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtForceConfig_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtForceConfig_Response value = readRos2Xarm_msgsSrvFtForceConfig_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtForceConfig_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvFtForceConfig_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvFtForceConfig_Response readRos2Xarm_msgsSrvFtForceConfig_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtForceConfig_Response value = new Ros2Xarm_msgsSrvFtForceConfig_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvFtForceParams_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtForceParams_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_66266e56d45f660d2750e881060e5a6655e5e35d497386ea1c7559517c2d6b08";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 862;
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.coord field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short coord = 0;
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.c_axis field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] c_axis = new short[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.ref field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] ref = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.limits field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] limits = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.kp field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] kp = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.ki field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] ki = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.kd field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] kd = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Request.xe_limit field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] xe_limit = new float[0];

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
        public Ros2Xarm_msgsSrvFtForceParams_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtForceParams_Request> CODEC = new Codec<Ros2Xarm_msgsSrvFtForceParams_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceParams_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtForceParams_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtForceParams_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceParams_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtForceParams_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtForceParams_Request value = readRos2Xarm_msgsSrvFtForceParams_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtForceParams_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvFtForceParams_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.coord;
        writer.integer(part0, 2, true);
        short[] part1 = value.c_axis;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 2, true);
        }
        float[] part2 = value.ref;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float[] part3 = value.limits;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
        }
        float[] part4 = value.kp;
        if(part4 == null || part4.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f32(part4[i]);
        }
        float[] part5 = value.ki;
        if(part5 == null || part5.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.f32(part5[i]);
        }
        float[] part6 = value.kd;
        if(part6 == null || part6.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part6.length, 4, false);
        for(int i = 0; i < part6.length; ++i)
        {
            writer.f32(part6[i]);
        }
        float[] part7 = value.xe_limit;
        if(part7 == null || part7.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part7.length, 4, false);
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f32(part7[i]);
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
    private static Ros2Xarm_msgsSrvFtForceParams_Request readRos2Xarm_msgsSrvFtForceParams_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtForceParams_Request value = new Ros2Xarm_msgsSrvFtForceParams_Request();
        value.coord = (short)reader.integer(2, true);
        value.c_axis = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.c_axis.length; ++i)
            value.c_axis[i] = (short)reader.integer(2, true);
        value.ref = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.ref.length; ++i)
            value.ref[i] = reader.f32();
        value.limits = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.limits.length; ++i)
            value.limits[i] = reader.f32();
        value.kp = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.kp.length; ++i)
            value.kp[i] = reader.f32();
        value.ki = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.ki.length; ++i)
            value.ki[i] = reader.f32();
        value.kd = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.kd.length; ++i)
            value.kd[i] = reader.f32();
        value.xe_limit = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.xe_limit.length; ++i)
            value.xe_limit[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvFtForceParams_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtForceParams_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_573d49b3f36f2111b39ecfabf29154f53dc66975edf7db80725256ed6be9318d";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/FtForceParams_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvFtForceParams_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtForceParams_Response> CODEC = new Codec<Ros2Xarm_msgsSrvFtForceParams_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtForceParams_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtForceParams_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtForceParams_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtForceParams_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtForceParams_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtForceParams_Response value = readRos2Xarm_msgsSrvFtForceParams_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtForceParams_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvFtForceParams_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvFtForceParams_Response readRos2Xarm_msgsSrvFtForceParams_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtForceParams_Response value = new Ros2Xarm_msgsSrvFtForceParams_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvFtForcePid_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtForcePid_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b69ed1d3e81b0b83a498bff16aab71a8f26e472c5e5bc1fad4559e781366b367";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 528;
        /**
         * @brief Original xarm_msgs/srv/FtForcePid_Request.kp field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] kp = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForcePid_Request.ki field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] ki = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForcePid_Request.kd field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] kd = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtForcePid_Request.xe_limit field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] xe_limit = new float[0];

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
        public Ros2Xarm_msgsSrvFtForcePid_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtForcePid_Request> CODEC = new Codec<Ros2Xarm_msgsSrvFtForcePid_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtForcePid_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtForcePid_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtForcePid_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtForcePid_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtForcePid_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtForcePid_Request value = readRos2Xarm_msgsSrvFtForcePid_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtForcePid_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvFtForcePid_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.kp;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float[] part1 = value.ki;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
        float[] part2 = value.kd;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float[] part3 = value.xe_limit;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
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
    private static Ros2Xarm_msgsSrvFtForcePid_Request readRos2Xarm_msgsSrvFtForcePid_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtForcePid_Request value = new Ros2Xarm_msgsSrvFtForcePid_Request();
        value.kp = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.kp.length; ++i)
            value.kp[i] = reader.f32();
        value.ki = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.ki.length; ++i)
            value.ki[i] = reader.f32();
        value.kd = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.kd.length; ++i)
            value.kd[i] = reader.f32();
        value.xe_limit = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.xe_limit.length; ++i)
            value.xe_limit[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvFtForcePid_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtForcePid_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_308d5da22a4445f2b001974907c5b459e5b01ee06fb5029096ae86220e046c89";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/FtForcePid_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/FtForcePid_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvFtForcePid_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtForcePid_Response> CODEC = new Codec<Ros2Xarm_msgsSrvFtForcePid_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtForcePid_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtForcePid_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtForcePid_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtForcePid_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtForcePid_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtForcePid_Response value = readRos2Xarm_msgsSrvFtForcePid_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtForcePid_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvFtForcePid_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvFtForcePid_Response readRos2Xarm_msgsSrvFtForcePid_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtForcePid_Response value = new Ros2Xarm_msgsSrvFtForcePid_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvFtImpedance_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtImpedance_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_66d926f6b7e15bcfc2023215e434d931a77895df36376bb1dfd2cae852c9078d";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 466;
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Request.coord field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short coord = 0;
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Request.c_axis field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] c_axis = new short[0];
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Request.m field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] m = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Request.k field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] k = new float[0];
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Request.b field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] b = new float[0];

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
        public Ros2Xarm_msgsSrvFtImpedance_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtImpedance_Request> CODEC = new Codec<Ros2Xarm_msgsSrvFtImpedance_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtImpedance_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtImpedance_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtImpedance_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtImpedance_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtImpedance_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtImpedance_Request value = readRos2Xarm_msgsSrvFtImpedance_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtImpedance_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvFtImpedance_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.coord;
        writer.integer(part0, 2, true);
        short[] part1 = value.c_axis;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 2, true);
        }
        float[] part2 = value.m;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float[] part3 = value.k;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
        }
        float[] part4 = value.b;
        if(part4 == null || part4.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.f32(part4[i]);
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
    private static Ros2Xarm_msgsSrvFtImpedance_Request readRos2Xarm_msgsSrvFtImpedance_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtImpedance_Request value = new Ros2Xarm_msgsSrvFtImpedance_Request();
        value.coord = (short)reader.integer(2, true);
        value.c_axis = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.c_axis.length; ++i)
            value.c_axis[i] = (short)reader.integer(2, true);
        value.m = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.m.length; ++i)
            value.m[i] = reader.f32();
        value.k = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.k.length; ++i)
            value.k[i] = reader.f32();
        value.b = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.b.length; ++i)
            value.b[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvFtImpedance_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/FtImpedance_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47e50f8950f42a2ee65ea8e760b98a78d4cd57729f528785c8307f072ad64cdb";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/FtImpedance_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvFtImpedance_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvFtImpedance_Response> CODEC = new Codec<Ros2Xarm_msgsSrvFtImpedance_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/FtImpedance_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvFtImpedance_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvFtImpedance_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/FtImpedance_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvFtImpedance_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvFtImpedance_Response value = readRos2Xarm_msgsSrvFtImpedance_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvFtImpedance_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvFtImpedance_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvFtImpedance_Response readRos2Xarm_msgsSrvFtImpedance_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvFtImpedance_Response value = new Ros2Xarm_msgsSrvFtImpedance_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvGetAnalogIO_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetAnalogIO_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_41f0b8344aedb31609753c92a949f995b9b36e36f4bd45080e7c806e4977d3c2";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/srv/GetAnalogIO_Request.ionum field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ionum = 0;

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
        public Ros2Xarm_msgsSrvGetAnalogIO_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetAnalogIO_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetAnalogIO_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetAnalogIO_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetAnalogIO_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetAnalogIO_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetAnalogIO_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetAnalogIO_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetAnalogIO_Request value = readRos2Xarm_msgsSrvGetAnalogIO_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetAnalogIO_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetAnalogIO_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ionum;
        writer.integer(part0, 2, true);
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
    private static Ros2Xarm_msgsSrvGetAnalogIO_Request readRos2Xarm_msgsSrvGetAnalogIO_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetAnalogIO_Request value = new Ros2Xarm_msgsSrvGetAnalogIO_Request();
        value.ionum = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvGetAnalogIO_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetAnalogIO_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c60eab1570b682fa2a1de07edbcf04155d63abf98cfc6d0aa3ebfa39445d5bbc";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;
        /**
         * @brief Original xarm_msgs/srv/GetAnalogIO_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetAnalogIO_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetAnalogIO_Response.data field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float data = 0;

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
        public Ros2Xarm_msgsSrvGetAnalogIO_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetAnalogIO_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetAnalogIO_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetAnalogIO_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetAnalogIO_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetAnalogIO_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetAnalogIO_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetAnalogIO_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetAnalogIO_Response value = readRos2Xarm_msgsSrvGetAnalogIO_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetAnalogIO_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetAnalogIO_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        float part2 = value.data;
        writer.f32(part2);
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
    private static Ros2Xarm_msgsSrvGetAnalogIO_Response readRos2Xarm_msgsSrvGetAnalogIO_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetAnalogIO_Response value = new Ros2Xarm_msgsSrvGetAnalogIO_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.data = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvGetDigitalIO_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetDigitalIO_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_46633e09d5231d69307a8dbdbd90c2d81ef6ad279b961da81b2af86fed51f188";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvGetDigitalIO_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetDigitalIO_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetDigitalIO_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetDigitalIO_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetDigitalIO_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetDigitalIO_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetDigitalIO_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetDigitalIO_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetDigitalIO_Request value = readRos2Xarm_msgsSrvGetDigitalIO_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetDigitalIO_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetDigitalIO_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvGetDigitalIO_Request readRos2Xarm_msgsSrvGetDigitalIO_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetDigitalIO_Request value = new Ros2Xarm_msgsSrvGetDigitalIO_Request();
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
    public static final class Ros2Xarm_msgsSrvGetDigitalIO_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetDigitalIO_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_325fb8d7a911dfc1746a289380e295d6e153ac2fad2018932ce7cd431511985c";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 330;
        /**
         * @brief Original xarm_msgs/srv/GetDigitalIO_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetDigitalIO_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetDigitalIO_Response.digitals field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] digitals = new short[0];

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
        public Ros2Xarm_msgsSrvGetDigitalIO_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetDigitalIO_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetDigitalIO_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetDigitalIO_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetDigitalIO_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetDigitalIO_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetDigitalIO_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetDigitalIO_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetDigitalIO_Response value = readRos2Xarm_msgsSrvGetDigitalIO_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetDigitalIO_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetDigitalIO_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        short[] part2 = value.digitals;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 2, true);
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
    private static Ros2Xarm_msgsSrvGetDigitalIO_Response readRos2Xarm_msgsSrvGetDigitalIO_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetDigitalIO_Response value = new Ros2Xarm_msgsSrvGetDigitalIO_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.digitals = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.digitals.length; ++i)
            value.digitals[i] = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvGetFloat32_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetFloat32_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6a3aa3004f481bde62974b72be6157b1e388e6097733474e3fb11855f3aa5c84";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvGetFloat32_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetFloat32_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetFloat32_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetFloat32_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetFloat32_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetFloat32_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetFloat32_Request value = readRos2Xarm_msgsSrvGetFloat32_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetFloat32_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetFloat32_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvGetFloat32_Request readRos2Xarm_msgsSrvGetFloat32_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetFloat32_Request value = new Ros2Xarm_msgsSrvGetFloat32_Request();
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
    public static final class Ros2Xarm_msgsSrvGetFloat32_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetFloat32_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e43f1551258cbf7bae19089eade8321e8d565c0783551e016dc73ed410c9e3f2";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;
        /**
         * @brief Original xarm_msgs/srv/GetFloat32_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetFloat32_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetFloat32_Response.data field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float data = 0;

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
        public Ros2Xarm_msgsSrvGetFloat32_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetFloat32_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetFloat32_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetFloat32_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetFloat32_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetFloat32_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetFloat32_Response value = readRos2Xarm_msgsSrvGetFloat32_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetFloat32_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetFloat32_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        float part2 = value.data;
        writer.f32(part2);
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
    private static Ros2Xarm_msgsSrvGetFloat32_Response readRos2Xarm_msgsSrvGetFloat32_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetFloat32_Response value = new Ros2Xarm_msgsSrvGetFloat32_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.data = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvGetFloat32List_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetFloat32List_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_36ec63da8ede627478e174c1f1dd75926973d3b1d57a6f03c05ffac8e4b649a3";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvGetFloat32List_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetFloat32List_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetFloat32List_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32List_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetFloat32List_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetFloat32List_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32List_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetFloat32List_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetFloat32List_Request value = readRos2Xarm_msgsSrvGetFloat32List_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetFloat32List_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetFloat32List_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvGetFloat32List_Request readRos2Xarm_msgsSrvGetFloat32List_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetFloat32List_Request value = new Ros2Xarm_msgsSrvGetFloat32List_Request();
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
    public static final class Ros2Xarm_msgsSrvGetFloat32List_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetFloat32List_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f30d581b8aa511578c21a3db64c818693b06268b7916cc16e927fc329f40e8d4";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;
        /**
         * @brief Original xarm_msgs/srv/GetFloat32List_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetFloat32List_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetFloat32List_Response.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];

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
        public Ros2Xarm_msgsSrvGetFloat32List_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetFloat32List_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetFloat32List_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetFloat32List_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetFloat32List_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetFloat32List_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetFloat32List_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetFloat32List_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetFloat32List_Response value = readRos2Xarm_msgsSrvGetFloat32List_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetFloat32List_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetFloat32List_Response value)
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
    private static Ros2Xarm_msgsSrvGetFloat32List_Response readRos2Xarm_msgsSrvGetFloat32List_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetFloat32List_Response value = new Ros2Xarm_msgsSrvGetFloat32List_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvGetInt16_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt16_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_85fe1186c4f0887d4ac9cf3f0d690c32ba3ec895bef3d49b2199527b53627865";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvGetInt16_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt16_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt16_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt16_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt16_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt16_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt16_Request value = readRos2Xarm_msgsSrvGetInt16_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt16_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt16_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvGetInt16_Request readRos2Xarm_msgsSrvGetInt16_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt16_Request value = new Ros2Xarm_msgsSrvGetInt16_Request();
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
    public static final class Ros2Xarm_msgsSrvGetInt16_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt16_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c29870d9604ae0d220de53bb6768681bfbb120171af61c36e45b9a660fd8f1a9";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/srv/GetInt16_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetInt16_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetInt16_Response.data field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short data = 0;

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
        public Ros2Xarm_msgsSrvGetInt16_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt16_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt16_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt16_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt16_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt16_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt16_Response value = readRos2Xarm_msgsSrvGetInt16_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt16_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt16_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        short part2 = value.data;
        writer.integer(part2, 2, true);
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
    private static Ros2Xarm_msgsSrvGetInt16_Response readRos2Xarm_msgsSrvGetInt16_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt16_Response value = new Ros2Xarm_msgsSrvGetInt16_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.data = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvGetInt16List_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt16List_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ca95d35c75e9843b2c9d27bd94e34e336641255ad5dd2b0ff22f8a6efb36db2d";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvGetInt16List_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt16List_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt16List_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16List_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt16List_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt16List_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16List_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt16List_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt16List_Request value = readRos2Xarm_msgsSrvGetInt16List_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt16List_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt16List_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvGetInt16List_Request readRos2Xarm_msgsSrvGetInt16List_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt16List_Request value = new Ros2Xarm_msgsSrvGetInt16List_Request();
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
    public static final class Ros2Xarm_msgsSrvGetInt16List_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt16List_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d35b6ac9d82960e32fd035554dc021e8f3e592259c1db9a714e9b575cc611139";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 330;
        /**
         * @brief Original xarm_msgs/srv/GetInt16List_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetInt16List_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetInt16List_Response.datas field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] datas = new short[0];

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
        public Ros2Xarm_msgsSrvGetInt16List_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt16List_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt16List_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt16List_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt16List_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt16List_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt16List_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt16List_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt16List_Response value = readRos2Xarm_msgsSrvGetInt16List_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt16List_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt16List_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        short[] part2 = value.datas;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 2, true);
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
    private static Ros2Xarm_msgsSrvGetInt16List_Response readRos2Xarm_msgsSrvGetInt16List_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt16List_Response value = new Ros2Xarm_msgsSrvGetInt16List_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.datas = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvGetInt32_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt32_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e7dbcdb905c89364b288e23c985ba73394529613bdb2f4a74b10d811203f0dfe";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvGetInt32_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt32_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt32_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt32_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt32_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt32_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt32_Request value = readRos2Xarm_msgsSrvGetInt32_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt32_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt32_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvGetInt32_Request readRos2Xarm_msgsSrvGetInt32_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt32_Request value = new Ros2Xarm_msgsSrvGetInt32_Request();
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
    public static final class Ros2Xarm_msgsSrvGetInt32_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt32_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9834d69ebc7644d3d2feee8f4bcb20effbc15931709be7264ea04bd88b2686f2";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;
        /**
         * @brief Original xarm_msgs/srv/GetInt32_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetInt32_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetInt32_Response.data field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int data = 0;

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
        public Ros2Xarm_msgsSrvGetInt32_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt32_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt32_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt32_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt32_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt32_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt32_Response value = readRos2Xarm_msgsSrvGetInt32_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt32_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt32_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int part2 = value.data;
        writer.integer(part2, 4, true);
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
    private static Ros2Xarm_msgsSrvGetInt32_Response readRos2Xarm_msgsSrvGetInt32_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt32_Response value = new Ros2Xarm_msgsSrvGetInt32_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.data = (int)reader.integer(4, true);
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
    public static final class Ros2Xarm_msgsSrvGetInt32ByType_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt32ByType_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5d4ba9b5c23452f3b203c66e3cbc5880b99cac6b9ec9ce3acac96414013f993a";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/srv/GetInt32ByType_Request.type field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short type = 0;

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
        public Ros2Xarm_msgsSrvGetInt32ByType_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt32ByType_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt32ByType_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32ByType_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt32ByType_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt32ByType_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32ByType_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt32ByType_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt32ByType_Request value = readRos2Xarm_msgsSrvGetInt32ByType_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt32ByType_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt32ByType_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.type;
        writer.integer(part0, 2, true);
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
    private static Ros2Xarm_msgsSrvGetInt32ByType_Request readRos2Xarm_msgsSrvGetInt32ByType_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt32ByType_Request value = new Ros2Xarm_msgsSrvGetInt32ByType_Request();
        value.type = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvGetInt32ByType_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetInt32ByType_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6cabb4a9a840ef62c4f8a2da7da917410a97a8aafcf78e361cc928a7cdbe5c3a";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 266;
        /**
         * @brief Original xarm_msgs/srv/GetInt32ByType_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetInt32ByType_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetInt32ByType_Response.data field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int data = 0;

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
        public Ros2Xarm_msgsSrvGetInt32ByType_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetInt32ByType_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetInt32ByType_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetInt32ByType_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetInt32ByType_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetInt32ByType_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetInt32ByType_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetInt32ByType_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetInt32ByType_Response value = readRos2Xarm_msgsSrvGetInt32ByType_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetInt32ByType_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetInt32ByType_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int part2 = value.data;
        writer.integer(part2, 4, true);
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
    private static Ros2Xarm_msgsSrvGetInt32ByType_Response readRos2Xarm_msgsSrvGetInt32ByType_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetInt32ByType_Response value = new Ros2Xarm_msgsSrvGetInt32ByType_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.data = (int)reader.integer(4, true);
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
    public static final class Ros2Xarm_msgsSrvGetSetModbusData_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetSetModbusData_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f9cc9e1e5635a37023cc50f66930072f3d61bcfd58f0d8ebb0218c4eb3a035cd";
        public static final int MIN_WIRE_BYTES = 11, MAX_WIRE_BYTES = 4107;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Request.modbus_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] modbus_data = new int[0];
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Request.modbus_length field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short modbus_length = 0;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Request.ret_length field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret_length = 0;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Request.host_id field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int host_id = 9;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Request.is_transparent_transmission field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_transparent_transmission = false;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Request.use_503_port field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean use_503_port = false;

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
        public Ros2Xarm_msgsSrvGetSetModbusData_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetSetModbusData_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGetSetModbusData_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetSetModbusData_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetSetModbusData_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetSetModbusData_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetSetModbusData_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetSetModbusData_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetSetModbusData_Request value = readRos2Xarm_msgsSrvGetSetModbusData_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetSetModbusData_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGetSetModbusData_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int[] part0 = value.modbus_data;
        if(part0 == null || part0.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 1, false);
        }
        short part1 = value.modbus_length;
        writer.integer(part1, 2, true);
        short part2 = value.ret_length;
        writer.integer(part2, 2, true);
        int part3 = value.host_id;
        writer.integer(part3, 1, false);
        boolean part4 = value.is_transparent_transmission;
        writer.integer(part4 ? 1 : 0, 1, false);
        boolean part5 = value.use_503_port;
        writer.integer(part5 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvGetSetModbusData_Request readRos2Xarm_msgsSrvGetSetModbusData_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetSetModbusData_Request value = new Ros2Xarm_msgsSrvGetSetModbusData_Request();
        value.modbus_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.modbus_data.length; ++i)
            value.modbus_data[i] = (int)reader.integer(1, false);
        value.modbus_length = (short)reader.integer(2, true);
        value.ret_length = (short)reader.integer(2, true);
        value.host_id = (int)reader.integer(1, false);
        value.is_transparent_transmission = readBool(reader);
        value.use_503_port = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvGetSetModbusData_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GetSetModbusData_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7367e58167bc61c209e7a28ee1a4d5809525cb11cbe48ee972724b5f0536b5b7";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/GetSetModbusData_Response.ret_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] ret_data = new int[0];

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
        public Ros2Xarm_msgsSrvGetSetModbusData_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGetSetModbusData_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGetSetModbusData_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GetSetModbusData_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGetSetModbusData_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGetSetModbusData_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GetSetModbusData_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGetSetModbusData_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGetSetModbusData_Response value = readRos2Xarm_msgsSrvGetSetModbusData_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGetSetModbusData_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGetSetModbusData_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.ret_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros2Xarm_msgsSrvGetSetModbusData_Response readRos2Xarm_msgsSrvGetSetModbusData_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGetSetModbusData_Response value = new Ros2Xarm_msgsSrvGetSetModbusData_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.ret_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.ret_data.length; ++i)
            value.ret_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvGripperMove_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GripperMove_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_54c0e0eeb956e5ab0b1bd31aabc67493ee2bdb9b7028f41b73eb9d8b1e568322";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        /**
         * @brief Original xarm_msgs/srv/GripperMove_Request.pos field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float pos = 0;
        /**
         * @brief Original xarm_msgs/srv/GripperMove_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/GripperMove_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x41200000);

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
        public Ros2Xarm_msgsSrvGripperMove_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGripperMove_Request> CODEC = new Codec<Ros2Xarm_msgsSrvGripperMove_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GripperMove_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvGripperMove_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGripperMove_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GripperMove_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGripperMove_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGripperMove_Request value = readRos2Xarm_msgsSrvGripperMove_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGripperMove_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvGripperMove_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.pos;
        writer.f32(part0);
        boolean part1 = value.wait;
        writer.integer(part1 ? 1 : 0, 1, false);
        float part2 = value.timeout;
        writer.f32(part2);
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
    private static Ros2Xarm_msgsSrvGripperMove_Request readRos2Xarm_msgsSrvGripperMove_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGripperMove_Request value = new Ros2Xarm_msgsSrvGripperMove_Request();
        value.pos = reader.f32();
        value.wait = readBool(reader);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvGripperMove_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/GripperMove_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1c64a50983aaf8dd20d3a400be9d69242f52c6ad7f369ea54dd19be931dc80a1";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/GripperMove_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/GripperMove_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvGripperMove_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvGripperMove_Response> CODEC = new Codec<Ros2Xarm_msgsSrvGripperMove_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/GripperMove_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvGripperMove_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvGripperMove_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/GripperMove_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvGripperMove_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvGripperMove_Response value = readRos2Xarm_msgsSrvGripperMove_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvGripperMove_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvGripperMove_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvGripperMove_Response readRos2Xarm_msgsSrvGripperMove_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvGripperMove_Response value = new Ros2Xarm_msgsSrvGripperMove_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvIdenLoad_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/IdenLoad_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_51918f23cc7db51b63e91cca012e657836528d8557a4479b287cd9631015a79a";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/srv/IdenLoad_Request.estimated_mass field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float estimated_mass = Float.intBitsToFloat(0x00000000);

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
        public Ros2Xarm_msgsSrvIdenLoad_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvIdenLoad_Request> CODEC = new Codec<Ros2Xarm_msgsSrvIdenLoad_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/IdenLoad_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvIdenLoad_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvIdenLoad_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/IdenLoad_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvIdenLoad_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvIdenLoad_Request value = readRos2Xarm_msgsSrvIdenLoad_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvIdenLoad_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvIdenLoad_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.estimated_mass;
        writer.f32(part0);
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
    private static Ros2Xarm_msgsSrvIdenLoad_Request readRos2Xarm_msgsSrvIdenLoad_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvIdenLoad_Request value = new Ros2Xarm_msgsSrvIdenLoad_Request();
        value.estimated_mass = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvIdenLoad_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/IdenLoad_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3934143122064209bd30159d9972b5cfd529728f3f95785c9641d20790e4f64e";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 394;
        /**
         * @brief Original xarm_msgs/srv/IdenLoad_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/IdenLoad_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/IdenLoad_Response.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];

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
        public Ros2Xarm_msgsSrvIdenLoad_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvIdenLoad_Response> CODEC = new Codec<Ros2Xarm_msgsSrvIdenLoad_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/IdenLoad_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvIdenLoad_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvIdenLoad_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/IdenLoad_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvIdenLoad_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvIdenLoad_Response value = readRos2Xarm_msgsSrvIdenLoad_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvIdenLoad_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvIdenLoad_Response value)
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
    private static Ros2Xarm_msgsSrvIdenLoad_Response readRos2Xarm_msgsSrvIdenLoad_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvIdenLoad_Response value = new Ros2Xarm_msgsSrvIdenLoad_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearMotorBackOrigin_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c9d87b79119e9fd9efcf7cd7bdbe40f3e3a2244b1c97149da5c2ff93163a6b45";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorBackOrigin_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorBackOrigin_Request.auto_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean auto_enable = true;

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
        public Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request> CODEC = new Codec<Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorBackOrigin_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorBackOrigin_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value = readRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.wait;
        writer.integer(part0 ? 1 : 0, 1, false);
        boolean part1 = value.auto_enable;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request readRos2Xarm_msgsSrvLinearMotorBackOrigin_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request value = new Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request();
        value.wait = readBool(reader);
        value.auto_enable = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearMotorBackOrigin_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_159fa7c79b6d14e044085bc7969a984af68bfab04cfd092a4982b2de24e9e02d";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorBackOrigin_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorBackOrigin_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response> CODEC = new Codec<Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorBackOrigin_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorBackOrigin_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value = readRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response readRos2Xarm_msgsSrvLinearMotorBackOrigin_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response value = new Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvLinearMotorSetPos_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearMotorSetPos_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5babc4a61d86991a7be456e48f86c175f0189b96e5506b779adcbe6e4ece97dd";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Request.pos field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short pos = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Request.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x42c80000);
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Request.auto_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean auto_enable = true;

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
        public Ros2Xarm_msgsSrvLinearMotorSetPos_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearMotorSetPos_Request> CODEC = new Codec<Ros2Xarm_msgsSrvLinearMotorSetPos_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorSetPos_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearMotorSetPos_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearMotorSetPos_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorSetPos_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearMotorSetPos_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearMotorSetPos_Request value = readRos2Xarm_msgsSrvLinearMotorSetPos_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearMotorSetPos_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearMotorSetPos_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.pos;
        writer.integer(part0, 2, true);
        short part1 = value.speed;
        writer.integer(part1, 2, true);
        boolean part2 = value.wait;
        writer.integer(part2 ? 1 : 0, 1, false);
        float part3 = value.timeout;
        writer.f32(part3);
        boolean part4 = value.auto_enable;
        writer.integer(part4 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvLinearMotorSetPos_Request readRos2Xarm_msgsSrvLinearMotorSetPos_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearMotorSetPos_Request value = new Ros2Xarm_msgsSrvLinearMotorSetPos_Request();
        value.pos = (short)reader.integer(2, true);
        value.speed = (short)reader.integer(2, true);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.auto_enable = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvLinearMotorSetPos_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearMotorSetPos_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f2bc623880b42ee6f94117ecdf846785cac064a2c5e81df5f2ff8c3e9179106d";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearMotorSetPos_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvLinearMotorSetPos_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearMotorSetPos_Response> CODEC = new Codec<Ros2Xarm_msgsSrvLinearMotorSetPos_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearMotorSetPos_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearMotorSetPos_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearMotorSetPos_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearMotorSetPos_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearMotorSetPos_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearMotorSetPos_Response value = readRos2Xarm_msgsSrvLinearMotorSetPos_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearMotorSetPos_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearMotorSetPos_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvLinearMotorSetPos_Response readRos2Xarm_msgsSrvLinearMotorSetPos_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearMotorSetPos_Response value = new Ros2Xarm_msgsSrvLinearMotorSetPos_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearTrackBackOrigin_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_797f71ddda85f463999f437e70aaaf40517fe78dfa0356a640afaffa5154e8d9";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackBackOrigin_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackBackOrigin_Request.auto_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean auto_enable = true;

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
        public Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request> CODEC = new Codec<Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackBackOrigin_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackBackOrigin_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value = readRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.wait;
        writer.integer(part0 ? 1 : 0, 1, false);
        boolean part1 = value.auto_enable;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request readRos2Xarm_msgsSrvLinearTrackBackOrigin_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request value = new Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request();
        value.wait = readBool(reader);
        value.auto_enable = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearTrackBackOrigin_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0881a1e5f823c169ed5d1063e8bd681b8b2f994ebd9bee3e335c47d3bd2db4de";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackBackOrigin_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackBackOrigin_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response> CODEC = new Codec<Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackBackOrigin_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackBackOrigin_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value = readRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response readRos2Xarm_msgsSrvLinearTrackBackOrigin_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response value = new Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvLinearTrackSetPos_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearTrackSetPos_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b73e173d593e64d898e69d32e659ddff1741eaada6af1ae00d9a4c406d9dad62";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 10;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Request.pos field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short pos = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Request.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x42c80000);
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Request.auto_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean auto_enable = true;

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
        public Ros2Xarm_msgsSrvLinearTrackSetPos_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearTrackSetPos_Request> CODEC = new Codec<Ros2Xarm_msgsSrvLinearTrackSetPos_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackSetPos_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearTrackSetPos_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearTrackSetPos_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackSetPos_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearTrackSetPos_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearTrackSetPos_Request value = readRos2Xarm_msgsSrvLinearTrackSetPos_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearTrackSetPos_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearTrackSetPos_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.pos;
        writer.integer(part0, 2, true);
        short part1 = value.speed;
        writer.integer(part1, 2, true);
        boolean part2 = value.wait;
        writer.integer(part2 ? 1 : 0, 1, false);
        float part3 = value.timeout;
        writer.f32(part3);
        boolean part4 = value.auto_enable;
        writer.integer(part4 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvLinearTrackSetPos_Request readRos2Xarm_msgsSrvLinearTrackSetPos_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearTrackSetPos_Request value = new Ros2Xarm_msgsSrvLinearTrackSetPos_Request();
        value.pos = (short)reader.integer(2, true);
        value.speed = (short)reader.integer(2, true);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.auto_enable = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvLinearTrackSetPos_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/LinearTrackSetPos_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_aba9a933b5cde05c0a1d0a44fe404b3c3dadad72aac91b7a7aff04221c6667f7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/LinearTrackSetPos_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvLinearTrackSetPos_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvLinearTrackSetPos_Response> CODEC = new Codec<Ros2Xarm_msgsSrvLinearTrackSetPos_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/LinearTrackSetPos_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvLinearTrackSetPos_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvLinearTrackSetPos_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/LinearTrackSetPos_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvLinearTrackSetPos_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvLinearTrackSetPos_Response value = readRos2Xarm_msgsSrvLinearTrackSetPos_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvLinearTrackSetPos_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvLinearTrackSetPos_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvLinearTrackSetPos_Response readRos2Xarm_msgsSrvLinearTrackSetPos_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvLinearTrackSetPos_Response value = new Ros2Xarm_msgsSrvLinearTrackSetPos_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvMoveCartesian_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveCartesian_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_42c90af2eabc1a42376918d5cb862b4d8f8b2a3f958b7c444c8d8cccb2435512";
        public static final int MIN_WIRE_BYTES = 28, MAX_WIRE_BYTES = 156;
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.pose field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose = new float[0];
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.acc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float acc = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.mvtime field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvtime = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0xbf800000);
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.radius field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float radius = Float.intBitsToFloat(0xbf800000);
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.is_tool_coord field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_tool_coord = false;
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.relative field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean relative = false;
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Request.motion_type field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int motion_type = 0;

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
        public Ros2Xarm_msgsSrvMoveCartesian_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveCartesian_Request> CODEC = new Codec<Ros2Xarm_msgsSrvMoveCartesian_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCartesian_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveCartesian_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveCartesian_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCartesian_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveCartesian_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveCartesian_Request value = readRos2Xarm_msgsSrvMoveCartesian_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveCartesian_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveCartesian_Request value)
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
        float part1 = value.speed;
        writer.f32(part1);
        float part2 = value.acc;
        writer.f32(part2);
        float part3 = value.mvtime;
        writer.f32(part3);
        boolean part4 = value.wait;
        writer.integer(part4 ? 1 : 0, 1, false);
        float part5 = value.timeout;
        writer.f32(part5);
        float part6 = value.radius;
        writer.f32(part6);
        boolean part7 = value.is_tool_coord;
        writer.integer(part7 ? 1 : 0, 1, false);
        boolean part8 = value.relative;
        writer.integer(part8 ? 1 : 0, 1, false);
        int part9 = value.motion_type;
        writer.integer(part9, 1, false);
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
    private static Ros2Xarm_msgsSrvMoveCartesian_Request readRos2Xarm_msgsSrvMoveCartesian_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveCartesian_Request value = new Ros2Xarm_msgsSrvMoveCartesian_Request();
        value.pose = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.pose.length; ++i)
            value.pose[i] = reader.f32();
        value.speed = reader.f32();
        value.acc = reader.f32();
        value.mvtime = reader.f32();
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.radius = reader.f32();
        value.is_tool_coord = readBool(reader);
        value.relative = readBool(reader);
        value.motion_type = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvMoveCartesian_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveCartesian_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_17659e470cc45dd7fe1bc6240aa09aa6693e90e40d5dcf556cfb2b8d946af7be";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/MoveCartesian_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvMoveCartesian_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveCartesian_Response> CODEC = new Codec<Ros2Xarm_msgsSrvMoveCartesian_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCartesian_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveCartesian_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveCartesian_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCartesian_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveCartesian_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveCartesian_Response value = readRos2Xarm_msgsSrvMoveCartesian_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveCartesian_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveCartesian_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvMoveCartesian_Response readRos2Xarm_msgsSrvMoveCartesian_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveCartesian_Response value = new Ros2Xarm_msgsSrvMoveCartesian_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvMoveCircle_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveCircle_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1ad9d0ee80dfb636f7cdbccd1b510bd123f13615a16bed966bd5e8829a3b7f1b";
        public static final int MIN_WIRE_BYTES = 31, MAX_WIRE_BYTES = 287;
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.pose1 field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose1 = new float[0];
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.pose2 field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose2 = new float[0];
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.percent field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float percent = 0;
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.acc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float acc = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.mvtime field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvtime = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0xbf800000);
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.is_tool_coord field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_tool_coord = false;
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Request.is_axis_angle field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_axis_angle = false;

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
        public Ros2Xarm_msgsSrvMoveCircle_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveCircle_Request> CODEC = new Codec<Ros2Xarm_msgsSrvMoveCircle_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCircle_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveCircle_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveCircle_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCircle_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveCircle_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveCircle_Request value = readRos2Xarm_msgsSrvMoveCircle_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveCircle_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveCircle_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.pose1;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float[] part1 = value.pose2;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
        float part2 = value.percent;
        writer.f32(part2);
        float part3 = value.speed;
        writer.f32(part3);
        float part4 = value.acc;
        writer.f32(part4);
        float part5 = value.mvtime;
        writer.f32(part5);
        boolean part6 = value.wait;
        writer.integer(part6 ? 1 : 0, 1, false);
        float part7 = value.timeout;
        writer.f32(part7);
        boolean part8 = value.is_tool_coord;
        writer.integer(part8 ? 1 : 0, 1, false);
        boolean part9 = value.is_axis_angle;
        writer.integer(part9 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvMoveCircle_Request readRos2Xarm_msgsSrvMoveCircle_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveCircle_Request value = new Ros2Xarm_msgsSrvMoveCircle_Request();
        value.pose1 = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.pose1.length; ++i)
            value.pose1[i] = reader.f32();
        value.pose2 = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.pose2.length; ++i)
            value.pose2[i] = reader.f32();
        value.percent = reader.f32();
        value.speed = reader.f32();
        value.acc = reader.f32();
        value.mvtime = reader.f32();
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.is_tool_coord = readBool(reader);
        value.is_axis_angle = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvMoveCircle_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveCircle_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e884158bfd9d5bed6cb76d276e7d312c5f2d69d0508a1c01566f6773b7e4dbbd";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/MoveCircle_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvMoveCircle_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveCircle_Response> CODEC = new Codec<Ros2Xarm_msgsSrvMoveCircle_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveCircle_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveCircle_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveCircle_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveCircle_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveCircle_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveCircle_Response value = readRos2Xarm_msgsSrvMoveCircle_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveCircle_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveCircle_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvMoveCircle_Response readRos2Xarm_msgsSrvMoveCircle_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveCircle_Response value = new Ros2Xarm_msgsSrvMoveCircle_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvMoveHome_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveHome_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f9c04cf15dadd5c45cc16017533216bcbf682ac3366764c0546e73deabfab5a3";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Request.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Request.acc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float acc = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Request.mvtime field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvtime = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0xbf800000);

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
        public Ros2Xarm_msgsSrvMoveHome_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveHome_Request> CODEC = new Codec<Ros2Xarm_msgsSrvMoveHome_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveHome_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveHome_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveHome_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveHome_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveHome_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveHome_Request value = readRos2Xarm_msgsSrvMoveHome_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveHome_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveHome_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.speed;
        writer.f32(part0);
        float part1 = value.acc;
        writer.f32(part1);
        float part2 = value.mvtime;
        writer.f32(part2);
        boolean part3 = value.wait;
        writer.integer(part3 ? 1 : 0, 1, false);
        float part4 = value.timeout;
        writer.f32(part4);
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
    private static Ros2Xarm_msgsSrvMoveHome_Request readRos2Xarm_msgsSrvMoveHome_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveHome_Request value = new Ros2Xarm_msgsSrvMoveHome_Request();
        value.speed = reader.f32();
        value.acc = reader.f32();
        value.mvtime = reader.f32();
        value.wait = readBool(reader);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvMoveHome_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveHome_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c5a0764d10a7a2c3285ada1c04594d1cad466f7ec71fe53e42b2ea98b70793aa";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/MoveHome_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvMoveHome_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveHome_Response> CODEC = new Codec<Ros2Xarm_msgsSrvMoveHome_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveHome_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveHome_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveHome_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveHome_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveHome_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveHome_Response value = readRos2Xarm_msgsSrvMoveHome_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveHome_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveHome_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvMoveHome_Response readRos2Xarm_msgsSrvMoveHome_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveHome_Response value = new Ros2Xarm_msgsSrvMoveHome_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvMoveJoint_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveJoint_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0216b4ff8cf8baff2e2891d6a8d6d1397a42a750f68698d97dfc08d00e7c8d7";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 154;
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.angles field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] angles = new float[0];
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.speed field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float speed = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.acc field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float acc = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.mvtime field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float mvtime = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0xbf800000);
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.radius field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float radius = Float.intBitsToFloat(0xbf800000);
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Request.relative field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean relative = false;

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
        public Ros2Xarm_msgsSrvMoveJoint_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveJoint_Request> CODEC = new Codec<Ros2Xarm_msgsSrvMoveJoint_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveJoint_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveJoint_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveJoint_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveJoint_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveJoint_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveJoint_Request value = readRos2Xarm_msgsSrvMoveJoint_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveJoint_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveJoint_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.angles;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.speed;
        writer.f32(part1);
        float part2 = value.acc;
        writer.f32(part2);
        float part3 = value.mvtime;
        writer.f32(part3);
        boolean part4 = value.wait;
        writer.integer(part4 ? 1 : 0, 1, false);
        float part5 = value.timeout;
        writer.f32(part5);
        float part6 = value.radius;
        writer.f32(part6);
        boolean part7 = value.relative;
        writer.integer(part7 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvMoveJoint_Request readRos2Xarm_msgsSrvMoveJoint_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveJoint_Request value = new Ros2Xarm_msgsSrvMoveJoint_Request();
        value.angles = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.angles.length; ++i)
            value.angles[i] = reader.f32();
        value.speed = reader.f32();
        value.acc = reader.f32();
        value.mvtime = reader.f32();
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.radius = reader.f32();
        value.relative = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvMoveJoint_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveJoint_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0af0f83fe9efc15c4a2334c229e0d079fad286630c52d703b7e0cfaa037f04a7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/MoveJoint_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvMoveJoint_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveJoint_Response> CODEC = new Codec<Ros2Xarm_msgsSrvMoveJoint_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveJoint_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveJoint_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveJoint_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveJoint_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveJoint_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveJoint_Response value = readRos2Xarm_msgsSrvMoveJoint_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveJoint_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveJoint_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvMoveJoint_Response readRos2Xarm_msgsSrvMoveJoint_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveJoint_Response value = new Ros2Xarm_msgsSrvMoveJoint_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvMoveVelocity_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveVelocity_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a5378f3f0f4b89e04279b6d79b8b756d0970f74cd582636d56f1302be2c015c4";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 138;
        /**
         * @brief Original xarm_msgs/srv/MoveVelocity_Request.speeds field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] speeds = new float[0];
        /**
         * @brief Original xarm_msgs/srv/MoveVelocity_Request.is_sync field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_sync = true;
        /**
         * @brief Original xarm_msgs/srv/MoveVelocity_Request.is_tool_coord field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_tool_coord = false;
        /**
         * @brief Original xarm_msgs/srv/MoveVelocity_Request.duration field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float duration = Float.intBitsToFloat(0xbf800000);

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
        public Ros2Xarm_msgsSrvMoveVelocity_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveVelocity_Request> CODEC = new Codec<Ros2Xarm_msgsSrvMoveVelocity_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveVelocity_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveVelocity_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveVelocity_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveVelocity_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveVelocity_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveVelocity_Request value = readRos2Xarm_msgsSrvMoveVelocity_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveVelocity_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveVelocity_Request value)
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
    private static Ros2Xarm_msgsSrvMoveVelocity_Request readRos2Xarm_msgsSrvMoveVelocity_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveVelocity_Request value = new Ros2Xarm_msgsSrvMoveVelocity_Request();
        value.speeds = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.speeds.length; ++i)
            value.speeds[i] = reader.f32();
        value.is_sync = readBool(reader);
        value.is_tool_coord = readBool(reader);
        value.duration = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvMoveVelocity_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/MoveVelocity_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3ec82a1e864723e95f8fec98073d5e1ed009d2882fa8c20e55b4f8d86ec1d318";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/MoveVelocity_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/MoveVelocity_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvMoveVelocity_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvMoveVelocity_Response> CODEC = new Codec<Ros2Xarm_msgsSrvMoveVelocity_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/MoveVelocity_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvMoveVelocity_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvMoveVelocity_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/MoveVelocity_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvMoveVelocity_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvMoveVelocity_Response value = readRos2Xarm_msgsSrvMoveVelocity_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvMoveVelocity_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvMoveVelocity_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvMoveVelocity_Response readRos2Xarm_msgsSrvMoveVelocity_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvMoveVelocity_Response value = new Ros2Xarm_msgsSrvMoveVelocity_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvPlanExec_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanExec_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_376aa0461a41377c8e5ba44ec96e9dac39fea01da3db1d31a6a90190b5bf66d5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_msgs/srv/PlanExec_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;

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
        public Ros2Xarm_msgsSrvPlanExec_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanExec_Request> CODEC = new Codec<Ros2Xarm_msgsSrvPlanExec_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanExec_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanExec_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanExec_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanExec_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanExec_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanExec_Request value = readRos2Xarm_msgsSrvPlanExec_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanExec_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanExec_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.wait;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvPlanExec_Request readRos2Xarm_msgsSrvPlanExec_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanExec_Request value = new Ros2Xarm_msgsSrvPlanExec_Request();
        value.wait = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvPlanExec_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanExec_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5adfabe15405e2e15b08760866169c214029fe826a69dd1277808c3ebb16a88e";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_msgs/srv/PlanExec_Response.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros2Xarm_msgsSrvPlanExec_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanExec_Response> CODEC = new Codec<Ros2Xarm_msgsSrvPlanExec_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanExec_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanExec_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanExec_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanExec_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanExec_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanExec_Response value = readRos2Xarm_msgsSrvPlanExec_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanExec_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanExec_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvPlanExec_Response readRos2Xarm_msgsSrvPlanExec_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanExec_Response value = new Ros2Xarm_msgsSrvPlanExec_Response();
        value.success = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvPlanJoint_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanJoint_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_997562beca1e50895151970e89f0f253431451c60e274222ae622c49c0455bd5";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original xarm_msgs/srv/PlanJoint_Request.target field.
         * @details float64 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public double[] target = new double[0];

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
        public Ros2Xarm_msgsSrvPlanJoint_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanJoint_Request> CODEC = new Codec<Ros2Xarm_msgsSrvPlanJoint_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanJoint_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanJoint_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanJoint_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanJoint_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanJoint_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanJoint_Request value = readRos2Xarm_msgsSrvPlanJoint_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanJoint_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanJoint_Request value)
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
    private static Ros2Xarm_msgsSrvPlanJoint_Request readRos2Xarm_msgsSrvPlanJoint_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanJoint_Request value = new Ros2Xarm_msgsSrvPlanJoint_Request();
        value.target = new double[readCount(reader, 32, 8)];
        for(int i = 0; i < value.target.length; ++i)
            value.target[i] = reader.f64();
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
    public static final class Ros2Xarm_msgsSrvPlanJoint_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanJoint_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_dfe1e3eaf8913c9e6b5aed6ee60bd7c24eb4e2944036f0de92fcd6846acac782";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_msgs/srv/PlanJoint_Response.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros2Xarm_msgsSrvPlanJoint_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanJoint_Response> CODEC = new Codec<Ros2Xarm_msgsSrvPlanJoint_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanJoint_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanJoint_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanJoint_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanJoint_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanJoint_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanJoint_Response value = readRos2Xarm_msgsSrvPlanJoint_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanJoint_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanJoint_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvPlanJoint_Response readRos2Xarm_msgsSrvPlanJoint_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanJoint_Response value = new Ros2Xarm_msgsSrvPlanJoint_Response();
        value.success = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvPlanPose_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanPose_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_01b292bd33f28682cde3cb35f9d62e8d99cd8a58d2a5c3d5e6411121d3a09859";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original xarm_msgs/srv/PlanPose_Request.target field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose target = new Ros2Geometry_msgsMsgPose();

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
        public Ros2Xarm_msgsSrvPlanPose_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanPose_Request> CODEC = new Codec<Ros2Xarm_msgsSrvPlanPose_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanPose_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanPose_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanPose_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanPose_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanPose_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanPose_Request value = readRos2Xarm_msgsSrvPlanPose_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanPose_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanPose_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.target;

        writeRos2Geometry_msgsMsgPose(writer, part0);
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
    private static Ros2Xarm_msgsSrvPlanPose_Request readRos2Xarm_msgsSrvPlanPose_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanPose_Request value = new Ros2Xarm_msgsSrvPlanPose_Request();
        value.target = readRos2Geometry_msgsMsgPose(reader);
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
    public static final class Ros2Xarm_msgsSrvPlanPose_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanPose_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0cdcf4232f673c3034319f90c1d0f56fbfd86a829fa9f6460f87fea391ce766d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_msgs/srv/PlanPose_Response.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros2Xarm_msgsSrvPlanPose_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanPose_Response> CODEC = new Codec<Ros2Xarm_msgsSrvPlanPose_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanPose_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanPose_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanPose_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanPose_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanPose_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanPose_Response value = readRos2Xarm_msgsSrvPlanPose_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanPose_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanPose_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvPlanPose_Response readRos2Xarm_msgsSrvPlanPose_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanPose_Response value = new Ros2Xarm_msgsSrvPlanPose_Response();
        value.success = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvPlanSingleStraight_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanSingleStraight_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4e350b5145aa64c8ff4dc15cd61ba557f0db2b256798e50e4b4e28d47ecdc2b0";
        public static final int MIN_WIRE_BYTES = 56, MAX_WIRE_BYTES = 56;
        /**
         * @brief Original xarm_msgs/srv/PlanSingleStraight_Request.target field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose target = new Ros2Geometry_msgsMsgPose();

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
        public Ros2Xarm_msgsSrvPlanSingleStraight_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanSingleStraight_Request> CODEC = new Codec<Ros2Xarm_msgsSrvPlanSingleStraight_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanSingleStraight_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanSingleStraight_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanSingleStraight_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanSingleStraight_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanSingleStraight_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanSingleStraight_Request value = readRos2Xarm_msgsSrvPlanSingleStraight_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanSingleStraight_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanSingleStraight_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.target;

        writeRos2Geometry_msgsMsgPose(writer, part0);
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
    private static Ros2Xarm_msgsSrvPlanSingleStraight_Request readRos2Xarm_msgsSrvPlanSingleStraight_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanSingleStraight_Request value = new Ros2Xarm_msgsSrvPlanSingleStraight_Request();
        value.target = readRos2Geometry_msgsMsgPose(reader);
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
    public static final class Ros2Xarm_msgsSrvPlanSingleStraight_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/PlanSingleStraight_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ef2fdd22f223f4c91ccc886bddae43b0d48bc9063b3a199c7d8bb6f1bfb86432";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_msgs/srv/PlanSingleStraight_Response.success field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean success = false;

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
        public Ros2Xarm_msgsSrvPlanSingleStraight_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvPlanSingleStraight_Response> CODEC = new Codec<Ros2Xarm_msgsSrvPlanSingleStraight_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/PlanSingleStraight_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvPlanSingleStraight_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvPlanSingleStraight_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/PlanSingleStraight_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvPlanSingleStraight_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvPlanSingleStraight_Response value = readRos2Xarm_msgsSrvPlanSingleStraight_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvPlanSingleStraight_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvPlanSingleStraight_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.success;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvPlanSingleStraight_Response readRos2Xarm_msgsSrvPlanSingleStraight_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvPlanSingleStraight_Response value = new Ros2Xarm_msgsSrvPlanSingleStraight_Response();
        value.success = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvRobotiqActivate_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqActivate_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7c4501be17de61893d5d91b3808769133ac5a444d2f0a8b1b3b13a01f03b75c3";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original xarm_msgs/srv/RobotiqActivate_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/RobotiqActivate_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x40400000);

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
        public Ros2Xarm_msgsSrvRobotiqActivate_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqActivate_Request> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqActivate_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqActivate_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqActivate_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqActivate_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqActivate_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqActivate_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqActivate_Request value = readRos2Xarm_msgsSrvRobotiqActivate_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqActivate_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqActivate_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.wait;
        writer.integer(part0 ? 1 : 0, 1, false);
        float part1 = value.timeout;
        writer.f32(part1);
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
    private static Ros2Xarm_msgsSrvRobotiqActivate_Request readRos2Xarm_msgsSrvRobotiqActivate_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqActivate_Request value = new Ros2Xarm_msgsSrvRobotiqActivate_Request();
        value.wait = readBool(reader);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvRobotiqActivate_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqActivate_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e6f6d01b439afdbb2461a8ed682ce1332e021a9a8ae3326772f13469a70648d4";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/srv/RobotiqActivate_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/RobotiqActivate_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/RobotiqActivate_Response.ret_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] ret_data = new int[0];

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
        public Ros2Xarm_msgsSrvRobotiqActivate_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqActivate_Response> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqActivate_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqActivate_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqActivate_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqActivate_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqActivate_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqActivate_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqActivate_Response value = readRos2Xarm_msgsSrvRobotiqActivate_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqActivate_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqActivate_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.ret_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros2Xarm_msgsSrvRobotiqActivate_Response readRos2Xarm_msgsSrvRobotiqActivate_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqActivate_Response value = new Ros2Xarm_msgsSrvRobotiqActivate_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.ret_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.ret_data.length; ++i)
            value.ret_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvRobotiqGetStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqGetStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_99970019152494d54024cb4c44af400853506d81149e1bba55d40caa9bd44e6b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original xarm_msgs/srv/RobotiqGetStatus_Request.number_of_registers field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int number_of_registers = 3;

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
        public Ros2Xarm_msgsSrvRobotiqGetStatus_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqGetStatus_Request> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqGetStatus_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqGetStatus_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqGetStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqGetStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqGetStatus_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqGetStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqGetStatus_Request value = readRos2Xarm_msgsSrvRobotiqGetStatus_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqGetStatus_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqGetStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.number_of_registers;
        writer.integer(part0, 1, false);
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
    private static Ros2Xarm_msgsSrvRobotiqGetStatus_Request readRos2Xarm_msgsSrvRobotiqGetStatus_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqGetStatus_Request value = new Ros2Xarm_msgsSrvRobotiqGetStatus_Request();
        value.number_of_registers = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvRobotiqGetStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqGetStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b1b7945622a48beab45b569b9c64139eec028b5a61dc75cfb6dc302d8b787e43";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/srv/RobotiqGetStatus_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/RobotiqGetStatus_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/RobotiqGetStatus_Response.ret_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] ret_data = new int[0];

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
        public Ros2Xarm_msgsSrvRobotiqGetStatus_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqGetStatus_Response> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqGetStatus_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqGetStatus_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqGetStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqGetStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqGetStatus_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqGetStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqGetStatus_Response value = readRos2Xarm_msgsSrvRobotiqGetStatus_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqGetStatus_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqGetStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.ret_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros2Xarm_msgsSrvRobotiqGetStatus_Response readRos2Xarm_msgsSrvRobotiqGetStatus_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqGetStatus_Response value = new Ros2Xarm_msgsSrvRobotiqGetStatus_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.ret_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.ret_data.length; ++i)
            value.ret_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvRobotiqMove_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqMove_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f1e5c6c7be4583ecdb91da2401c9adcf727eff9e2b69df21e8a4f1de468775ad";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Request.pos field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int pos = 0;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Request.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 255;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Request.force field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int force = 255;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = true;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x40a00000);

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
        public Ros2Xarm_msgsSrvRobotiqMove_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqMove_Request> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqMove_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqMove_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqMove_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqMove_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqMove_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqMove_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqMove_Request value = readRos2Xarm_msgsSrvRobotiqMove_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqMove_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqMove_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pos;
        writer.integer(part0, 1, false);
        int part1 = value.speed;
        writer.integer(part1, 1, false);
        int part2 = value.force;
        writer.integer(part2, 1, false);
        boolean part3 = value.wait;
        writer.integer(part3 ? 1 : 0, 1, false);
        float part4 = value.timeout;
        writer.f32(part4);
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
    private static Ros2Xarm_msgsSrvRobotiqMove_Request readRos2Xarm_msgsSrvRobotiqMove_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqMove_Request value = new Ros2Xarm_msgsSrvRobotiqMove_Request();
        value.pos = (int)reader.integer(1, false);
        value.speed = (int)reader.integer(1, false);
        value.force = (int)reader.integer(1, false);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvRobotiqMove_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqMove_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7b581f9f45349f688543ea57a3889b351909b43a9d5bff65d916b804b00bacf6";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/RobotiqMove_Response.ret_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] ret_data = new int[0];

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
        public Ros2Xarm_msgsSrvRobotiqMove_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqMove_Response> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqMove_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqMove_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqMove_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqMove_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqMove_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqMove_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqMove_Response value = readRos2Xarm_msgsSrvRobotiqMove_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqMove_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqMove_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.ret_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros2Xarm_msgsSrvRobotiqMove_Response readRos2Xarm_msgsSrvRobotiqMove_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqMove_Response value = new Ros2Xarm_msgsSrvRobotiqMove_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.ret_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.ret_data.length; ++i)
            value.ret_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvRobotiqReset_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqReset_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_59168733ec2ce73fc135dfa2c0f1edd10a4ad82062acf477c7ca9258ecb8d755";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Xarm_msgsSrvRobotiqReset_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqReset_Request> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqReset_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqReset_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqReset_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqReset_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqReset_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqReset_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqReset_Request value = readRos2Xarm_msgsSrvRobotiqReset_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqReset_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqReset_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Xarm_msgsSrvRobotiqReset_Request readRos2Xarm_msgsSrvRobotiqReset_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqReset_Request value = new Ros2Xarm_msgsSrvRobotiqReset_Request();
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
    public static final class Ros2Xarm_msgsSrvRobotiqReset_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/RobotiqReset_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4c0f6950fe50ffae8b6b30be7265606bddaebeb1099038b1e973f144c8164d2e";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 4362;
        /**
         * @brief Original xarm_msgs/srv/RobotiqReset_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/RobotiqReset_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";
        /**
         * @brief Original xarm_msgs/srv/RobotiqReset_Response.ret_data field.
         * @details uint8 sequence, count/quota 4096, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] ret_data = new int[0];

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
        public Ros2Xarm_msgsSrvRobotiqReset_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvRobotiqReset_Response> CODEC = new Codec<Ros2Xarm_msgsSrvRobotiqReset_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/RobotiqReset_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvRobotiqReset_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvRobotiqReset_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/RobotiqReset_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvRobotiqReset_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvRobotiqReset_Response value = readRos2Xarm_msgsSrvRobotiqReset_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvRobotiqReset_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvRobotiqReset_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
        int[] part2 = value.ret_data;
        if(part2 == null || part2.length > 4096)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 1, false);
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
    private static Ros2Xarm_msgsSrvRobotiqReset_Response readRos2Xarm_msgsSrvRobotiqReset_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvRobotiqReset_Response value = new Ros2Xarm_msgsSrvRobotiqReset_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        value.ret_data = new int[readCount(reader, 4096, 1)];
        for(int i = 0; i < value.ret_data.length; ++i)
            value.ret_data[i] = (int)reader.integer(1, false);
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
    public static final class Ros2Xarm_msgsSrvSetAnalogIO_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetAnalogIO_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_77df87cd98b5dd0b384674739c65f045eb32346596b82ceca2ccb9ff6e9dfe96";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 142;
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.ionum field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ionum = 0;
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float value = 0;
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.xyz field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] xyz = new float[0];
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.tol_r field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float tol_r = 0;

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
        public Ros2Xarm_msgsSrvSetAnalogIO_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetAnalogIO_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetAnalogIO_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetAnalogIO_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetAnalogIO_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetAnalogIO_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetAnalogIO_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetAnalogIO_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                /**
                 * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
                 * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                Ros2Xarm_msgsSrvSetAnalogIO_Request value = readRos2Xarm_msgsSrvSetAnalogIO_Request(reader);
                reader.end();
                /**
                 * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
                 * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetAnalogIO_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetAnalogIO_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ionum;
        writer.integer(part0, 2, true);
        float part1 = value.value;
        writer.f32(part1);
        float[] part2 = value.xyz;
        if(part2 == null || part2.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part2.length, 4, false);
        for(int i = 0; i < part2.length; ++i)
        {
            writer.f32(part2[i]);
        }
        float part3 = value.tol_r;
        writer.f32(part3);
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
    private static Ros2Xarm_msgsSrvSetAnalogIO_Request readRos2Xarm_msgsSrvSetAnalogIO_Request(Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Request.value field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        Ros2Xarm_msgsSrvSetAnalogIO_Request value = new Ros2Xarm_msgsSrvSetAnalogIO_Request();
        value.ionum = (short)reader.integer(2, true);
        value.value = reader.f32();
        value.xyz = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.xyz.length; ++i)
            value.xyz[i] = reader.f32();
        value.tol_r = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvSetAnalogIO_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetAnalogIO_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_480194824f2056f0dd3d3031fda9e27f49b3f7b242f0d0bcb4a783c6649164ec";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetAnalogIO_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetAnalogIO_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetAnalogIO_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetAnalogIO_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetAnalogIO_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetAnalogIO_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetAnalogIO_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetAnalogIO_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetAnalogIO_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetAnalogIO_Response value = readRos2Xarm_msgsSrvSetAnalogIO_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetAnalogIO_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetAnalogIO_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetAnalogIO_Response readRos2Xarm_msgsSrvSetAnalogIO_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetAnalogIO_Response value = new Ros2Xarm_msgsSrvSetAnalogIO_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetDigitalIO_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetDigitalIO_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1bb4c857c4625a17ef5800f821d5aed95124ba24dc472ee61c2193798967aaf2";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 144;
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.ionum field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ionum = 0;
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short value = 0;
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.delay_sec field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float delay_sec = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.xyz field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] xyz = new float[0];
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.tol_r field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float tol_r = 0;

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
        public Ros2Xarm_msgsSrvSetDigitalIO_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetDigitalIO_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetDigitalIO_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetDigitalIO_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetDigitalIO_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetDigitalIO_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetDigitalIO_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetDigitalIO_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                /**
                 * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
                 * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                Ros2Xarm_msgsSrvSetDigitalIO_Request value = readRos2Xarm_msgsSrvSetDigitalIO_Request(reader);
                reader.end();
                /**
                 * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
                 * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and
                 * frame. Full value checks occur before successful encoding; construction grants no
                 * authority.
                 */
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetDigitalIO_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetDigitalIO_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ionum;
        writer.integer(part0, 2, true);
        short part1 = value.value;
        writer.integer(part1, 2, true);
        float part2 = value.delay_sec;
        writer.f32(part2);
        float[] part3 = value.xyz;
        if(part3 == null || part3.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part3.length, 4, false);
        for(int i = 0; i < part3.length; ++i)
        {
            writer.f32(part3[i]);
        }
        float part4 = value.tol_r;
        writer.f32(part4);
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
    private static Ros2Xarm_msgsSrvSetDigitalIO_Request readRos2Xarm_msgsSrvSetDigitalIO_Request(Codecs.Reader reader)
    {
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Request.value field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        Ros2Xarm_msgsSrvSetDigitalIO_Request value = new Ros2Xarm_msgsSrvSetDigitalIO_Request();
        value.ionum = (short)reader.integer(2, true);
        value.value = (short)reader.integer(2, true);
        value.delay_sec = reader.f32();
        value.xyz = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.xyz.length; ++i)
            value.xyz[i] = reader.f32();
        value.tol_r = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvSetDigitalIO_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetDigitalIO_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cb18f2968dd4014c8fe100a63d4c80ce10e813fc0998a9f76cd8699bc511a17b";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetDigitalIO_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetDigitalIO_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetDigitalIO_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetDigitalIO_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetDigitalIO_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetDigitalIO_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetDigitalIO_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetDigitalIO_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetDigitalIO_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetDigitalIO_Response value = readRos2Xarm_msgsSrvSetDigitalIO_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetDigitalIO_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetDigitalIO_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetDigitalIO_Response readRos2Xarm_msgsSrvSetDigitalIO_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetDigitalIO_Response value = new Ros2Xarm_msgsSrvSetDigitalIO_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetFloat32_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetFloat32_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6fec5cd9973c8f68bdffad4b582b26547d325167942379830a84c7d8469987c1";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/srv/SetFloat32_Request.data field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float data = 0;

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
        public Ros2Xarm_msgsSrvSetFloat32_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetFloat32_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetFloat32_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetFloat32_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetFloat32_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetFloat32_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetFloat32_Request value = readRos2Xarm_msgsSrvSetFloat32_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetFloat32_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetFloat32_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.data;
        writer.f32(part0);
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
    private static Ros2Xarm_msgsSrvSetFloat32_Request readRos2Xarm_msgsSrvSetFloat32_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetFloat32_Request value = new Ros2Xarm_msgsSrvSetFloat32_Request();
        value.data = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvSetFloat32_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetFloat32_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d7bb8df8e3e4ab02a30ebfdc4af57cdbcee5ce3b48591524e70e2a07f8843ea1";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetFloat32_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetFloat32_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetFloat32_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetFloat32_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetFloat32_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetFloat32_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetFloat32_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetFloat32_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetFloat32_Response value = readRos2Xarm_msgsSrvSetFloat32_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetFloat32_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetFloat32_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetFloat32_Response readRos2Xarm_msgsSrvSetFloat32_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetFloat32_Response value = new Ros2Xarm_msgsSrvSetFloat32_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetFloat32List_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetFloat32List_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_38bd43fd452ab1f59bd4875deb4dea6d0a17c3409ee9c5446f798e1b8ba93532";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 132;
        /**
         * @brief Original xarm_msgs/srv/SetFloat32List_Request.datas field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] datas = new float[0];

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
        public Ros2Xarm_msgsSrvSetFloat32List_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetFloat32List_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetFloat32List_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32List_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetFloat32List_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetFloat32List_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32List_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetFloat32List_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetFloat32List_Request value = readRos2Xarm_msgsSrvSetFloat32List_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetFloat32List_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetFloat32List_Request value)
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
    private static Ros2Xarm_msgsSrvSetFloat32List_Request readRos2Xarm_msgsSrvSetFloat32List_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetFloat32List_Request value = new Ros2Xarm_msgsSrvSetFloat32List_Request();
        value.datas = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvSetFloat32List_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetFloat32List_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f2c08d32b1238bb78dc0daccfc97066563a14e8e4b891e37e2effaed91a74396";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetFloat32List_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetFloat32List_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetFloat32List_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetFloat32List_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetFloat32List_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetFloat32List_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetFloat32List_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetFloat32List_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetFloat32List_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetFloat32List_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetFloat32List_Response value = readRos2Xarm_msgsSrvSetFloat32List_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetFloat32List_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetFloat32List_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetFloat32List_Response readRos2Xarm_msgsSrvSetFloat32List_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetFloat32List_Response value = new Ros2Xarm_msgsSrvSetFloat32List_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetInt16_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt16_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_09e0c90763447d7b4ed57ce37650d4a4d918bc96ec8b8df61189f8e636a58adb";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original xarm_msgs/srv/SetInt16_Request.data field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short data = 0;

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
        public Ros2Xarm_msgsSrvSetInt16_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt16_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt16_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt16_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt16_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt16_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt16_Request value = readRos2Xarm_msgsSrvSetInt16_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt16_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt16_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.data;
        writer.integer(part0, 2, true);
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
    private static Ros2Xarm_msgsSrvSetInt16_Request readRos2Xarm_msgsSrvSetInt16_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt16_Request value = new Ros2Xarm_msgsSrvSetInt16_Request();
        value.data = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvSetInt16_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt16_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0c02f9a01383e37346637ec7d6a608cca7d025259b67c9ab528f3b13aa842155";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetInt16_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt16_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetInt16_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt16_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt16_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt16_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt16_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt16_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt16_Response value = readRos2Xarm_msgsSrvSetInt16_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt16_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt16_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetInt16_Response readRos2Xarm_msgsSrvSetInt16_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt16_Response value = new Ros2Xarm_msgsSrvSetInt16_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetInt16ById_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt16ById_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9472db1bda5f8d557e75c9be0c902c67a76952ba0bc258693cf047c6c10954f0";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/srv/SetInt16ById_Request.id field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short id = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt16ById_Request.data field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short data = 0;

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
        public Ros2Xarm_msgsSrvSetInt16ById_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt16ById_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt16ById_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16ById_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt16ById_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt16ById_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16ById_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt16ById_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt16ById_Request value = readRos2Xarm_msgsSrvSetInt16ById_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt16ById_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt16ById_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.id;
        writer.integer(part0, 2, true);
        short part1 = value.data;
        writer.integer(part1, 2, true);
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
    private static Ros2Xarm_msgsSrvSetInt16ById_Request readRos2Xarm_msgsSrvSetInt16ById_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt16ById_Request value = new Ros2Xarm_msgsSrvSetInt16ById_Request();
        value.id = (short)reader.integer(2, true);
        value.data = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvSetInt16ById_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt16ById_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cd16eec98546214169bf4e32eff4190d9276ee41b6bfc5eef919dd44cdeae92a";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetInt16ById_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt16ById_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetInt16ById_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt16ById_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt16ById_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16ById_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt16ById_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt16ById_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16ById_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt16ById_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt16ById_Response value = readRos2Xarm_msgsSrvSetInt16ById_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt16ById_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt16ById_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetInt16ById_Response readRos2Xarm_msgsSrvSetInt16ById_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt16ById_Response value = new Ros2Xarm_msgsSrvSetInt16ById_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetInt16List_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt16List_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d1ef15eb18c2f3c377c25c486d945fbf77887ca7a9ef9c291355e9a23541ec96";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original xarm_msgs/srv/SetInt16List_Request.datas field.
         * @details int16 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public short[] datas = new short[0];

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
        public Ros2Xarm_msgsSrvSetInt16List_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt16List_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt16List_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16List_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt16List_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt16List_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16List_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt16List_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt16List_Request value = readRos2Xarm_msgsSrvSetInt16List_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt16List_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt16List_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short[] part0 = value.datas;
        if(part0 == null || part0.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {
            writer.integer(part0[i], 2, true);
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
    private static Ros2Xarm_msgsSrvSetInt16List_Request readRos2Xarm_msgsSrvSetInt16List_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt16List_Request value = new Ros2Xarm_msgsSrvSetInt16List_Request();
        value.datas = new short[readCount(reader, 32, 2)];
        for(int i = 0; i < value.datas.length; ++i)
            value.datas[i] = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvSetInt16List_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt16List_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_326ef9ea75d627cdc4187908191f230f87efb6f3fb2b0a7f783260c7ffee583f";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetInt16List_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt16List_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetInt16List_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt16List_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt16List_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt16List_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt16List_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt16List_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt16List_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt16List_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt16List_Response value = readRos2Xarm_msgsSrvSetInt16List_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt16List_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt16List_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetInt16List_Response readRos2Xarm_msgsSrvSetInt16List_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt16List_Response value = new Ros2Xarm_msgsSrvSetInt16List_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetInt32_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt32_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f219450be903e96baf55dfb3fcc03851aabc43899d637f869d9adba55b36c1d3";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original xarm_msgs/srv/SetInt32_Request.data field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int data = 0;

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
        public Ros2Xarm_msgsSrvSetInt32_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt32_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt32_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt32_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt32_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt32_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt32_Request value = readRos2Xarm_msgsSrvSetInt32_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt32_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt32_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.data;
        writer.integer(part0, 4, true);
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
    private static Ros2Xarm_msgsSrvSetInt32_Request readRos2Xarm_msgsSrvSetInt32_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt32_Request value = new Ros2Xarm_msgsSrvSetInt32_Request();
        value.data = (int)reader.integer(4, true);
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
    public static final class Ros2Xarm_msgsSrvSetInt32_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt32_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1510982ab2c740a570f21179997368cd4be93c4086967e9ff98b24606f0b7f65";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetInt32_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt32_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetInt32_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt32_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt32_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt32_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt32_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt32_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt32_Response value = readRos2Xarm_msgsSrvSetInt32_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt32_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt32_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetInt32_Response readRos2Xarm_msgsSrvSetInt32_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt32_Response value = new Ros2Xarm_msgsSrvSetInt32_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetInt32ByType_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt32ByType_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8a6e3ab3e34eeff45dbddc698cb249c2acb27d74717be8724fa0f9448ff981d7";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 6;
        /**
         * @brief Original xarm_msgs/srv/SetInt32ByType_Request.type field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short type = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt32ByType_Request.data field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int data = 0;

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
        public Ros2Xarm_msgsSrvSetInt32ByType_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt32ByType_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt32ByType_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32ByType_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt32ByType_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt32ByType_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32ByType_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt32ByType_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt32ByType_Request value = readRos2Xarm_msgsSrvSetInt32ByType_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt32ByType_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt32ByType_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.type;
        writer.integer(part0, 2, true);
        int part1 = value.data;
        writer.integer(part1, 4, true);
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
    private static Ros2Xarm_msgsSrvSetInt32ByType_Request readRos2Xarm_msgsSrvSetInt32ByType_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt32ByType_Request value = new Ros2Xarm_msgsSrvSetInt32ByType_Request();
        value.type = (short)reader.integer(2, true);
        value.data = (int)reader.integer(4, true);
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
    public static final class Ros2Xarm_msgsSrvSetInt32ByType_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetInt32ByType_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6fcd5dddde2d38a61ffdeab64ae09514137b364347357c62b81c26c86b44882a";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetInt32ByType_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetInt32ByType_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetInt32ByType_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetInt32ByType_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetInt32ByType_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetInt32ByType_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetInt32ByType_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetInt32ByType_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetInt32ByType_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetInt32ByType_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetInt32ByType_Response value = readRos2Xarm_msgsSrvSetInt32ByType_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetInt32ByType_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetInt32ByType_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetInt32ByType_Response readRos2Xarm_msgsSrvSetInt32ByType_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetInt32ByType_Response value = new Ros2Xarm_msgsSrvSetInt32ByType_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetModbusTimeout_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetModbusTimeout_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_186f84404c6a11cfd3c7a64fc9ac55b39343d5f8c4a01bd81efdd038d6c7e685";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original xarm_msgs/srv/SetModbusTimeout_Request.timeout field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout = 0;
        /**
         * @brief Original xarm_msgs/srv/SetModbusTimeout_Request.is_transparent_transmission field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean is_transparent_transmission = false;

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
        public Ros2Xarm_msgsSrvSetModbusTimeout_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetModbusTimeout_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetModbusTimeout_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetModbusTimeout_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetModbusTimeout_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetModbusTimeout_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetModbusTimeout_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetModbusTimeout_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetModbusTimeout_Request value = readRos2Xarm_msgsSrvSetModbusTimeout_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetModbusTimeout_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetModbusTimeout_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.timeout;
        writer.integer(part0, 4, true);
        boolean part1 = value.is_transparent_transmission;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvSetModbusTimeout_Request readRos2Xarm_msgsSrvSetModbusTimeout_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetModbusTimeout_Request value = new Ros2Xarm_msgsSrvSetModbusTimeout_Request();
        value.timeout = (int)reader.integer(4, true);
        value.is_transparent_transmission = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvSetModbusTimeout_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetModbusTimeout_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_32da6d0583896c59968213be225e17146d619cddb4c520060640e13b886f3397";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/SetModbusTimeout_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetModbusTimeout_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetModbusTimeout_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetModbusTimeout_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetModbusTimeout_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetModbusTimeout_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetModbusTimeout_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetModbusTimeout_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetModbusTimeout_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetModbusTimeout_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetModbusTimeout_Response value = readRos2Xarm_msgsSrvSetModbusTimeout_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetModbusTimeout_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetModbusTimeout_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetModbusTimeout_Response readRos2Xarm_msgsSrvSetModbusTimeout_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetModbusTimeout_Response value = new Ros2Xarm_msgsSrvSetModbusTimeout_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvSetTcpLoad_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetTcpLoad_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5428d98daa8dd42c8dba0cb78152b1b718afe34eb1da16de65a333a81d293e99";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 136;
        /**
         * @brief Original xarm_msgs/srv/SetTcpLoad_Request.weight field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float weight = 0;
        /**
         * @brief Original xarm_msgs/srv/SetTcpLoad_Request.center_of_gravity field.
         * @details float32 sequence, count/quota 32, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] center_of_gravity = new float[0];

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
        public Ros2Xarm_msgsSrvSetTcpLoad_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetTcpLoad_Request> CODEC = new Codec<Ros2Xarm_msgsSrvSetTcpLoad_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetTcpLoad_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetTcpLoad_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetTcpLoad_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetTcpLoad_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetTcpLoad_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetTcpLoad_Request value = readRos2Xarm_msgsSrvSetTcpLoad_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetTcpLoad_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvSetTcpLoad_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.weight;
        writer.f32(part0);
        float[] part1 = value.center_of_gravity;
        if(part1 == null || part1.length > 32)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
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
    private static Ros2Xarm_msgsSrvSetTcpLoad_Request readRos2Xarm_msgsSrvSetTcpLoad_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetTcpLoad_Request value = new Ros2Xarm_msgsSrvSetTcpLoad_Request();
        value.weight = reader.f32();
        value.center_of_gravity = new float[readCount(reader, 32, 4)];
        for(int i = 0; i < value.center_of_gravity.length; ++i)
            value.center_of_gravity[i] = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvSetTcpLoad_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/SetTcpLoad_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7438021022e94f66f464a561a54cb8f808da8c2e35830853cbecc98fa76ef46f";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/srv/SetTcpLoad_Response.ret field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int ret = 0;
        /**
         * @brief Original xarm_msgs/srv/SetTcpLoad_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvSetTcpLoad_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvSetTcpLoad_Response> CODEC = new Codec<Ros2Xarm_msgsSrvSetTcpLoad_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/SetTcpLoad_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvSetTcpLoad_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvSetTcpLoad_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/SetTcpLoad_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvSetTcpLoad_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvSetTcpLoad_Response value = readRos2Xarm_msgsSrvSetTcpLoad_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvSetTcpLoad_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvSetTcpLoad_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.ret;
        writer.integer(part0, 4, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvSetTcpLoad_Response readRos2Xarm_msgsSrvSetTcpLoad_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvSetTcpLoad_Response value = new Ros2Xarm_msgsSrvSetTcpLoad_Response();
        value.ret = (int)reader.integer(4, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvTrajCtrl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/TrajCtrl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f29343b422932e055d5930c46615f38cc1600d4c4b89506a1050f89728e0ca0d";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 264;
        /**
         * @brief Original xarm_msgs/srv/TrajCtrl_Request.filename field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String filename = "";
        /**
         * @brief Original xarm_msgs/srv/TrajCtrl_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x41200000);

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
        public Ros2Xarm_msgsSrvTrajCtrl_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvTrajCtrl_Request> CODEC = new Codec<Ros2Xarm_msgsSrvTrajCtrl_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/TrajCtrl_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvTrajCtrl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvTrajCtrl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/TrajCtrl_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvTrajCtrl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvTrajCtrl_Request value = readRos2Xarm_msgsSrvTrajCtrl_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvTrajCtrl_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvTrajCtrl_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.filename;

        writeText(writer, part0, 256);
        float part1 = value.timeout;
        writer.f32(part1);
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
    private static Ros2Xarm_msgsSrvTrajCtrl_Request readRos2Xarm_msgsSrvTrajCtrl_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvTrajCtrl_Request value = new Ros2Xarm_msgsSrvTrajCtrl_Request();
        value.filename = readText(reader, 256);
        value.timeout = reader.f32();
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
    public static final class Ros2Xarm_msgsSrvTrajCtrl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/TrajCtrl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_00cac1ec8b7d312cae07a3ffe3235bd599086c62b028cb446bf7478306aa1b3c";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/TrajCtrl_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/TrajCtrl_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvTrajCtrl_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvTrajCtrl_Response> CODEC = new Codec<Ros2Xarm_msgsSrvTrajCtrl_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/TrajCtrl_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvTrajCtrl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvTrajCtrl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/TrajCtrl_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvTrajCtrl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvTrajCtrl_Response value = readRos2Xarm_msgsSrvTrajCtrl_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvTrajCtrl_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvTrajCtrl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvTrajCtrl_Response readRos2Xarm_msgsSrvTrajCtrl_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvTrajCtrl_Response value = new Ros2Xarm_msgsSrvTrajCtrl_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvTrajPlay_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/TrajPlay_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_edbd9ed5bcbc1cf8882fab3b69b24373542273b74a51bd3cae94e7970a7d3e72";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 265;
        /**
         * @brief Original xarm_msgs/srv/TrajPlay_Request.filename field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String filename = "";
        /**
         * @brief Original xarm_msgs/srv/TrajPlay_Request.times field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short times = 1;
        /**
         * @brief Original xarm_msgs/srv/TrajPlay_Request.double_speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short double_speed = 1;
        /**
         * @brief Original xarm_msgs/srv/TrajPlay_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;

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
        public Ros2Xarm_msgsSrvTrajPlay_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvTrajPlay_Request> CODEC = new Codec<Ros2Xarm_msgsSrvTrajPlay_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/TrajPlay_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvTrajPlay_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvTrajPlay_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/TrajPlay_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvTrajPlay_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvTrajPlay_Request value = readRos2Xarm_msgsSrvTrajPlay_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvTrajPlay_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvTrajPlay_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.filename;

        writeText(writer, part0, 256);
        short part1 = value.times;
        writer.integer(part1, 2, true);
        short part2 = value.double_speed;
        writer.integer(part2, 2, true);
        boolean part3 = value.wait;
        writer.integer(part3 ? 1 : 0, 1, false);
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
    private static Ros2Xarm_msgsSrvTrajPlay_Request readRos2Xarm_msgsSrvTrajPlay_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvTrajPlay_Request value = new Ros2Xarm_msgsSrvTrajPlay_Request();
        value.filename = readText(reader, 256);
        value.times = (short)reader.integer(2, true);
        value.double_speed = (short)reader.integer(2, true);
        value.wait = readBool(reader);
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
    public static final class Ros2Xarm_msgsSrvTrajPlay_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/TrajPlay_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce86fc20a5a16288b138fe2e37794c1318dc393b811f45d3fe3eccf954837ea0";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/TrajPlay_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/TrajPlay_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvTrajPlay_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvTrajPlay_Response> CODEC = new Codec<Ros2Xarm_msgsSrvTrajPlay_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/TrajPlay_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvTrajPlay_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvTrajPlay_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/TrajPlay_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvTrajPlay_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvTrajPlay_Response value = readRos2Xarm_msgsSrvTrajPlay_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvTrajPlay_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvTrajPlay_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvTrajPlay_Response readRos2Xarm_msgsSrvTrajPlay_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvTrajPlay_Response value = new Ros2Xarm_msgsSrvTrajPlay_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
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
    public static final class Ros2Xarm_msgsSrvVacuumGripperCtrl_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/VacuumGripperCtrl_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d6da957d39ce9cb96d064172db86907b162f95385fdf5e5bfd066eba8c1a4888";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Request.on field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean on = false;
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Request.wait field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean wait = false;
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Request.timeout field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float timeout = Float.intBitsToFloat(0x40400000);
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Request.delay_sec field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float delay_sec = Float.intBitsToFloat(0x00000000);
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Request.sync field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean sync = true;
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Request.hardware_version field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short hardware_version = 0;

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
        public Ros2Xarm_msgsSrvVacuumGripperCtrl_Request()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvVacuumGripperCtrl_Request> CODEC = new Codec<Ros2Xarm_msgsSrvVacuumGripperCtrl_Request>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/VacuumGripperCtrl_Request.
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
            public byte[] encode(Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvVacuumGripperCtrl_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/VacuumGripperCtrl_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvVacuumGripperCtrl_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value = readRos2Xarm_msgsSrvVacuumGripperCtrl_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvVacuumGripperCtrl_Request(Codecs.Writer writer, Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value)
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
    private static Ros2Xarm_msgsSrvVacuumGripperCtrl_Request readRos2Xarm_msgsSrvVacuumGripperCtrl_Request(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvVacuumGripperCtrl_Request value = new Ros2Xarm_msgsSrvVacuumGripperCtrl_Request();
        value.on = readBool(reader);
        value.wait = readBool(reader);
        value.timeout = reader.f32();
        value.delay_sec = reader.f32();
        value.sync = readBool(reader);
        value.hardware_version = (short)reader.integer(2, true);
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
    public static final class Ros2Xarm_msgsSrvVacuumGripperCtrl_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "xarm_msgs/srv/VacuumGripperCtrl_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa202ccf3d36ec8ff49c0e32f3af07e18d19a6694566fcbaf8ce9ff4a79f352d";
        public static final int MIN_WIRE_BYTES = 6, MAX_WIRE_BYTES = 262;
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Response.ret field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short ret = 0;
        /**
         * @brief Original xarm_msgs/srv/VacuumGripperCtrl_Response.message field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String message = "";

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
        public Ros2Xarm_msgsSrvVacuumGripperCtrl_Response()
        {
        }

        public static final Codec<Ros2Xarm_msgsSrvVacuumGripperCtrl_Response> CODEC = new Codec<Ros2Xarm_msgsSrvVacuumGripperCtrl_Response>() {
            /**
             * @brief Encode the complete ordered value for xarm_msgs/srv/VacuumGripperCtrl_Response.
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
            public byte[] encode(Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Xarm_msgsSrvVacuumGripperCtrl_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for xarm_msgs/srv/VacuumGripperCtrl_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Xarm_msgsSrvVacuumGripperCtrl_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value = readRos2Xarm_msgsSrvVacuumGripperCtrl_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Xarm_msgsSrvVacuumGripperCtrl_Response(Codecs.Writer writer, Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.ret;
        writer.integer(part0, 2, true);
        String part1 = value.message;

        writeText(writer, part1, 256);
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
    private static Ros2Xarm_msgsSrvVacuumGripperCtrl_Response readRos2Xarm_msgsSrvVacuumGripperCtrl_Response(Codecs.Reader reader)
    {
        Ros2Xarm_msgsSrvVacuumGripperCtrl_Response value = new Ros2Xarm_msgsSrvVacuumGripperCtrl_Response();
        value.ret = (short)reader.integer(2, true);
        value.message = readText(reader, 256);
        return value;
    }
}
