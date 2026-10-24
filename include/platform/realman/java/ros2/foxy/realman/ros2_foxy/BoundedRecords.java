/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original realman/ros2_foxy canonical value domain.
 * @details The selected domain contains 80 complete record/components and 339 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package realman.ros2_foxy;

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
     * @brief Preserve all original rm_ros_interfaces/msg/Alohastate fields.
     * @details 2 ordered fields, canonical extent 4..4 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros2Rm_ros_interfacesMsgAlohastate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Alohastate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 4;
        /**
         * @brief Original rm_ros_interfaces/msg/Alohastate.io1_state field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short io1_state = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Alohastate.io2_state field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short io2_state = 0;

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
        public Ros2Rm_ros_interfacesMsgAlohastate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgAlohastate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgAlohastate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Alohastate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgAlohastate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgAlohastate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Alohastate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgAlohastate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgAlohastate value = readRos2Rm_ros_interfacesMsgAlohastate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgAlohastate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgAlohastate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.io1_state;
        writer.integer(part0, 2, true);
        short part1 = value.io2_state;
        writer.integer(part1, 2, true);
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
    private static Ros2Rm_ros_interfacesMsgAlohastate readRos2Rm_ros_interfacesMsgAlohastate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgAlohastate value = new Ros2Rm_ros_interfacesMsgAlohastate();
        value.io1_state = (short)reader.integer(2, true);
        value.io2_state = (short)reader.integer(2, true);
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
    public static final class Ros2Rm_ros_interfacesMsgArmcurrentstatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Armcurrentstatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_ros_interfaces/msg/Armcurrentstatus.arm_current_status field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int arm_current_status = 0;

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
        public Ros2Rm_ros_interfacesMsgArmcurrentstatus()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgArmcurrentstatus> CODEC = new Codec<Ros2Rm_ros_interfacesMsgArmcurrentstatus>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armcurrentstatus.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgArmcurrentstatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgArmcurrentstatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armcurrentstatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgArmcurrentstatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgArmcurrentstatus value = readRos2Rm_ros_interfacesMsgArmcurrentstatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgArmcurrentstatus(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgArmcurrentstatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.arm_current_status;
        writer.integer(part0, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgArmcurrentstatus readRos2Rm_ros_interfacesMsgArmcurrentstatus(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgArmcurrentstatus value = new Ros2Rm_ros_interfacesMsgArmcurrentstatus();
        value.arm_current_status = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgArmoriginalstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Armoriginalstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 96;
        /**
         * @brief Original rm_ros_interfaces/msg/Armoriginalstate.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Armoriginalstate.pose field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] pose = new float[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Armoriginalstate.err field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Armoriginalstate.err_len field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_len = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Armoriginalstate.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros2Rm_ros_interfacesMsgArmoriginalstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgArmoriginalstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgArmoriginalstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armoriginalstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgArmoriginalstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgArmoriginalstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armoriginalstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgArmoriginalstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgArmoriginalstate value = readRos2Rm_ros_interfacesMsgArmoriginalstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgArmoriginalstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgArmoriginalstate value)
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
        float[] part1 = value.pose;
        if(part1 == null || part1.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
        int part2 = value.err;
        writer.integer(part2, 2, false);
        int part3 = value.err_len;
        writer.integer(part3, 1, false);
        int part4 = value.dof;
        writer.integer(part4, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgArmoriginalstate readRos2Rm_ros_interfacesMsgArmoriginalstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgArmoriginalstate value = new Ros2Rm_ros_interfacesMsgArmoriginalstate();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.pose = new float[6];
        for(int i = 0; i < value.pose.length; ++i)
            value.pose[i] = reader.f32();
        value.err = (int)reader.integer(2, false);
        value.err_len = (int)reader.integer(1, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Softwarebuildinfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 520;
        /**
         * @brief Original rm_ros_interfaces/msg/Softwarebuildinfo.build_time field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String build_time = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Softwarebuildinfo.version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String version = "";

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
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgSoftwarebuildinfo> CODEC = new Codec<Ros2Rm_ros_interfacesMsgSoftwarebuildinfo>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Softwarebuildinfo.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Softwarebuildinfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.build_time;

        writeText(writer, part0, 256);
        String part1 = value.version;

        writeText(writer, part1, 256);
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
    private static Ros2Rm_ros_interfacesMsgSoftwarebuildinfo readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo value = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        value.build_time = readText(reader, 256);
        value.version = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgArmsoftversion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Armsoftversion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c";
        public static final int MIN_WIRE_BYTES = 69, MAX_WIRE_BYTES = 4421;
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.product_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String product_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.controller_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String controller_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.algorithm_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String algorithm_info = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.ctrl_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo ctrl_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.dynamic_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String dynamic_info = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.plan_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo plan_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.com_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo com_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.program_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo program_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.planversion field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String planversion = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.ctrlversion field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ctrlversion = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.kernal1 field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String kernal1 = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.kernal2 field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String kernal2 = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversion.productversion field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String productversion = "";

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
        public Ros2Rm_ros_interfacesMsgArmsoftversion()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgArmsoftversion> CODEC = new Codec<Ros2Rm_ros_interfacesMsgArmsoftversion>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armsoftversion.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgArmsoftversion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgArmsoftversion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armsoftversion.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgArmsoftversion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgArmsoftversion value = readRos2Rm_ros_interfacesMsgArmsoftversion(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgArmsoftversion(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgArmsoftversion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.product_version;
        writeText(writer, part0, 256);
        String part1 = value.controller_version;
        writeText(writer, part1, 256);
        String part2 = value.algorithm_info;
        writeText(writer, part2, 256);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part3 = value.ctrl_info;
        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part3);
        String part4 = value.dynamic_info;
        writeText(writer, part4, 256);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part5 = value.plan_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part5);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part6 = value.com_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part6);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part7 = value.program_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part7);
        boolean part8 = value.state;
        writer.integer(part8 ? 1 : 0, 1, false);
        String part9 = value.planversion;

        writeText(writer, part9, 256);
        String part10 = value.ctrlversion;

        writeText(writer, part10, 256);
        String part11 = value.kernal1;

        writeText(writer, part11, 256);
        String part12 = value.kernal2;

        writeText(writer, part12, 256);
        String part13 = value.productversion;

        writeText(writer, part13, 256);
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
    private static Ros2Rm_ros_interfacesMsgArmsoftversion readRos2Rm_ros_interfacesMsgArmsoftversion(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgArmsoftversion value = new Ros2Rm_ros_interfacesMsgArmsoftversion();
        value.product_version = readText(reader, 256);
        value.controller_version = readText(reader, 256);
        value.algorithm_info = readText(reader, 256);
        value.ctrl_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.dynamic_info = readText(reader, 256);
        value.plan_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.com_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.program_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.state = readBool(reader);
        value.planversion = readText(reader, 256);
        value.ctrlversion = readText(reader, 256);
        value.kernal1 = readText(reader, 256);
        value.kernal2 = readText(reader, 256);
        value.productversion = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgArmsoftversionv3
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Armsoftversionv3";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 2080;
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv3.product_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String product_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv3.controller_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String controller_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv3.algorithm_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String algorithm_info = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv3.ctrl_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo ctrl_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv3.dynamic_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String dynamic_info = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv3.plan_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo plan_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();

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
        public Ros2Rm_ros_interfacesMsgArmsoftversionv3()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgArmsoftversionv3> CODEC = new Codec<Ros2Rm_ros_interfacesMsgArmsoftversionv3>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armsoftversionv3.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgArmsoftversionv3 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgArmsoftversionv3(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armsoftversionv3.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgArmsoftversionv3 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgArmsoftversionv3 value = readRos2Rm_ros_interfacesMsgArmsoftversionv3(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgArmsoftversionv3(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgArmsoftversionv3 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.product_version;

        writeText(writer, part0, 256);
        String part1 = value.controller_version;

        writeText(writer, part1, 256);
        String part2 = value.algorithm_info;

        writeText(writer, part2, 256);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part3 = value.ctrl_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part3);
        String part4 = value.dynamic_info;

        writeText(writer, part4, 256);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part5 = value.plan_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part5);
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
    private static Ros2Rm_ros_interfacesMsgArmsoftversionv3 readRos2Rm_ros_interfacesMsgArmsoftversionv3(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgArmsoftversionv3 value = new Ros2Rm_ros_interfacesMsgArmsoftversionv3();
        value.product_version = readText(reader, 256);
        value.controller_version = readText(reader, 256);
        value.algorithm_info = readText(reader, 256);
        value.ctrl_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.dynamic_info = readText(reader, 256);
        value.plan_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgArmsoftversionv4
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Armsoftversionv4";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d";
        public static final int MIN_WIRE_BYTES = 36, MAX_WIRE_BYTES = 2340;
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv4.product_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String product_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv4.controller_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String controller_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv4.algorithm_info field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String algorithm_info = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv4.ctrl_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo ctrl_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv4.com_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo com_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();
        /**
         * @brief Original rm_ros_interfaces/msg/Armsoftversionv4.program_info field.
         * @details rm_ros_interfaces/msg/Softwarebuildinfo scalar, count/quota 0, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgSoftwarebuildinfo program_info = new Ros2Rm_ros_interfacesMsgSoftwarebuildinfo();

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
        public Ros2Rm_ros_interfacesMsgArmsoftversionv4()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgArmsoftversionv4> CODEC = new Codec<Ros2Rm_ros_interfacesMsgArmsoftversionv4>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armsoftversionv4.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgArmsoftversionv4 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgArmsoftversionv4(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armsoftversionv4.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgArmsoftversionv4 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgArmsoftversionv4 value = readRos2Rm_ros_interfacesMsgArmsoftversionv4(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgArmsoftversionv4(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgArmsoftversionv4 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.product_version;

        writeText(writer, part0, 256);
        String part1 = value.controller_version;

        writeText(writer, part1, 256);
        String part2 = value.algorithm_info;

        writeText(writer, part2, 256);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part3 = value.ctrl_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part3);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part4 = value.com_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part4);
        Ros2Rm_ros_interfacesMsgSoftwarebuildinfo part5 = value.program_info;

        writeRos2Rm_ros_interfacesMsgSoftwarebuildinfo(writer, part5);
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
    private static Ros2Rm_ros_interfacesMsgArmsoftversionv4 readRos2Rm_ros_interfacesMsgArmsoftversionv4(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgArmsoftversionv4 value = new Ros2Rm_ros_interfacesMsgArmsoftversionv4();
        value.product_version = readText(reader, 256);
        value.controller_version = readText(reader, 256);
        value.algorithm_info = readText(reader, 256);
        value.ctrl_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.com_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
        value.program_info = readRos2Rm_ros_interfacesMsgSoftwarebuildinfo(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgArmstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Armstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7";
        public static final int MIN_WIRE_BYTES = 64, MAX_WIRE_BYTES = 128;
        /**
         * @brief Original rm_ros_interfaces/msg/Armstate.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Armstate.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Armstate.err field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Armstate.err_len field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_len = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Armstate.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros2Rm_ros_interfacesMsgArmstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgArmstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgArmstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Armstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgArmstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgArmstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Armstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgArmstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgArmstate value = readRos2Rm_ros_interfacesMsgArmstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgArmstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgArmstate value)
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
        Ros2Geometry_msgsMsgPose part1 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part1);
        int part2 = value.err;
        writer.integer(part2, 2, false);
        int part3 = value.err_len;
        writer.integer(part3, 1, false);
        int part4 = value.dof;
        writer.integer(part4, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgArmstate readRos2Rm_ros_interfacesMsgArmstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgArmstate value = new Ros2Rm_ros_interfacesMsgArmstate();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.err = (int)reader.integer(2, false);
        value.err_len = (int)reader.integer(1, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgCartepos
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Cartepos";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13";
        public static final int MIN_WIRE_BYTES = 57, MAX_WIRE_BYTES = 57;
        /**
         * @brief Original rm_ros_interfaces/msg/Cartepos.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Cartepos.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;

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
        public Ros2Rm_ros_interfacesMsgCartepos()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgCartepos> CODEC = new Codec<Ros2Rm_ros_interfacesMsgCartepos>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Cartepos.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgCartepos value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgCartepos(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Cartepos.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgCartepos decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgCartepos value = readRos2Rm_ros_interfacesMsgCartepos(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgCartepos(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgCartepos value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
        boolean part1 = value.follow;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgCartepos readRos2Rm_ros_interfacesMsgCartepos(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgCartepos value = new Ros2Rm_ros_interfacesMsgCartepos();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.follow = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgCarteposcustom
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Carteposcustom";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c";
        public static final int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;
        /**
         * @brief Original rm_ros_interfaces/msg/Carteposcustom.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Carteposcustom.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Carteposcustom.trajectory_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Carteposcustom.radio field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int radio = 0;

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
        public Ros2Rm_ros_interfacesMsgCarteposcustom()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgCarteposcustom> CODEC = new Codec<Ros2Rm_ros_interfacesMsgCarteposcustom>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Carteposcustom.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgCarteposcustom value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgCarteposcustom(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Carteposcustom.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgCarteposcustom decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgCarteposcustom value = readRos2Rm_ros_interfacesMsgCarteposcustom(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgCarteposcustom(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgCarteposcustom value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
        boolean part1 = value.follow;
        writer.integer(part1 ? 1 : 0, 1, false);
        int part2 = value.trajectory_mode;
        writer.integer(part2, 1, false);
        int part3 = value.radio;
        writer.integer(part3, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgCarteposcustom readRos2Rm_ros_interfacesMsgCarteposcustom(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgCarteposcustom value = new Ros2Rm_ros_interfacesMsgCarteposcustom();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.follow = readBool(reader);
        value.trajectory_mode = (int)reader.integer(1, false);
        value.radio = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgExpandpos
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Expandpos";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandpos.pos field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int pos = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandpos.speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandpos.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros2Rm_ros_interfacesMsgExpandpos()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgExpandpos> CODEC = new Codec<Ros2Rm_ros_interfacesMsgExpandpos>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Expandpos.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgExpandpos value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgExpandpos(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Expandpos.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgExpandpos decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgExpandpos value = readRos2Rm_ros_interfacesMsgExpandpos(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgExpandpos(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgExpandpos value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pos;
        writer.integer(part0, 4, true);
        int part1 = value.speed;
        writer.integer(part1, 2, false);
        boolean part2 = value.block;
        writer.integer(part2 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgExpandpos readRos2Rm_ros_interfacesMsgExpandpos(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgExpandpos value = new Ros2Rm_ros_interfacesMsgExpandpos();
        value.pos = (int)reader.integer(4, true);
        value.speed = (int)reader.integer(2, false);
        value.block = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgExpandstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Expandstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 12;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandstate.pos field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int pos = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandstate.current field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int current = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandstate.err_flag field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_flag = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Expandstate.mode field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mode = 0;

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
        public Ros2Rm_ros_interfacesMsgExpandstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgExpandstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgExpandstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Expandstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgExpandstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgExpandstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Expandstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgExpandstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgExpandstate value = readRos2Rm_ros_interfacesMsgExpandstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgExpandstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgExpandstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pos;
        writer.integer(part0, 4, true);
        int part1 = value.current;
        writer.integer(part1, 4, true);
        int part2 = value.err_flag;
        writer.integer(part2, 2, false);
        short part3 = value.mode;
        writer.integer(part3, 2, true);
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
    private static Ros2Rm_ros_interfacesMsgExpandstate readRos2Rm_ros_interfacesMsgExpandstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgExpandstate value = new Ros2Rm_ros_interfacesMsgExpandstate();
        value.pos = (int)reader.integer(4, true);
        value.current = (int)reader.integer(4, true);
        value.err_flag = (int)reader.integer(2, false);
        value.mode = (short)reader.integer(2, true);
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
    public static final class Ros2Rm_ros_interfacesMsgFlowchartrunstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Flowchartrunstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 525;
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.run_state field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int run_state = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.id field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int id = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.plan_speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.step_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int step_mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.modal_id field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String modal_id = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Flowchartrunstate.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgFlowchartrunstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgFlowchartrunstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgFlowchartrunstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Flowchartrunstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgFlowchartrunstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgFlowchartrunstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Flowchartrunstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgFlowchartrunstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgFlowchartrunstate value = readRos2Rm_ros_interfacesMsgFlowchartrunstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgFlowchartrunstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgFlowchartrunstate value)
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
        boolean part6 = value.state;
        writer.integer(part6 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgFlowchartrunstate readRos2Rm_ros_interfacesMsgFlowchartrunstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgFlowchartrunstate value = new Ros2Rm_ros_interfacesMsgFlowchartrunstate();
        value.run_state = (int)reader.integer(1, false);
        value.id = (int)reader.integer(1, false);
        value.name = readText(reader, 256);
        value.plan_speed = (int)reader.integer(1, false);
        value.step_mode = (int)reader.integer(1, false);
        value.modal_id = readText(reader, 256);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgForce_Position_State
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Force_Position_State";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7";
        public static final int MIN_WIRE_BYTES = 30, MAX_WIRE_BYTES = 30;
        /**
         * @brief Original rm_ros_interfaces/msg/Force_Position_State.joint field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Force_Position_State.force field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Force_Position_State.arm_err field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int arm_err = 0;

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
        public Ros2Rm_ros_interfacesMsgForce_Position_State()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgForce_Position_State> CODEC = new Codec<Ros2Rm_ros_interfacesMsgForce_Position_State>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Force_Position_State.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgForce_Position_State value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgForce_Position_State(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Force_Position_State.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgForce_Position_State decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgForce_Position_State value = readRos2Rm_ros_interfacesMsgForce_Position_State(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgForce_Position_State(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgForce_Position_State value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float[] part0 = value.joint;
        if(part0 == null || part0.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {
            writer.f32(part0[i]);
        }
        float part1 = value.force;
        writer.f32(part1);
        int part2 = value.arm_err;
        writer.integer(part2, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgForce_Position_State readRos2Rm_ros_interfacesMsgForce_Position_State(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgForce_Position_State value = new Ros2Rm_ros_interfacesMsgForce_Position_State();
        value.joint = new float[6];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.force = reader.f32();
        value.arm_err = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgForcepositionmove
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Forcepositionmove";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224";
        public static final int MIN_WIRE_BYTES = 121, MAX_WIRE_BYTES = 185;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.flag field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int flag = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.control_mode field.
         * @details uint8 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] control_mode = new int[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.desired_force field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] desired_force = new float[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.limit_vel field.
         * @details float32 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] limit_vel = new float[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.trajectory_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmove.radio field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int radio = 0;

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
        public Ros2Rm_ros_interfacesMsgForcepositionmove()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgForcepositionmove> CODEC = new Codec<Ros2Rm_ros_interfacesMsgForcepositionmove>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Forcepositionmove.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgForcepositionmove value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgForcepositionmove(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Forcepositionmove.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgForcepositionmove decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgForcepositionmove value = readRos2Rm_ros_interfacesMsgForcepositionmove(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgForcepositionmove(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgForcepositionmove value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
        float[] part1 = value.joint;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.f32(part1[i]);
        }
        int part2 = value.flag;
        writer.integer(part2, 1, false);
        int part3 = value.sensor;
        writer.integer(part3, 1, false);
        int part4 = value.mode;
        writer.integer(part4, 1, false);
        int[] part5 = value.control_mode;
        if(part5 == null || part5.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 1, false);
        }
        boolean part6 = value.follow;
        writer.integer(part6 ? 1 : 0, 1, false);
        float[] part7 = value.desired_force;
        if(part7 == null || part7.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.f32(part7[i]);
        }
        float[] part8 = value.limit_vel;
        if(part8 == null || part8.length != 6)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.f32(part8[i]);
        }
        int part9 = value.trajectory_mode;
        writer.integer(part9, 1, false);
        int part10 = value.radio;
        writer.integer(part10, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgForcepositionmove readRos2Rm_ros_interfacesMsgForcepositionmove(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgForcepositionmove value = new Ros2Rm_ros_interfacesMsgForcepositionmove();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.flag = (int)reader.integer(1, false);
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.control_mode = new int[6];
        for(int i = 0; i < value.control_mode.length; ++i)
            value.control_mode[i] = (int)reader.integer(1, false);
        value.follow = readBool(reader);
        value.desired_force = new float[6];
        for(int i = 0; i < value.desired_force.length; ++i)
            value.desired_force[i] = reader.f32();
        value.limit_vel = new float[6];
        for(int i = 0; i < value.limit_vel.length; ++i)
            value.limit_vel[i] = reader.f32();
        value.trajectory_mode = (int)reader.integer(1, false);
        value.radio = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgForcepositionmovejoint
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Forcepositionmovejoint";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 78;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.dir field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short dir = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.force field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovejoint.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros2Rm_ros_interfacesMsgForcepositionmovejoint()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgForcepositionmovejoint> CODEC = new Codec<Ros2Rm_ros_interfacesMsgForcepositionmovejoint>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Forcepositionmovejoint.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgForcepositionmovejoint value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgForcepositionmovejoint(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Forcepositionmovejoint.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgForcepositionmovejoint decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgForcepositionmovejoint value = readRos2Rm_ros_interfacesMsgForcepositionmovejoint(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgForcepositionmovejoint(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgForcepositionmovejoint value)
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
        short part3 = value.dir;
        writer.integer(part3, 2, true);
        float part4 = value.force;
        writer.f32(part4);
        boolean part5 = value.follow;
        writer.integer(part5 ? 1 : 0, 1, false);
        int part6 = value.dof;
        writer.integer(part6, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgForcepositionmovejoint readRos2Rm_ros_interfacesMsgForcepositionmovejoint(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgForcepositionmovejoint value = new Ros2Rm_ros_interfacesMsgForcepositionmovejoint();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.dir = (short)reader.integer(2, true);
        value.force = reader.f32();
        value.follow = readBool(reader);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgForcepositionmovepose
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Forcepositionmovepose";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3";
        public static final int MIN_WIRE_BYTES = 62, MAX_WIRE_BYTES = 62;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovepose.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovepose.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovepose.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovepose.dir field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dir = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovepose.force field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short force = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Forcepositionmovepose.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;

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
        public Ros2Rm_ros_interfacesMsgForcepositionmovepose()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgForcepositionmovepose> CODEC = new Codec<Ros2Rm_ros_interfacesMsgForcepositionmovepose>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Forcepositionmovepose.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgForcepositionmovepose value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgForcepositionmovepose(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Forcepositionmovepose.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgForcepositionmovepose decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgForcepositionmovepose value = readRos2Rm_ros_interfacesMsgForcepositionmovepose(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgForcepositionmovepose(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgForcepositionmovepose value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
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
    private static Ros2Rm_ros_interfacesMsgForcepositionmovepose readRos2Rm_ros_interfacesMsgForcepositionmovepose(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgForcepositionmovepose value = new Ros2Rm_ros_interfacesMsgForcepositionmovepose();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.dir = (int)reader.integer(1, false);
        value.force = (short)reader.integer(2, true);
        value.follow = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgGetArmState_Command
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/GetArmState_Command";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_ros_interfaces/msg/GetArmState_Command.command field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String command = "";

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
        public Ros2Rm_ros_interfacesMsgGetArmState_Command()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgGetArmState_Command> CODEC = new Codec<Ros2Rm_ros_interfacesMsgGetArmState_Command>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/GetArmState_Command.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgGetArmState_Command value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgGetArmState_Command(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/GetArmState_Command.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgGetArmState_Command decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgGetArmState_Command value = readRos2Rm_ros_interfacesMsgGetArmState_Command(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgGetArmState_Command(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgGetArmState_Command value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.command;

        writeText(writer, part0, 256);
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
    private static Ros2Rm_ros_interfacesMsgGetArmState_Command readRos2Rm_ros_interfacesMsgGetArmState_Command(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgGetArmState_Command value = new Ros2Rm_ros_interfacesMsgGetArmState_Command();
        value.command = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgGetallframe
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Getallframe";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef";
        public static final int MIN_WIRE_BYTES = 40, MAX_WIRE_BYTES = 2600;
        /**
         * @brief Original rm_ros_interfaces/msg/Getallframe.frame_name field.
         * @details string array, count/quota 10, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String[] frame_name = new String[10];

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
        public Ros2Rm_ros_interfacesMsgGetallframe()
        {
            for(int i = 0; i < 10; ++i)
                this.frame_name[i] = "";
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgGetallframe> CODEC = new Codec<Ros2Rm_ros_interfacesMsgGetallframe>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Getallframe.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgGetallframe value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgGetallframe(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Getallframe.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgGetallframe decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgGetallframe value = readRos2Rm_ros_interfacesMsgGetallframe(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgGetallframe(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgGetallframe value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.frame_name;
        if(part0 == null || part0.length != 10)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part0.length; ++i)
        {

            writeText(writer, part0[i], 256);
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
    private static Ros2Rm_ros_interfacesMsgGetallframe readRos2Rm_ros_interfacesMsgGetallframe(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgGetallframe value = new Ros2Rm_ros_interfacesMsgGetallframe();
        value.frame_name = new String[10];
        for(int i = 0; i < value.frame_name.length; ++i)
            value.frame_name[i] = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Getmodbustcpmasterlist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Original rm_ros_interfaces/msg/Getmodbustcpmasterlist.page_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Getmodbustcpmasterlist.page_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Getmodbustcpmasterlist.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";

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
        public Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist> CODEC = new Codec<Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Getmodbustcpmasterlist.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Getmodbustcpmasterlist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value = readRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value)
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
    private static Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist readRos2Rm_ros_interfacesMsgGetmodbustcpmasterlist(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist value = new Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist();
        value.page_num = (int)reader.integer(4, true);
        value.page_size = (int)reader.integer(4, true);
        value.vague_search = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgGettrajectorylist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Gettrajectorylist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 268;
        /**
         * @brief Original rm_ros_interfaces/msg/Gettrajectorylist.page_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Gettrajectorylist.page_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Gettrajectorylist.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";

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
        public Ros2Rm_ros_interfacesMsgGettrajectorylist()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgGettrajectorylist> CODEC = new Codec<Ros2Rm_ros_interfacesMsgGettrajectorylist>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Gettrajectorylist.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgGettrajectorylist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgGettrajectorylist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Gettrajectorylist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgGettrajectorylist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgGettrajectorylist value = readRos2Rm_ros_interfacesMsgGettrajectorylist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgGettrajectorylist(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgGettrajectorylist value)
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
    private static Ros2Rm_ros_interfacesMsgGettrajectorylist readRos2Rm_ros_interfacesMsgGettrajectorylist(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgGettrajectorylist value = new Ros2Rm_ros_interfacesMsgGettrajectorylist();
        value.page_num = (int)reader.integer(4, true);
        value.page_size = (int)reader.integer(4, true);
        value.vague_search = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgGripperpick
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Gripperpick";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2";
        public static final int MIN_WIRE_BYTES = 7, MAX_WIRE_BYTES = 7;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperpick.speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperpick.force field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int force = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperpick.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperpick.timeout field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout = 0;

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
        public Ros2Rm_ros_interfacesMsgGripperpick()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgGripperpick> CODEC = new Codec<Ros2Rm_ros_interfacesMsgGripperpick>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Gripperpick.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgGripperpick value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgGripperpick(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Gripperpick.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgGripperpick decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgGripperpick value = readRos2Rm_ros_interfacesMsgGripperpick(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgGripperpick(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgGripperpick value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.speed;
        writer.integer(part0, 2, false);
        int part1 = value.force;
        writer.integer(part1, 2, false);
        boolean part2 = value.block;
        writer.integer(part2 ? 1 : 0, 1, false);
        int part3 = value.timeout;
        writer.integer(part3, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgGripperpick readRos2Rm_ros_interfacesMsgGripperpick(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgGripperpick value = new Ros2Rm_ros_interfacesMsgGripperpick();
        value.speed = (int)reader.integer(2, false);
        value.force = (int)reader.integer(2, false);
        value.block = readBool(reader);
        value.timeout = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgGripperset
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Gripperset";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperset.position field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int position = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperset.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Gripperset.timeout field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout = 0;

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
        public Ros2Rm_ros_interfacesMsgGripperset()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgGripperset> CODEC = new Codec<Ros2Rm_ros_interfacesMsgGripperset>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Gripperset.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgGripperset value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgGripperset(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Gripperset.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgGripperset decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgGripperset value = readRos2Rm_ros_interfacesMsgGripperset(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgGripperset(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgGripperset value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.position;
        writer.integer(part0, 2, false);
        boolean part1 = value.block;
        writer.integer(part1 ? 1 : 0, 1, false);
        int part2 = value.timeout;
        writer.integer(part2, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgGripperset readRos2Rm_ros_interfacesMsgGripperset(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgGripperset value = new Ros2Rm_ros_interfacesMsgGripperset();
        value.position = (int)reader.integer(2, false);
        value.block = readBool(reader);
        value.timeout = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgHandangle
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Handangle";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;
        /**
         * @brief Original rm_ros_interfaces/msg/Handangle.hand_angle field.
         * @details int16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short[] hand_angle = new short[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Handangle.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros2Rm_ros_interfacesMsgHandangle()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgHandangle> CODEC = new Codec<Ros2Rm_ros_interfacesMsgHandangle>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handangle.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgHandangle value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgHandangle(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handangle.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgHandangle decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgHandangle value = readRos2Rm_ros_interfacesMsgHandangle(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgHandangle(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgHandangle value)
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
    private static Ros2Rm_ros_interfacesMsgHandangle readRos2Rm_ros_interfacesMsgHandangle(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgHandangle value = new Ros2Rm_ros_interfacesMsgHandangle();
        value.hand_angle = new short[6];
        for(int i = 0; i < value.hand_angle.length; ++i)
            value.hand_angle[i] = (short)reader.integer(2, true);
        value.block = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgHandforce
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Handforce";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_ros_interfaces/msg/Handforce.hand_force field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int hand_force = 0;

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
        public Ros2Rm_ros_interfacesMsgHandforce()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgHandforce> CODEC = new Codec<Ros2Rm_ros_interfacesMsgHandforce>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handforce.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgHandforce value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgHandforce(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handforce.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgHandforce decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgHandforce value = readRos2Rm_ros_interfacesMsgHandforce(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgHandforce(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgHandforce value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.hand_force;
        writer.integer(part0, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgHandforce readRos2Rm_ros_interfacesMsgHandforce(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgHandforce value = new Ros2Rm_ros_interfacesMsgHandforce();
        value.hand_force = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgHandposture
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Handposture";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_ros_interfaces/msg/Handposture.posture_num field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int posture_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Handposture.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Handposture.timeout field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout = 0;

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
        public Ros2Rm_ros_interfacesMsgHandposture()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgHandposture> CODEC = new Codec<Ros2Rm_ros_interfacesMsgHandposture>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handposture.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgHandposture value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgHandposture(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handposture.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgHandposture decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgHandposture value = readRos2Rm_ros_interfacesMsgHandposture(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgHandposture(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgHandposture value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.posture_num;
        writer.integer(part0, 2, false);
        boolean part1 = value.block;
        writer.integer(part1 ? 1 : 0, 1, false);
        int part2 = value.timeout;
        writer.integer(part2, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgHandposture readRos2Rm_ros_interfacesMsgHandposture(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgHandposture value = new Ros2Rm_ros_interfacesMsgHandposture();
        value.posture_num = (int)reader.integer(2, false);
        value.block = readBool(reader);
        value.timeout = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgHandseq
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Handseq";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_ros_interfaces/msg/Handseq.seq_num field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int seq_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Handseq.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Handseq.timeout field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int timeout = 0;

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
        public Ros2Rm_ros_interfacesMsgHandseq()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgHandseq> CODEC = new Codec<Ros2Rm_ros_interfacesMsgHandseq>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handseq.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgHandseq value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgHandseq(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handseq.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgHandseq decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgHandseq value = readRos2Rm_ros_interfacesMsgHandseq(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgHandseq(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgHandseq value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.seq_num;
        writer.integer(part0, 2, false);
        boolean part1 = value.block;
        writer.integer(part1 ? 1 : 0, 1, false);
        int part2 = value.timeout;
        writer.integer(part2, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgHandseq readRos2Rm_ros_interfacesMsgHandseq(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgHandseq value = new Ros2Rm_ros_interfacesMsgHandseq();
        value.seq_num = (int)reader.integer(2, false);
        value.block = readBool(reader);
        value.timeout = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgHandspeed
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Handspeed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_ros_interfaces/msg/Handspeed.hand_speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int hand_speed = 0;

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
        public Ros2Rm_ros_interfacesMsgHandspeed()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgHandspeed> CODEC = new Codec<Ros2Rm_ros_interfacesMsgHandspeed>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handspeed.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgHandspeed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgHandspeed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handspeed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgHandspeed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgHandspeed value = readRos2Rm_ros_interfacesMsgHandspeed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgHandspeed(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgHandspeed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.hand_speed;
        writer.integer(part0, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgHandspeed readRos2Rm_ros_interfacesMsgHandspeed(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgHandspeed value = new Ros2Rm_ros_interfacesMsgHandspeed();
        value.hand_speed = (int)reader.integer(2, false);
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
    public static final class Ros2Rm_ros_interfacesMsgHandstatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Handstatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3";
        public static final int MIN_WIRE_BYTES = 50, MAX_WIRE_BYTES = 50;
        /**
         * @brief Original rm_ros_interfaces/msg/Handstatus.hand_angle field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_angle = new int[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Handstatus.hand_pos field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_pos = new int[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Handstatus.hand_state field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_state = new int[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Handstatus.hand_force field.
         * @details uint16 array, count/quota 6, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] hand_force = new int[6];
        /**
         * @brief Original rm_ros_interfaces/msg/Handstatus.hand_err field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int hand_err = 0;

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
        public Ros2Rm_ros_interfacesMsgHandstatus()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgHandstatus> CODEC = new Codec<Ros2Rm_ros_interfacesMsgHandstatus>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Handstatus.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgHandstatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgHandstatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Handstatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgHandstatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgHandstatus value = readRos2Rm_ros_interfacesMsgHandstatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgHandstatus(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgHandstatus value)
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
    private static Ros2Rm_ros_interfacesMsgHandstatus readRos2Rm_ros_interfacesMsgHandstatus(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgHandstatus value = new Ros2Rm_ros_interfacesMsgHandstatus();
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
     * @brief Preserve all original rm_ros_interfaces/msg/Jointcurrent fields.
     * @details 1 ordered fields, canonical extent 4..68 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros2Rm_ros_interfacesMsgJointcurrent
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointcurrent";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointcurrent.joint_current field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_current = new float[0];

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
        public Ros2Rm_ros_interfacesMsgJointcurrent()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointcurrent> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointcurrent>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointcurrent.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointcurrent value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointcurrent(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointcurrent.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointcurrent decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointcurrent value = readRos2Rm_ros_interfacesMsgJointcurrent(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointcurrent(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointcurrent value)
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
    private static Ros2Rm_ros_interfacesMsgJointcurrent readRos2Rm_ros_interfacesMsgJointcurrent(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointcurrent value = new Ros2Rm_ros_interfacesMsgJointcurrent();
        value.joint_current = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_current.length; ++i)
            value.joint_current[i] = reader.f32();
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
    public static final class Ros2Rm_ros_interfacesMsgJointenflag
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointenflag";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 20;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointenflag.joint_en_flag field.
         * @details bool sequence, count/quota 16, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean[] joint_en_flag = new boolean[0];

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
        public Ros2Rm_ros_interfacesMsgJointenflag()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointenflag> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointenflag>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointenflag.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointenflag value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointenflag(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointenflag.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointenflag decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointenflag value = readRos2Rm_ros_interfacesMsgJointenflag(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointenflag(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointenflag value)
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
    private static Ros2Rm_ros_interfacesMsgJointenflag readRos2Rm_ros_interfacesMsgJointenflag(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointenflag value = new Ros2Rm_ros_interfacesMsgJointenflag();
        value.joint_en_flag = new boolean[readCount(reader, 16, 1)];
        for(int i = 0; i < value.joint_en_flag.length; ++i)
            value.joint_en_flag[i] = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgJointerrclear
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointerrclear";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointerrclear.joint_num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int joint_num = 0;

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
        public Ros2Rm_ros_interfacesMsgJointerrclear()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointerrclear> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointerrclear>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointerrclear.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointerrclear value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointerrclear(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointerrclear.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointerrclear decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointerrclear value = readRos2Rm_ros_interfacesMsgJointerrclear(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointerrclear(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointerrclear value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.joint_num;
        writer.integer(part0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgJointerrclear readRos2Rm_ros_interfacesMsgJointerrclear(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointerrclear value = new Ros2Rm_ros_interfacesMsgJointerrclear();
        value.joint_num = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgJointerrorcode
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointerrorcode";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 37;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointerrorcode.joint_error field.
         * @details uint16 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] joint_error = new int[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Jointerrorcode.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros2Rm_ros_interfacesMsgJointerrorcode()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointerrorcode> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointerrorcode>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointerrorcode.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointerrorcode value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointerrorcode(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointerrorcode.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointerrorcode decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointerrorcode value = readRos2Rm_ros_interfacesMsgJointerrorcode(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointerrorcode(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointerrorcode value)
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
        int part1 = value.dof;
        writer.integer(part1, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgJointerrorcode readRos2Rm_ros_interfacesMsgJointerrorcode(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointerrorcode value = new Ros2Rm_ros_interfacesMsgJointerrorcode();
        value.joint_error = new int[readCount(reader, 16, 2)];
        for(int i = 0; i < value.joint_error.length; ++i)
            value.joint_error[i] = (int)reader.integer(2, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgJointpos
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointpos";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9";
        public static final int MIN_WIRE_BYTES = 10, MAX_WIRE_BYTES = 74;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointpos.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Jointpos.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointpos.expand field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float expand = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointpos.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros2Rm_ros_interfacesMsgJointpos()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointpos> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointpos>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointpos.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointpos value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointpos(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointpos.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointpos decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointpos value = readRos2Rm_ros_interfacesMsgJointpos(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointpos(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointpos value)
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
        boolean part1 = value.follow;
        writer.integer(part1 ? 1 : 0, 1, false);
        float part2 = value.expand;
        writer.f32(part2);
        int part3 = value.dof;
        writer.integer(part3, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgJointpos readRos2Rm_ros_interfacesMsgJointpos(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointpos value = new Ros2Rm_ros_interfacesMsgJointpos();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.follow = readBool(reader);
        value.expand = reader.f32();
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgJointposcustom
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointposcustom";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 76;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposcustom.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposcustom.follow field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean follow = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposcustom.expand field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float expand = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposcustom.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposcustom.trajectory_mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposcustom.radio field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int radio = 0;

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
        public Ros2Rm_ros_interfacesMsgJointposcustom()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointposcustom> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointposcustom>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointposcustom.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointposcustom value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointposcustom(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointposcustom.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointposcustom decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointposcustom value = readRos2Rm_ros_interfacesMsgJointposcustom(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointposcustom(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointposcustom value)
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
        boolean part1 = value.follow;
        writer.integer(part1 ? 1 : 0, 1, false);
        float part2 = value.expand;
        writer.f32(part2);
        int part3 = value.dof;
        writer.integer(part3, 1, false);
        int part4 = value.trajectory_mode;
        writer.integer(part4, 1, false);
        int part5 = value.radio;
        writer.integer(part5, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgJointposcustom readRos2Rm_ros_interfacesMsgJointposcustom(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointposcustom value = new Ros2Rm_ros_interfacesMsgJointposcustom();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.follow = readBool(reader);
        value.expand = reader.f32();
        value.dof = (int)reader.integer(1, false);
        value.trajectory_mode = (int)reader.integer(1, false);
        value.radio = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgJointposeeuler
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointposeeuler";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposeeuler.euler field.
         * @details float32 array, count/quota 3, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] euler = new float[3];
        /**
         * @brief Original rm_ros_interfaces/msg/Jointposeeuler.position field.
         * @details float32 array, count/quota 3, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float[] position = new float[3];

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
        public Ros2Rm_ros_interfacesMsgJointposeeuler()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointposeeuler> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointposeeuler>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointposeeuler.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointposeeuler value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointposeeuler(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointposeeuler.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointposeeuler decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointposeeuler value = readRos2Rm_ros_interfacesMsgJointposeeuler(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointposeeuler(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointposeeuler value)
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
    private static Ros2Rm_ros_interfacesMsgJointposeeuler readRos2Rm_ros_interfacesMsgJointposeeuler(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointposeeuler value = new Ros2Rm_ros_interfacesMsgJointposeeuler();
        value.euler = new float[3];
        for(int i = 0; i < value.euler.length; ++i)
            value.euler[i] = reader.f32();
        value.position = new float[3];
        for(int i = 0; i < value.position.length; ++i)
            value.position[i] = reader.f32();
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
    public static final class Ros2Rm_ros_interfacesMsgJointspeed
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointspeed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointspeed.joint_speed field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_speed = new float[0];

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
        public Ros2Rm_ros_interfacesMsgJointspeed()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointspeed> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointspeed>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointspeed.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointspeed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointspeed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointspeed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointspeed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointspeed value = readRos2Rm_ros_interfacesMsgJointspeed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointspeed(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointspeed value)
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
    private static Ros2Rm_ros_interfacesMsgJointspeed readRos2Rm_ros_interfacesMsgJointspeed(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointspeed value = new Ros2Rm_ros_interfacesMsgJointspeed();
        value.joint_speed = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_speed.length; ++i)
            value.joint_speed[i] = reader.f32();
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
    public static final class Ros2Rm_ros_interfacesMsgJointteach
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointteach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointteach.num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointteach.direction field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int direction = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointteach.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;

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
        public Ros2Rm_ros_interfacesMsgJointteach()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointteach> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointteach>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointteach.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointteach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointteach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointteach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointteach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointteach value = readRos2Rm_ros_interfacesMsgJointteach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointteach(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointteach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.num;
        writer.integer(part0, 1, false);
        int part1 = value.direction;
        writer.integer(part1, 1, false);
        int part2 = value.speed;
        writer.integer(part2, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgJointteach readRos2Rm_ros_interfacesMsgJointteach(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointteach value = new Ros2Rm_ros_interfacesMsgJointteach();
        value.num = (int)reader.integer(1, false);
        value.direction = (int)reader.integer(1, false);
        value.speed = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgJointtemperature
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointtemperature";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointtemperature.joint_temperature field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_temperature = new float[0];

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
        public Ros2Rm_ros_interfacesMsgJointtemperature()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointtemperature> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointtemperature>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointtemperature.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointtemperature value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointtemperature(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointtemperature.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointtemperature decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointtemperature value = readRos2Rm_ros_interfacesMsgJointtemperature(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointtemperature(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointtemperature value)
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
    private static Ros2Rm_ros_interfacesMsgJointtemperature readRos2Rm_ros_interfacesMsgJointtemperature(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointtemperature value = new Ros2Rm_ros_interfacesMsgJointtemperature();
        value.joint_temperature = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_temperature.length; ++i)
            value.joint_temperature[i] = reader.f32();
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
    public static final class Ros2Rm_ros_interfacesMsgJointversion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointversion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 4165;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointversion.joint_version field.
         * @details string sequence, count/quota 16, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String[] joint_version = new String[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Jointversion.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgJointversion()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointversion> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointversion>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointversion.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointversion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointversion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointversion.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointversion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointversion value = readRos2Rm_ros_interfacesMsgJointversion(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointversion(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointversion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String[] part0 = value.joint_version;
        if(part0 == null || part0.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part0.length, 4, false);
        for(int i = 0; i < part0.length; ++i)
        {

            writeText(writer, part0[i], 256);
        }
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgJointversion readRos2Rm_ros_interfacesMsgJointversion(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointversion value = new Ros2Rm_ros_interfacesMsgJointversion();
        value.joint_version = new String[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_version.length; ++i)
            value.joint_version[i] = readText(reader, 256);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgJointvoltage
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Jointvoltage";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 68;
        /**
         * @brief Original rm_ros_interfaces/msg/Jointvoltage.joint_voltage field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint_voltage = new float[0];

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
        public Ros2Rm_ros_interfacesMsgJointvoltage()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgJointvoltage> CODEC = new Codec<Ros2Rm_ros_interfacesMsgJointvoltage>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Jointvoltage.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgJointvoltage value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgJointvoltage(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Jointvoltage.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgJointvoltage decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgJointvoltage value = readRos2Rm_ros_interfacesMsgJointvoltage(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgJointvoltage(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgJointvoltage value)
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
    private static Ros2Rm_ros_interfacesMsgJointvoltage readRos2Rm_ros_interfacesMsgJointvoltage(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgJointvoltage value = new Ros2Rm_ros_interfacesMsgJointvoltage();
        value.joint_voltage = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint_voltage.length; ++i)
            value.joint_voltage[i] = reader.f32();
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
    public static final class Ros2Rm_ros_interfacesMsgLiftheight
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Liftheight";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftheight.height field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int height = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftheight.speed field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftheight.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros2Rm_ros_interfacesMsgLiftheight()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgLiftheight> CODEC = new Codec<Ros2Rm_ros_interfacesMsgLiftheight>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Liftheight.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgLiftheight value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgLiftheight(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Liftheight.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgLiftheight decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgLiftheight value = readRos2Rm_ros_interfacesMsgLiftheight(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgLiftheight(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgLiftheight value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.height;
        writer.integer(part0, 2, false);
        int part1 = value.speed;
        writer.integer(part1, 2, false);
        boolean part2 = value.block;
        writer.integer(part2 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgLiftheight readRos2Rm_ros_interfacesMsgLiftheight(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgLiftheight value = new Ros2Rm_ros_interfacesMsgLiftheight();
        value.height = (int)reader.integer(2, false);
        value.speed = (int)reader.integer(2, false);
        value.block = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgLiftspeed
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Liftspeed";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29";
        public static final int MIN_WIRE_BYTES = 2, MAX_WIRE_BYTES = 2;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftspeed.speed field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short speed = 0;

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
        public Ros2Rm_ros_interfacesMsgLiftspeed()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgLiftspeed> CODEC = new Codec<Ros2Rm_ros_interfacesMsgLiftspeed>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Liftspeed.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgLiftspeed value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgLiftspeed(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Liftspeed.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgLiftspeed decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgLiftspeed value = readRos2Rm_ros_interfacesMsgLiftspeed(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgLiftspeed(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgLiftspeed value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.speed;
        writer.integer(part0, 2, true);
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
    private static Ros2Rm_ros_interfacesMsgLiftspeed readRos2Rm_ros_interfacesMsgLiftspeed(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgLiftspeed value = new Ros2Rm_ros_interfacesMsgLiftspeed();
        value.speed = (short)reader.integer(2, true);
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
    public static final class Ros2Rm_ros_interfacesMsgLiftstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Liftstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 8;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftstate.height field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short height = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftstate.current field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short current = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftstate.err_flag field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_flag = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Liftstate.mode field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mode = 0;

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
        public Ros2Rm_ros_interfacesMsgLiftstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgLiftstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgLiftstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Liftstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgLiftstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgLiftstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Liftstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgLiftstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgLiftstate value = readRos2Rm_ros_interfacesMsgLiftstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgLiftstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgLiftstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        short part0 = value.height;
        writer.integer(part0, 2, true);
        short part1 = value.current;
        writer.integer(part1, 2, true);
        int part2 = value.err_flag;
        writer.integer(part2, 2, false);
        short part3 = value.mode;
        writer.integer(part3, 2, true);
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
    private static Ros2Rm_ros_interfacesMsgLiftstate readRos2Rm_ros_interfacesMsgLiftstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgLiftstate value = new Ros2Rm_ros_interfacesMsgLiftstate();
        value.height = (short)reader.integer(2, true);
        value.current = (short)reader.integer(2, true);
        value.err_flag = (int)reader.integer(2, false);
        value.mode = (short)reader.integer(2, true);
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
    public static final class Ros2Rm_ros_interfacesMsgMastername
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Mastername";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_ros_interfaces/msg/Mastername.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";

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
        public Ros2Rm_ros_interfacesMsgMastername()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgMastername> CODEC = new Codec<Ros2Rm_ros_interfacesMsgMastername>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Mastername.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgMastername value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgMastername(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Mastername.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgMastername decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgMastername value = readRos2Rm_ros_interfacesMsgMastername(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgMastername(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgMastername value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.master_name;

        writeText(writer, part0, 256);
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
    private static Ros2Rm_ros_interfacesMsgMastername readRos2Rm_ros_interfacesMsgMastername(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgMastername value = new Ros2Rm_ros_interfacesMsgMastername();
        value.master_name = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgModbusreaddata
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbusreaddata";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 69;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusreaddata.read_data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] read_data = new int[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusreaddata.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusreaddata.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros2Rm_ros_interfacesMsgModbusreaddata()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbusreaddata> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbusreaddata>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusreaddata.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbusreaddata value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbusreaddata(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusreaddata.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbusreaddata decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbusreaddata value = readRos2Rm_ros_interfacesMsgModbusreaddata(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbusreaddata(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbusreaddata value)
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
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgModbusreaddata readRos2Rm_ros_interfacesMsgModbusreaddata(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbusreaddata value = new Ros2Rm_ros_interfacesMsgModbusreaddata();
        value.read_data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.read_data.length; ++i)
            value.read_data[i] = (int)reader.integer(4, true);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgModbusrtureadparams
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbusrtureadparams";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtureadparams.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtureadparams.device field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtureadparams.type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtureadparams.num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtureadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros2Rm_ros_interfacesMsgModbusrtureadparams()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbusrtureadparams> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbusrtureadparams>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusrtureadparams.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbusrtureadparams value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbusrtureadparams(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtureadparams.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbusrtureadparams decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbusrtureadparams value = readRos2Rm_ros_interfacesMsgModbusrtureadparams(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbusrtureadparams(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbusrtureadparams value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        int part1 = value.device;
        writer.integer(part1, 4, true);
        int part2 = value.type;
        writer.integer(part2, 4, true);
        int part3 = value.num;
        writer.integer(part3, 4, true);
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
    private static Ros2Rm_ros_interfacesMsgModbusrtureadparams readRos2Rm_ros_interfacesMsgModbusrtureadparams(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbusrtureadparams value = new Ros2Rm_ros_interfacesMsgModbusrtureadparams();
        value.address = (int)reader.integer(4, true);
        value.device = (int)reader.integer(4, true);
        value.type = (int)reader.integer(4, true);
        value.num = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbusrtuwriteparams";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 84;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtuwriteparams.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtuwriteparams.device field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int device = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtuwriteparams.type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtuwriteparams.num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbusrtuwriteparams.data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] data = new int[0];

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
        public Ros2Rm_ros_interfacesMsgModbusrtuwriteparams()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbusrtuwriteparams> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbusrtuwriteparams>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbusrtuwriteparams.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbusrtuwriteparams(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbusrtuwriteparams.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbusrtuwriteparams decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value = readRos2Rm_ros_interfacesMsgModbusrtuwriteparams(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbusrtuwriteparams(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        int part1 = value.device;
        writer.integer(part1, 4, true);
        int part2 = value.type;
        writer.integer(part2, 4, true);
        int part3 = value.num;
        writer.integer(part3, 4, true);
        int[] part4 = value.data;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {
            writer.integer(part4[i], 4, true);
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
    private static Ros2Rm_ros_interfacesMsgModbusrtuwriteparams readRos2Rm_ros_interfacesMsgModbusrtuwriteparams(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbusrtuwriteparams value = new Ros2Rm_ros_interfacesMsgModbusrtuwriteparams();
        value.address = (int)reader.integer(4, true);
        value.device = (int)reader.integer(4, true);
        value.type = (int)reader.integer(4, true);
        value.num = (int)reader.integer(4, true);
        value.data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpmasterinfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 525;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterinfo.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterinfo.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterinfo.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterinfo.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgModbustcpmasterinfo()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbustcpmasterinfo> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbustcpmasterinfo>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpmasterinfo.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbustcpmasterinfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpmasterinfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbustcpmasterinfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value = readRos2Rm_ros_interfacesMsgModbustcpmasterinfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbustcpmasterinfo(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.master_name;

        writeText(writer, part0, 256);
        String part1 = value.ip;

        writeText(writer, part1, 256);
        int part2 = value.port;
        writer.integer(part2, 4, true);
        boolean part3 = value.state;
        writer.integer(part3 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgModbustcpmasterinfo readRos2Rm_ros_interfacesMsgModbustcpmasterinfo(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbustcpmasterinfo value = new Ros2Rm_ros_interfacesMsgModbustcpmasterinfo();
        value.master_name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgModbustcpmasterlist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpmasterlist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1";
        public static final int MIN_WIRE_BYTES = 12, MAX_WIRE_BYTES = 8668;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterlist.page_num field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterlist.page_size field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterlist.total_size field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int total_size = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterlist.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterlist.master_list field.
         * @details rm_ros_interfaces/msg/Modbustcpmasterinfo sequence, count/quota 16, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[] master_list = new Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterlist.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgModbustcpmasterlist()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbustcpmasterlist> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbustcpmasterlist>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpmasterlist.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbustcpmasterlist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbustcpmasterlist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpmasterlist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbustcpmasterlist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbustcpmasterlist value = readRos2Rm_ros_interfacesMsgModbustcpmasterlist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbustcpmasterlist(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbustcpmasterlist value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.page_num;
        writer.integer(part0, 1, false);
        int part1 = value.page_size;
        writer.integer(part1, 1, false);
        int part2 = value.total_size;
        writer.integer(part2, 1, false);
        String part3 = value.vague_search;

        writeText(writer, part3, 256);
        Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[] part4 = value.master_list;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {

            writeRos2Rm_ros_interfacesMsgModbustcpmasterinfo(writer, part4[i]);
        }
        boolean part5 = value.state;
        writer.integer(part5 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgModbustcpmasterlist readRos2Rm_ros_interfacesMsgModbustcpmasterlist(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbustcpmasterlist value = new Ros2Rm_ros_interfacesMsgModbustcpmasterlist();
        value.page_num = (int)reader.integer(1, false);
        value.page_size = (int)reader.integer(1, false);
        value.total_size = (int)reader.integer(1, false);
        value.vague_search = readText(reader, 256);
        value.master_list = new Ros2Rm_ros_interfacesMsgModbustcpmasterinfo[readCount(reader, 16, 13)];
        for(int i = 0; i < value.master_list.length; ++i)
            value.master_list[i] = readRos2Rm_ros_interfacesMsgModbustcpmasterinfo(reader);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpmasterupdata";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 784;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterupdata.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterupdata.new_master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String new_master_name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterupdata.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpmasterupdata.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;

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
        public Ros2Rm_ros_interfacesMsgModbustcpmasterupdata()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbustcpmasterupdata> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbustcpmasterupdata>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpmasterupdata.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbustcpmasterupdata(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpmasterupdata.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbustcpmasterupdata decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value = readRos2Rm_ros_interfacesMsgModbustcpmasterupdata(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbustcpmasterupdata(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.master_name;

        writeText(writer, part0, 256);
        String part1 = value.new_master_name;

        writeText(writer, part1, 256);
        String part2 = value.ip;

        writeText(writer, part2, 256);
        int part3 = value.port;
        writer.integer(part3, 4, true);
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
    private static Ros2Rm_ros_interfacesMsgModbustcpmasterupdata readRos2Rm_ros_interfacesMsgModbustcpmasterupdata(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbustcpmasterupdata value = new Ros2Rm_ros_interfacesMsgModbustcpmasterupdata();
        value.master_name = readText(reader, 256);
        value.new_master_name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgModbustcpreadparams
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpreadparams";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7";
        public static final int MIN_WIRE_BYTES = 20, MAX_WIRE_BYTES = 532;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpreadparams.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpreadparams.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpreadparams.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpreadparams.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpreadparams.num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;

        /**
         * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpreadparams.
         * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before exposing a
         * complete value. Returned nested values own their storage and retain every original field.
         * @return Complete owning value on success; codec failure exposes no accepted partial record.
         * @par Permissions
         * Pure codecs need no grant; native operations retain the enclosing explicit capability policy.
         */
        public Ros2Rm_ros_interfacesMsgModbustcpreadparams()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbustcpreadparams> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbustcpreadparams>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpreadparams.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbustcpreadparams value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbustcpreadparams(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpreadparams.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbustcpreadparams decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbustcpreadparams value = readRos2Rm_ros_interfacesMsgModbustcpreadparams(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbustcpreadparams(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbustcpreadparams value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        String part1 = value.master_name;

        writeText(writer, part1, 256);
        String part2 = value.ip;

        writeText(writer, part2, 256);
        int part3 = value.port;
        writer.integer(part3, 4, true);
        int part4 = value.num;
        writer.integer(part4, 4, true);
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
    private static Ros2Rm_ros_interfacesMsgModbustcpreadparams readRos2Rm_ros_interfacesMsgModbustcpreadparams(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbustcpreadparams value = new Ros2Rm_ros_interfacesMsgModbustcpreadparams();
        value.address = (int)reader.integer(4, true);
        value.master_name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.num = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgModbustcpwriteparams
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Modbustcpwriteparams";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 600;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpwriteparams.address field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int address = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpwriteparams.master_name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String master_name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpwriteparams.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpwriteparams.port field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpwriteparams.num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Modbustcpwriteparams.data field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] data = new int[0];

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
        public Ros2Rm_ros_interfacesMsgModbustcpwriteparams()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgModbustcpwriteparams> CODEC = new Codec<Ros2Rm_ros_interfacesMsgModbustcpwriteparams>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Modbustcpwriteparams.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgModbustcpwriteparams value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgModbustcpwriteparams(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Modbustcpwriteparams.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgModbustcpwriteparams decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgModbustcpwriteparams value = readRos2Rm_ros_interfacesMsgModbustcpwriteparams(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgModbustcpwriteparams(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgModbustcpwriteparams value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.address;
        writer.integer(part0, 4, true);
        String part1 = value.master_name;

        writeText(writer, part1, 256);
        String part2 = value.ip;

        writeText(writer, part2, 256);
        int part3 = value.port;
        writer.integer(part3, 4, true);
        int part4 = value.num;
        writer.integer(part4, 4, true);
        int[] part5 = value.data;
        if(part5 == null || part5.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part5.length, 4, false);
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 4, true);
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
    private static Ros2Rm_ros_interfacesMsgModbustcpwriteparams readRos2Rm_ros_interfacesMsgModbustcpwriteparams(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgModbustcpwriteparams value = new Ros2Rm_ros_interfacesMsgModbustcpwriteparams();
        value.address = (int)reader.integer(4, true);
        value.master_name = readText(reader, 256);
        value.ip = readText(reader, 256);
        value.port = (int)reader.integer(4, true);
        value.num = (int)reader.integer(4, true);
        value.data = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.data.length; ++i)
            value.data[i] = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgMovec
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Movec";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b";
        public static final int MIN_WIRE_BYTES = 116, MAX_WIRE_BYTES = 116;
        /**
         * @brief Original rm_ros_interfaces/msg/Movec.pose_mid field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose_mid = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Movec.pose_end field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose_end = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Movec.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movec.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movec.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Movec.loop field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int loop = 0;

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
        public Ros2Rm_ros_interfacesMsgMovec()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgMovec> CODEC = new Codec<Ros2Rm_ros_interfacesMsgMovec>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movec.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgMovec value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgMovec(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movec.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgMovec decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgMovec value = readRos2Rm_ros_interfacesMsgMovec(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgMovec(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgMovec value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose_mid;

        writeRos2Geometry_msgsMsgPose(writer, part0);
        Ros2Geometry_msgsMsgPose part1 = value.pose_end;

        writeRos2Geometry_msgsMsgPose(writer, part1);
        int part2 = value.speed;
        writer.integer(part2, 1, false);
        int part3 = value.trajectory_connect;
        writer.integer(part3, 1, false);
        boolean part4 = value.block;
        writer.integer(part4 ? 1 : 0, 1, false);
        int part5 = value.loop;
        writer.integer(part5, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgMovec readRos2Rm_ros_interfacesMsgMovec(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgMovec value = new Ros2Rm_ros_interfacesMsgMovec();
        value.pose_mid = readRos2Geometry_msgsMsgPose(reader);
        value.pose_end = readRos2Geometry_msgsMsgPose(reader);
        value.speed = (int)reader.integer(1, false);
        value.trajectory_connect = (int)reader.integer(1, false);
        value.block = readBool(reader);
        value.loop = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgMovej
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Movej";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b";
        public static final int MIN_WIRE_BYTES = 8, MAX_WIRE_BYTES = 72;
        /**
         * @brief Original rm_ros_interfaces/msg/Movej.joint field.
         * @details float32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public float[] joint = new float[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Movej.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movej.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Movej.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movej.dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int dof = 0;

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
        public Ros2Rm_ros_interfacesMsgMovej()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgMovej> CODEC = new Codec<Ros2Rm_ros_interfacesMsgMovej>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movej.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgMovej value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgMovej(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movej.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgMovej decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgMovej value = readRos2Rm_ros_interfacesMsgMovej(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgMovej(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgMovej value)
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
        int part1 = value.speed;
        writer.integer(part1, 1, false);
        boolean part2 = value.block;
        writer.integer(part2 ? 1 : 0, 1, false);
        int part3 = value.trajectory_connect;
        writer.integer(part3, 1, false);
        int part4 = value.dof;
        writer.integer(part4, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgMovej readRos2Rm_ros_interfacesMsgMovej(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgMovej value = new Ros2Rm_ros_interfacesMsgMovej();
        value.joint = new float[readCount(reader, 16, 4)];
        for(int i = 0; i < value.joint.length; ++i)
            value.joint[i] = reader.f32();
        value.speed = (int)reader.integer(1, false);
        value.block = readBool(reader);
        value.trajectory_connect = (int)reader.integer(1, false);
        value.dof = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgMovejp
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Movejp";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72";
        public static final int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;
        /**
         * @brief Original rm_ros_interfaces/msg/Movejp.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Movejp.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movejp.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movejp.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros2Rm_ros_interfacesMsgMovejp()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgMovejp> CODEC = new Codec<Ros2Rm_ros_interfacesMsgMovejp>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movejp.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgMovejp value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgMovejp(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movejp.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgMovejp decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgMovejp value = readRos2Rm_ros_interfacesMsgMovejp(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgMovejp(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgMovejp value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
        int part1 = value.speed;
        writer.integer(part1, 1, false);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
        boolean part3 = value.block;
        writer.integer(part3 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgMovejp readRos2Rm_ros_interfacesMsgMovejp(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgMovejp value = new Ros2Rm_ros_interfacesMsgMovejp();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.speed = (int)reader.integer(1, false);
        value.trajectory_connect = (int)reader.integer(1, false);
        value.block = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgMovel
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Movel";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8";
        public static final int MIN_WIRE_BYTES = 59, MAX_WIRE_BYTES = 59;
        /**
         * @brief Original rm_ros_interfaces/msg/Movel.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Movel.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movel.trajectory_connect field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int trajectory_connect = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Movel.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros2Rm_ros_interfacesMsgMovel()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgMovel> CODEC = new Codec<Ros2Rm_ros_interfacesMsgMovel>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Movel.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgMovel value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgMovel(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Movel.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgMovel decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgMovel value = readRos2Rm_ros_interfacesMsgMovel(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgMovel(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgMovel value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
        int part1 = value.speed;
        writer.integer(part1, 1, false);
        int part2 = value.trajectory_connect;
        writer.integer(part2, 1, false);
        boolean part3 = value.block;
        writer.integer(part3 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgMovel readRos2Rm_ros_interfacesMsgMovel(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgMovel value = new Ros2Rm_ros_interfacesMsgMovel();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.speed = (int)reader.integer(1, false);
        value.trajectory_connect = (int)reader.integer(1, false);
        value.block = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgMoveloffset
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Moveloffset";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493";
        public static final int MIN_WIRE_BYTES = 67, MAX_WIRE_BYTES = 67;
        /**
         * @brief Original rm_ros_interfaces/msg/Moveloffset.pose field.
         * @details geometry_msgs/msg/Pose scalar, count/quota 0, text byte bound 0. Preserve original units
         * and frame. Full value checks occur before successful encoding; construction grants no authority.
         */
        public Ros2Geometry_msgsMsgPose pose = new Ros2Geometry_msgsMsgPose();
        /**
         * @brief Original rm_ros_interfaces/msg/Moveloffset.speed field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Moveloffset.r field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int r = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Moveloffset.trajectory_connect field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean trajectory_connect = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Moveloffset.frame_type field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean frame_type = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Moveloffset.block field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean block = false;

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
        public Ros2Rm_ros_interfacesMsgMoveloffset()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgMoveloffset> CODEC = new Codec<Ros2Rm_ros_interfacesMsgMoveloffset>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Moveloffset.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgMoveloffset value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgMoveloffset(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Moveloffset.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgMoveloffset decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgMoveloffset value = readRos2Rm_ros_interfacesMsgMoveloffset(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgMoveloffset(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgMoveloffset value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        Ros2Geometry_msgsMsgPose part0 = value.pose;

        writeRos2Geometry_msgsMsgPose(writer, part0);
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
    private static Ros2Rm_ros_interfacesMsgMoveloffset readRos2Rm_ros_interfacesMsgMoveloffset(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgMoveloffset value = new Ros2Rm_ros_interfacesMsgMoveloffset();
        value.pose = readRos2Geometry_msgsMsgPose(reader);
        value.speed = (int)reader.integer(4, true);
        value.r = (int)reader.integer(4, true);
        value.trajectory_connect = readBool(reader);
        value.frame_type = readBool(reader);
        value.block = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgOrtteach
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Ortteach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original rm_ros_interfaces/msg/Ortteach.type field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Ortteach.direction field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int direction = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Ortteach.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;

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
        public Ros2Rm_ros_interfacesMsgOrtteach()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgOrtteach> CODEC = new Codec<Ros2Rm_ros_interfacesMsgOrtteach>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Ortteach.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgOrtteach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgOrtteach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Ortteach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgOrtteach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgOrtteach value = readRos2Rm_ros_interfacesMsgOrtteach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgOrtteach(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgOrtteach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.type;
        writer.integer(part0, 1, false);
        int part1 = value.direction;
        writer.integer(part1, 1, false);
        int part2 = value.speed;
        writer.integer(part2, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgOrtteach readRos2Rm_ros_interfacesMsgOrtteach(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgOrtteach value = new Ros2Rm_ros_interfacesMsgOrtteach();
        value.type = (int)reader.integer(1, false);
        value.direction = (int)reader.integer(1, false);
        value.speed = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgPosteach
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Posteach";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original rm_ros_interfaces/msg/Posteach.type field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int type = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Posteach.direction field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int direction = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Posteach.speed field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int speed = 0;

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
        public Ros2Rm_ros_interfacesMsgPosteach()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgPosteach> CODEC = new Codec<Ros2Rm_ros_interfacesMsgPosteach>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Posteach.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgPosteach value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgPosteach(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Posteach.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgPosteach decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgPosteach value = readRos2Rm_ros_interfacesMsgPosteach(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgPosteach(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgPosteach value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.type;
        writer.integer(part0, 1, false);
        int part1 = value.direction;
        writer.integer(part1, 1, false);
        int part2 = value.speed;
        writer.integer(part2, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgPosteach readRos2Rm_ros_interfacesMsgPosteach(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgPosteach value = new Ros2Rm_ros_interfacesMsgPosteach();
        value.type = (int)reader.integer(1, false);
        value.direction = (int)reader.integer(1, false);
        value.speed = (int)reader.integer(1, false);
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
    public static final class Ros2Rm_ros_interfacesMsgProgramrunstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Programrunstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964";
        public static final int MIN_WIRE_BYTES = 37, MAX_WIRE_BYTES = 165;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.run_state field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int run_state = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int id = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.edit_id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int edit_id = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.plan_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.total_loop field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int total_loop = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.step_mode field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int step_mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.plan_speed field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.loop_num field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] loop_num = new int[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.loop_cont field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] loop_cont = new int[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Programrunstate.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgProgramrunstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgProgramrunstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgProgramrunstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Programrunstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgProgramrunstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgProgramrunstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Programrunstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgProgramrunstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgProgramrunstate value = readRos2Rm_ros_interfacesMsgProgramrunstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgProgramrunstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgProgramrunstate value)
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
        boolean part9 = value.state;
        writer.integer(part9 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgProgramrunstate readRos2Rm_ros_interfacesMsgProgramrunstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgProgramrunstate value = new Ros2Rm_ros_interfacesMsgProgramrunstate();
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
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgRS485params
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/RS485params";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7";
        public static final int MIN_WIRE_BYTES = 9, MAX_WIRE_BYTES = 9;
        /**
         * @brief Original rm_ros_interfaces/msg/RS485params.mode field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/RS485params.baudrate field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int baudrate = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/RS485params.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgRS485params()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgRS485params> CODEC = new Codec<Ros2Rm_ros_interfacesMsgRS485params>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/RS485params.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgRS485params value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgRS485params(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/RS485params.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgRS485params decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgRS485params value = readRos2Rm_ros_interfacesMsgRS485params(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgRS485params(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgRS485params value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.mode;
        writer.integer(part0, 4, true);
        int part1 = value.baudrate;
        writer.integer(part1, 4, true);
        boolean part2 = value.state;
        writer.integer(part2 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgRS485params readRos2Rm_ros_interfacesMsgRS485params(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgRS485params value = new Ros2Rm_ros_interfacesMsgRS485params();
        value.mode = (int)reader.integer(4, true);
        value.baudrate = (int)reader.integer(4, true);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgRmerr
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Rmerr";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 69;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmerr.err_len field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_len = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmerr.err field.
         * @details int32 sequence, count/quota 16, text byte bound 0. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public int[] err = new int[0];

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
        public Ros2Rm_ros_interfacesMsgRmerr()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgRmerr> CODEC = new Codec<Ros2Rm_ros_interfacesMsgRmerr>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmerr.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgRmerr value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgRmerr(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmerr.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgRmerr decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgRmerr value = readRos2Rm_ros_interfacesMsgRmerr(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgRmerr(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgRmerr value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.err_len;
        writer.integer(part0, 1, false);
        int[] part1 = value.err;
        if(part1 == null || part1.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part1.length, 4, false);
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, true);
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
    private static Ros2Rm_ros_interfacesMsgRmerr readRos2Rm_ros_interfacesMsgRmerr(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgRmerr value = new Ros2Rm_ros_interfacesMsgRmerr();
        value.err_len = (int)reader.integer(1, false);
        value.err = new int[readCount(reader, 16, 4)];
        for(int i = 0; i < value.err.length; ++i)
            value.err[i] = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgRmplusbase
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Rmplusbase";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6";
        public static final int MIN_WIRE_BYTES = 413, MAX_WIRE_BYTES = 1437;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.manu field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String manu = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.type field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte type = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.hv field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String hv = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.sv field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String sv = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.bv field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String bv = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int id = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.dof field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte dof = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.check field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte check = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.bee field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte bee = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.force field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean force = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.touch field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean touch = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.touch_num field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte touch_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.touch_sw field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte touch_sw = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.hand field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte hand = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.pos_up field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] pos_up = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.pos_low field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] pos_low = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.angle_up field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] angle_up = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.angle_low field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] angle_low = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.speed_up field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] speed_up = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.speed_low field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] speed_low = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.force_up field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] force_up = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusbase.force_low field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] force_low = new int[12];

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
        public Ros2Rm_ros_interfacesMsgRmplusbase()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgRmplusbase> CODEC = new Codec<Ros2Rm_ros_interfacesMsgRmplusbase>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmplusbase.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgRmplusbase value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgRmplusbase(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmplusbase.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgRmplusbase decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgRmplusbase value = readRos2Rm_ros_interfacesMsgRmplusbase(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgRmplusbase(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgRmplusbase value)
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
        if(part14 == null || part14.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part14.length; ++i)
        {
            writer.integer(part14[i], 4, true);
        }
        int[] part15 = value.pos_low;
        if(part15 == null || part15.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part15.length; ++i)
        {
            writer.integer(part15[i], 4, true);
        }
        int[] part16 = value.angle_up;
        if(part16 == null || part16.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part16.length; ++i)
        {
            writer.integer(part16[i], 4, true);
        }
        int[] part17 = value.angle_low;
        if(part17 == null || part17.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part17.length; ++i)
        {
            writer.integer(part17[i], 4, true);
        }
        int[] part18 = value.speed_up;
        if(part18 == null || part18.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part18.length; ++i)
        {
            writer.integer(part18[i], 4, true);
        }
        int[] part19 = value.speed_low;
        if(part19 == null || part19.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part19.length; ++i)
        {
            writer.integer(part19[i], 4, true);
        }
        int[] part20 = value.force_up;
        if(part20 == null || part20.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part20.length; ++i)
        {
            writer.integer(part20[i], 4, true);
        }
        int[] part21 = value.force_low;
        if(part21 == null || part21.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part21.length; ++i)
        {
            writer.integer(part21[i], 4, true);
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
    private static Ros2Rm_ros_interfacesMsgRmplusbase readRos2Rm_ros_interfacesMsgRmplusbase(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgRmplusbase value = new Ros2Rm_ros_interfacesMsgRmplusbase();
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
        value.pos_up = new int[12];
        for(int i = 0; i < value.pos_up.length; ++i)
            value.pos_up[i] = (int)reader.integer(4, true);
        value.pos_low = new int[12];
        for(int i = 0; i < value.pos_low.length; ++i)
            value.pos_low[i] = (int)reader.integer(4, true);
        value.angle_up = new int[12];
        for(int i = 0; i < value.angle_up.length; ++i)
            value.angle_up[i] = (int)reader.integer(4, true);
        value.angle_low = new int[12];
        for(int i = 0; i < value.angle_low.length; ++i)
            value.angle_low[i] = (int)reader.integer(4, true);
        value.speed_up = new int[12];
        for(int i = 0; i < value.speed_up.length; ++i)
            value.speed_up[i] = (int)reader.integer(4, true);
        value.speed_low = new int[12];
        for(int i = 0; i < value.speed_low.length; ++i)
            value.speed_low[i] = (int)reader.integer(4, true);
        value.force_up = new int[12];
        for(int i = 0; i < value.force_up.length; ++i)
            value.force_up[i] = (int)reader.integer(4, true);
        value.force_low = new int[12];
        for(int i = 0; i < value.force_low.length; ++i)
            value.force_low[i] = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgRmplusstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Rmplusstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1";
        public static final int MIN_WIRE_BYTES = 724, MAX_WIRE_BYTES = 724;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.sys_state field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sys_state = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.dof_state field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] dof_state = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.dof_err field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] dof_err = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.pos field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] pos = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.speed field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] speed = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.angle field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] angle = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.current field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] current = new int[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.normal_force field.
         * @details int32 array, count/quota 18, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] normal_force = new int[18];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.tangential_force field.
         * @details int32 array, count/quota 18, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] tangential_force = new int[18];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.tangential_force_dir field.
         * @details int32 array, count/quota 18, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] tangential_force_dir = new int[18];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.tsa field.
         * @details uint32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long[] tsa = new long[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.tma field.
         * @details uint32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public long[] tma = new long[12];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.touch_data field.
         * @details int32 array, count/quota 18, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] touch_data = new int[18];
        /**
         * @brief Original rm_ros_interfaces/msg/Rmplusstate.force field.
         * @details int32 array, count/quota 12, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int[] force = new int[12];

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
        public Ros2Rm_ros_interfacesMsgRmplusstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgRmplusstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgRmplusstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmplusstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgRmplusstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgRmplusstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmplusstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgRmplusstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgRmplusstate value = readRos2Rm_ros_interfacesMsgRmplusstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgRmplusstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgRmplusstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sys_state;
        writer.integer(part0, 4, true);
        int[] part1 = value.dof_state;
        if(part1 == null || part1.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part1.length; ++i)
        {
            writer.integer(part1[i], 4, true);
        }
        int[] part2 = value.dof_err;
        if(part2 == null || part2.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part2.length; ++i)
        {
            writer.integer(part2[i], 4, true);
        }
        int[] part3 = value.pos;
        if(part3 == null || part3.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part3.length; ++i)
        {
            writer.integer(part3[i], 4, true);
        }
        int[] part4 = value.speed;
        if(part4 == null || part4.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part4.length; ++i)
        {
            writer.integer(part4[i], 4, true);
        }
        int[] part5 = value.angle;
        if(part5 == null || part5.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part5.length; ++i)
        {
            writer.integer(part5[i], 4, true);
        }
        int[] part6 = value.current;
        if(part6 == null || part6.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part6.length; ++i)
        {
            writer.integer(part6[i], 4, true);
        }
        int[] part7 = value.normal_force;
        if(part7 == null || part7.length != 18)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part7.length; ++i)
        {
            writer.integer(part7[i], 4, true);
        }
        int[] part8 = value.tangential_force;
        if(part8 == null || part8.length != 18)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part8.length; ++i)
        {
            writer.integer(part8[i], 4, true);
        }
        int[] part9 = value.tangential_force_dir;
        if(part9 == null || part9.length != 18)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part9.length; ++i)
        {
            writer.integer(part9[i], 4, true);
        }
        long[] part10 = value.tsa;
        if(part10 == null || part10.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part10.length; ++i)
        {
            writer.integer(part10[i], 4, false);
        }
        long[] part11 = value.tma;
        if(part11 == null || part11.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part11.length; ++i)
        {
            writer.integer(part11[i], 4, false);
        }
        int[] part12 = value.touch_data;
        if(part12 == null || part12.length != 18)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part12.length; ++i)
        {
            writer.integer(part12[i], 4, true);
        }
        int[] part13 = value.force;
        if(part13 == null || part13.length != 12)
            throw new IllegalArgumentException("fixed/sequence count bound");
        for(int i = 0; i < part13.length; ++i)
        {
            writer.integer(part13[i], 4, true);
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
    private static Ros2Rm_ros_interfacesMsgRmplusstate readRos2Rm_ros_interfacesMsgRmplusstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgRmplusstate value = new Ros2Rm_ros_interfacesMsgRmplusstate();
        value.sys_state = (int)reader.integer(4, true);
        value.dof_state = new int[12];
        for(int i = 0; i < value.dof_state.length; ++i)
            value.dof_state[i] = (int)reader.integer(4, true);
        value.dof_err = new int[12];
        for(int i = 0; i < value.dof_err.length; ++i)
            value.dof_err[i] = (int)reader.integer(4, true);
        value.pos = new int[12];
        for(int i = 0; i < value.pos.length; ++i)
            value.pos[i] = (int)reader.integer(4, true);
        value.speed = new int[12];
        for(int i = 0; i < value.speed.length; ++i)
            value.speed[i] = (int)reader.integer(4, true);
        value.angle = new int[12];
        for(int i = 0; i < value.angle.length; ++i)
            value.angle[i] = (int)reader.integer(4, true);
        value.current = new int[12];
        for(int i = 0; i < value.current.length; ++i)
            value.current[i] = (int)reader.integer(4, true);
        value.normal_force = new int[18];
        for(int i = 0; i < value.normal_force.length; ++i)
            value.normal_force[i] = (int)reader.integer(4, true);
        value.tangential_force = new int[18];
        for(int i = 0; i < value.tangential_force.length; ++i)
            value.tangential_force[i] = (int)reader.integer(4, true);
        value.tangential_force_dir = new int[18];
        for(int i = 0; i < value.tangential_force_dir.length; ++i)
            value.tangential_force_dir[i] = (int)reader.integer(4, true);
        value.tsa = new long[12];
        for(int i = 0; i < value.tsa.length; ++i)
            value.tsa[i] = reader.integer(4, false);
        value.tma = new long[12];
        for(int i = 0; i < value.tma.length; ++i)
            value.tma[i] = reader.integer(4, false);
        value.touch_data = new int[18];
        for(int i = 0; i < value.touch_data.length; ++i)
            value.touch_data[i] = (int)reader.integer(4, true);
        value.force = new int[12];
        for(int i = 0; i < value.force.length; ++i)
            value.force[i] = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgRmversion
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Rmversion";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff";
        public static final int MIN_WIRE_BYTES = 4, MAX_WIRE_BYTES = 260;
        /**
         * @brief Original rm_ros_interfaces/msg/Rmversion.version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String version = "";

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
        public Ros2Rm_ros_interfacesMsgRmversion()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgRmversion> CODEC = new Codec<Ros2Rm_ros_interfacesMsgRmversion>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Rmversion.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgRmversion value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgRmversion(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Rmversion.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgRmversion decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgRmversion value = readRos2Rm_ros_interfacesMsgRmversion(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgRmversion(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgRmversion value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.version;

        writeText(writer, part0, 256);
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
    private static Ros2Rm_ros_interfacesMsgRmversion readRos2Rm_ros_interfacesMsgRmversion(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgRmversion value = new Ros2Rm_ros_interfacesMsgRmversion();
        value.version = readText(reader, 256);
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
    public static final class Ros2Rm_ros_interfacesMsgRobotInfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/RobotInfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_ros_interfaces/msg/RobotInfo.arm_dof field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int arm_dof = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/RobotInfo.arm_model field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int arm_model = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/RobotInfo.force_type field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int force_type = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/RobotInfo.robot_controller_version field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int robot_controller_version = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/RobotInfo.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgRobotInfo()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgRobotInfo> CODEC = new Codec<Ros2Rm_ros_interfacesMsgRobotInfo>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/RobotInfo.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgRobotInfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgRobotInfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/RobotInfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgRobotInfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgRobotInfo value = readRos2Rm_ros_interfacesMsgRobotInfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgRobotInfo(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgRobotInfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.arm_dof;
        writer.integer(part0, 1, false);
        int part1 = value.arm_model;
        writer.integer(part1, 1, false);
        int part2 = value.force_type;
        writer.integer(part2, 1, false);
        int part3 = value.robot_controller_version;
        writer.integer(part3, 1, false);
        boolean part4 = value.state;
        writer.integer(part4 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgRobotInfo readRos2Rm_ros_interfacesMsgRobotInfo(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgRobotInfo value = new Ros2Rm_ros_interfacesMsgRobotInfo();
        value.arm_dof = (int)reader.integer(1, false);
        value.arm_model = (int)reader.integer(1, false);
        value.force_type = (int)reader.integer(1, false);
        value.robot_controller_version = (int)reader.integer(1, false);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgSendproject
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Sendproject";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330";
        public static final int MIN_WIRE_BYTES = 32, MAX_WIRE_BYTES = 288;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.project_path field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String project_path = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.project_path_len field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int project_path_len = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.plan_speed field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int plan_speed = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.only_save field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int only_save = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.save_id field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int save_id = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.step_flag field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int step_flag = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.auto_start field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int auto_start = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sendproject.project_type field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int project_type = 0;

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
        public Ros2Rm_ros_interfacesMsgSendproject()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgSendproject> CODEC = new Codec<Ros2Rm_ros_interfacesMsgSendproject>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Sendproject.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgSendproject value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgSendproject(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Sendproject.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgSendproject decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgSendproject value = readRos2Rm_ros_interfacesMsgSendproject(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgSendproject(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgSendproject value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.project_path;

        writeText(writer, part0, 256);
        int part1 = value.project_path_len;
        writer.integer(part1, 4, true);
        int part2 = value.plan_speed;
        writer.integer(part2, 4, true);
        int part3 = value.only_save;
        writer.integer(part3, 4, true);
        int part4 = value.save_id;
        writer.integer(part4, 4, true);
        int part5 = value.step_flag;
        writer.integer(part5, 4, true);
        int part6 = value.auto_start;
        writer.integer(part6, 4, true);
        int part7 = value.project_type;
        writer.integer(part7, 4, true);
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
    private static Ros2Rm_ros_interfacesMsgSendproject readRos2Rm_ros_interfacesMsgSendproject(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgSendproject value = new Ros2Rm_ros_interfacesMsgSendproject();
        value.project_path = readText(reader, 256);
        value.project_path_len = (int)reader.integer(4, true);
        value.plan_speed = (int)reader.integer(4, true);
        value.only_save = (int)reader.integer(4, true);
        value.save_id = (int)reader.integer(4, true);
        value.step_flag = (int)reader.integer(4, true);
        value.auto_start = (int)reader.integer(4, true);
        value.project_type = (int)reader.integer(4, true);
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
    public static final class Ros2Rm_ros_interfacesMsgSetforceposition
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Setforceposition";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 5;
        /**
         * @brief Original rm_ros_interfaces/msg/Setforceposition.sensor field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int sensor = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Setforceposition.mode field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int mode = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Setforceposition.direction field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int direction = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Setforceposition.n field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short n = 0;

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
        public Ros2Rm_ros_interfacesMsgSetforceposition()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgSetforceposition> CODEC = new Codec<Ros2Rm_ros_interfacesMsgSetforceposition>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Setforceposition.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgSetforceposition value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgSetforceposition(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Setforceposition.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgSetforceposition decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgSetforceposition value = readRos2Rm_ros_interfacesMsgSetforceposition(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgSetforceposition(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgSetforceposition value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.sensor;
        writer.integer(part0, 1, false);
        int part1 = value.mode;
        writer.integer(part1, 1, false);
        int part2 = value.direction;
        writer.integer(part2, 1, false);
        short part3 = value.n;
        writer.integer(part3, 2, true);
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
    private static Ros2Rm_ros_interfacesMsgSetforceposition readRos2Rm_ros_interfacesMsgSetforceposition(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgSetforceposition value = new Ros2Rm_ros_interfacesMsgSetforceposition();
        value.sensor = (int)reader.integer(1, false);
        value.mode = (int)reader.integer(1, false);
        value.direction = (int)reader.integer(1, false);
        value.n = (short)reader.integer(2, true);
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
    public static final class Ros2Rm_ros_interfacesMsgSetrealtimepush
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Setrealtimepush";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 274;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.cycle field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int cycle = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.port field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int port = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.force_coordinate field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int force_coordinate = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.ip field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String ip = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.aloha_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean aloha_state_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.arm_current_status_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean arm_current_status_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.expand_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean expand_state_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.hand_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean hand_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.joint_speed_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean joint_speed_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.lift_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean lift_state_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.plus_base_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean plus_base_enable = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Setrealtimepush.plus_state_enable field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean plus_state_enable = false;

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
        public Ros2Rm_ros_interfacesMsgSetrealtimepush()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgSetrealtimepush> CODEC = new Codec<Ros2Rm_ros_interfacesMsgSetrealtimepush>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Setrealtimepush.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgSetrealtimepush value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgSetrealtimepush(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Setrealtimepush.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgSetrealtimepush decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgSetrealtimepush value = readRos2Rm_ros_interfacesMsgSetrealtimepush(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgSetrealtimepush(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgSetrealtimepush value)
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
        boolean part8 = value.joint_speed_enable;
        writer.integer(part8 ? 1 : 0, 1, false);
        boolean part9 = value.lift_state_enable;
        writer.integer(part9 ? 1 : 0, 1, false);
        boolean part10 = value.plus_base_enable;
        writer.integer(part10 ? 1 : 0, 1, false);
        boolean part11 = value.plus_state_enable;
        writer.integer(part11 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgSetrealtimepush readRos2Rm_ros_interfacesMsgSetrealtimepush(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgSetrealtimepush value = new Ros2Rm_ros_interfacesMsgSetrealtimepush();
        value.cycle = (int)reader.integer(2, false);
        value.port = (int)reader.integer(2, false);
        value.force_coordinate = (int)reader.integer(2, false);
        value.ip = readText(reader, 256);
        value.aloha_state_enable = readBool(reader);
        value.arm_current_status_enable = readBool(reader);
        value.expand_state_enable = readBool(reader);
        value.hand_enable = readBool(reader);
        value.joint_speed_enable = readBool(reader);
        value.lift_state_enable = readBool(reader);
        value.plus_base_enable = readBool(reader);
        value.plus_state_enable = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgSixforce
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Sixforce";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original rm_ros_interfaces/msg/Sixforce.force_fx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_fx = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sixforce.force_fy field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_fy = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sixforce.force_fz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_fz = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sixforce.force_mx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_mx = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sixforce.force_my field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_my = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Sixforce.force_mz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float force_mz = 0;

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
        public Ros2Rm_ros_interfacesMsgSixforce()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgSixforce> CODEC = new Codec<Ros2Rm_ros_interfacesMsgSixforce>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Sixforce.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgSixforce value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgSixforce(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Sixforce.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgSixforce decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgSixforce value = readRos2Rm_ros_interfacesMsgSixforce(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgSixforce(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgSixforce value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.force_fx;
        writer.f32(part0);
        float part1 = value.force_fy;
        writer.f32(part1);
        float part2 = value.force_fz;
        writer.f32(part2);
        float part3 = value.force_mx;
        writer.f32(part3);
        float part4 = value.force_my;
        writer.f32(part4);
        float part5 = value.force_mz;
        writer.f32(part5);
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
    private static Ros2Rm_ros_interfacesMsgSixforce readRos2Rm_ros_interfacesMsgSixforce(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgSixforce value = new Ros2Rm_ros_interfacesMsgSixforce();
        value.force_fx = reader.f32();
        value.force_fy = reader.f32();
        value.force_fz = reader.f32();
        value.force_mx = reader.f32();
        value.force_my = reader.f32();
        value.force_mz = reader.f32();
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
    public static final class Ros2Rm_ros_interfacesMsgStop
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Stop";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original rm_ros_interfaces/msg/Stop.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgStop()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgStop> CODEC = new Codec<Ros2Rm_ros_interfacesMsgStop>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Stop.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgStop value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgStop(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Stop.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgStop decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgStop value = readRos2Rm_ros_interfacesMsgStop(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgStop(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgStop value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.state;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgStop readRos2Rm_ros_interfacesMsgStop(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgStop value = new Ros2Rm_ros_interfacesMsgStop();
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Toolsoftwareversionv4";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991";
        public static final int MIN_WIRE_BYTES = 5, MAX_WIRE_BYTES = 261;
        /**
         * @brief Original rm_ros_interfaces/msg/Toolsoftwareversionv4.tool_version field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String tool_version = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Toolsoftwareversionv4.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgToolsoftwareversionv4()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgToolsoftwareversionv4> CODEC = new Codec<Ros2Rm_ros_interfacesMsgToolsoftwareversionv4>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Toolsoftwareversionv4.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgToolsoftwareversionv4(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Toolsoftwareversionv4.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value = readRos2Rm_ros_interfacesMsgToolsoftwareversionv4(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgToolsoftwareversionv4(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.tool_version;

        writeText(writer, part0, 256);
        boolean part1 = value.state;
        writer.integer(part1 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 readRos2Rm_ros_interfacesMsgToolsoftwareversionv4(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 value = new Ros2Rm_ros_interfacesMsgToolsoftwareversionv4();
        value.tool_version = readText(reader, 256);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgTrajectoryinfo
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Trajectoryinfo";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 525;
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectoryinfo.name field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String name = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectoryinfo.create_time field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String create_time = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectoryinfo.point_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int point_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectoryinfo.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgTrajectoryinfo()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgTrajectoryinfo> CODEC = new Codec<Ros2Rm_ros_interfacesMsgTrajectoryinfo>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Trajectoryinfo.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgTrajectoryinfo value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgTrajectoryinfo(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Trajectoryinfo.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgTrajectoryinfo decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgTrajectoryinfo value = readRos2Rm_ros_interfacesMsgTrajectoryinfo(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgTrajectoryinfo(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgTrajectoryinfo value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        String part0 = value.name;

        writeText(writer, part0, 256);
        String part1 = value.create_time;

        writeText(writer, part1, 256);
        int part2 = value.point_num;
        writer.integer(part2, 4, true);
        boolean part3 = value.state;
        writer.integer(part3 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgTrajectoryinfo readRos2Rm_ros_interfacesMsgTrajectoryinfo(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgTrajectoryinfo value = new Ros2Rm_ros_interfacesMsgTrajectoryinfo();
        value.name = readText(reader, 256);
        value.create_time = readText(reader, 256);
        value.point_num = (int)reader.integer(4, true);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgTrajectorylist
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Trajectorylist";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f";
        public static final int MIN_WIRE_BYTES = 21, MAX_WIRE_BYTES = 8677;
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectorylist.page_num field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_num = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectorylist.page_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int page_size = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectorylist.total_size field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int total_size = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectorylist.vague_search field.
         * @details string scalar, count/quota 0, text byte bound 256. Preserve original units and frame.
         * Full value checks occur before successful encoding; construction grants no authority.
         */
        public String vague_search = "";
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectorylist.tra_list field.
         * @details rm_ros_interfaces/msg/Trajectoryinfo sequence, count/quota 16, text byte bound 0.
         * Preserve original units and frame. Full value checks occur before successful encoding;
         * construction grants no authority.
         */
        public Ros2Rm_ros_interfacesMsgTrajectoryinfo[] tra_list = new Ros2Rm_ros_interfacesMsgTrajectoryinfo[0];
        /**
         * @brief Original rm_ros_interfaces/msg/Trajectorylist.state field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean state = false;

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
        public Ros2Rm_ros_interfacesMsgTrajectorylist()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgTrajectorylist> CODEC = new Codec<Ros2Rm_ros_interfacesMsgTrajectorylist>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Trajectorylist.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgTrajectorylist value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgTrajectorylist(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Trajectorylist.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgTrajectorylist decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgTrajectorylist value = readRos2Rm_ros_interfacesMsgTrajectorylist(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgTrajectorylist(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgTrajectorylist value)
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
        Ros2Rm_ros_interfacesMsgTrajectoryinfo[] part4 = value.tra_list;
        if(part4 == null || part4.length > 16)
            throw new IllegalArgumentException("fixed/sequence count bound");
        writer.integer(part4.length, 4, false);
        for(int i = 0; i < part4.length; ++i)
        {

            writeRos2Rm_ros_interfacesMsgTrajectoryinfo(writer, part4[i]);
        }
        boolean part5 = value.state;
        writer.integer(part5 ? 1 : 0, 1, false);
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
    private static Ros2Rm_ros_interfacesMsgTrajectorylist readRos2Rm_ros_interfacesMsgTrajectorylist(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgTrajectorylist value = new Ros2Rm_ros_interfacesMsgTrajectorylist();
        value.page_num = (int)reader.integer(4, true);
        value.page_size = (int)reader.integer(4, true);
        value.total_size = (int)reader.integer(4, true);
        value.vague_search = readText(reader, 256);
        value.tra_list = new Ros2Rm_ros_interfacesMsgTrajectoryinfo[readCount(reader, 16, 13)];
        for(int i = 0; i < value.tra_list.length; ++i)
            value.tra_list[i] = readRos2Rm_ros_interfacesMsgTrajectoryinfo(reader);
        value.state = readBool(reader);
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
    public static final class Ros2Rm_ros_interfacesMsgUdpexpandstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Udpexpandstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5";
        public static final int MIN_WIRE_BYTES = 14, MAX_WIRE_BYTES = 14;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpexpandstate.pos field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int pos = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpexpandstate.current field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int current = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpexpandstate.err_flag field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_flag = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpexpandstate.en_flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean en_flag = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpexpandstate.joint_id field.
         * @details uint8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int joint_id = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpexpandstate.mode field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short mode = 0;

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
        public Ros2Rm_ros_interfacesMsgUdpexpandstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgUdpexpandstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgUdpexpandstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Udpexpandstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgUdpexpandstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgUdpexpandstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Udpexpandstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgUdpexpandstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgUdpexpandstate value = readRos2Rm_ros_interfacesMsgUdpexpandstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgUdpexpandstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgUdpexpandstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.pos;
        writer.integer(part0, 4, true);
        int part1 = value.current;
        writer.integer(part1, 4, true);
        int part2 = value.err_flag;
        writer.integer(part2, 2, false);
        boolean part3 = value.en_flag;
        writer.integer(part3 ? 1 : 0, 1, false);
        int part4 = value.joint_id;
        writer.integer(part4, 1, false);
        short part5 = value.mode;
        writer.integer(part5, 2, true);
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
    private static Ros2Rm_ros_interfacesMsgUdpexpandstate readRos2Rm_ros_interfacesMsgUdpexpandstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgUdpexpandstate value = new Ros2Rm_ros_interfacesMsgUdpexpandstate();
        value.pos = (int)reader.integer(4, true);
        value.current = (int)reader.integer(4, true);
        value.err_flag = (int)reader.integer(2, false);
        value.en_flag = readBool(reader);
        value.joint_id = (int)reader.integer(1, false);
        value.mode = (short)reader.integer(2, true);
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
    public static final class Ros2Rm_ros_interfacesMsgUdpliftstate
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "rm_ros_interfaces/msg/Udpliftstate";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817";
        public static final int MIN_WIRE_BYTES = 13, MAX_WIRE_BYTES = 13;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpliftstate.height field.
         * @details int32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int height = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpliftstate.pos field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float pos = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpliftstate.current field.
         * @details int16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public short current = 0;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpliftstate.en_flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean en_flag = false;
        /**
         * @brief Original rm_ros_interfaces/msg/Udpliftstate.err_flag field.
         * @details uint16 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public int err_flag = 0;

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
        public Ros2Rm_ros_interfacesMsgUdpliftstate()
        {
        }

        public static final Codec<Ros2Rm_ros_interfacesMsgUdpliftstate> CODEC = new Codec<Ros2Rm_ros_interfacesMsgUdpliftstate>() {
            /**
             * @brief Encode the complete ordered value for rm_ros_interfaces/msg/Udpliftstate.
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
            public byte[] encode(Ros2Rm_ros_interfacesMsgUdpliftstate value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Rm_ros_interfacesMsgUdpliftstate(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for rm_ros_interfaces/msg/Udpliftstate.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Rm_ros_interfacesMsgUdpliftstate decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Rm_ros_interfacesMsgUdpliftstate value = readRos2Rm_ros_interfacesMsgUdpliftstate(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Rm_ros_interfacesMsgUdpliftstate(Codecs.Writer writer, Ros2Rm_ros_interfacesMsgUdpliftstate value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        int part0 = value.height;
        writer.integer(part0, 4, true);
        float part1 = value.pos;
        writer.f32(part1);
        short part2 = value.current;
        writer.integer(part2, 2, true);
        boolean part3 = value.en_flag;
        writer.integer(part3 ? 1 : 0, 1, false);
        int part4 = value.err_flag;
        writer.integer(part4, 2, false);
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
    private static Ros2Rm_ros_interfacesMsgUdpliftstate readRos2Rm_ros_interfacesMsgUdpliftstate(Codecs.Reader reader)
    {
        Ros2Rm_ros_interfacesMsgUdpliftstate value = new Ros2Rm_ros_interfacesMsgUdpliftstate();
        value.height = (int)reader.integer(4, true);
        value.pos = reader.f32();
        value.current = (short)reader.integer(2, true);
        value.en_flag = readBool(reader);
        value.err_flag = (int)reader.integer(2, false);
        return value;
    }
}
