/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original elephant/galactic canonical value domain.
 * @details The selected domain contains 71 complete record/components and 238 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package elephant.galactic;

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
     * @brief Preserve all original mecharm_interfaces/msg/MecharmAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros2Mecharm_interfacesMsgMecharmAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/msg/MecharmAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_37d12e0fc3b7bbb50bdcee0ca624a5c637f9554f3c64d640f538aeda57417331";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros2Mecharm_interfacesMsgMecharmAngles()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesMsgMecharmAngles> CODEC = new Codec<Ros2Mecharm_interfacesMsgMecharmAngles>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesMsgMecharmAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesMsgMecharmAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesMsgMecharmAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesMsgMecharmAngles value = readRos2Mecharm_interfacesMsgMecharmAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesMsgMecharmAngles(Codecs.Writer writer, Ros2Mecharm_interfacesMsgMecharmAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
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
    private static Ros2Mecharm_interfacesMsgMecharmAngles readRos2Mecharm_interfacesMsgMecharmAngles(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesMsgMecharmAngles value = new Ros2Mecharm_interfacesMsgMecharmAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros2Mecharm_interfacesMsgMecharmCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/msg/MecharmCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e1bb96b1908c796e2a89eb4dd2402a6cc02bcc5077c52268bb378a52dd3029ed";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros2Mecharm_interfacesMsgMecharmCoords()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesMsgMecharmCoords> CODEC = new Codec<Ros2Mecharm_interfacesMsgMecharmCoords>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesMsgMecharmCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesMsgMecharmCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesMsgMecharmCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesMsgMecharmCoords value = readRos2Mecharm_interfacesMsgMecharmCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesMsgMecharmCoords(Codecs.Writer writer, Ros2Mecharm_interfacesMsgMecharmCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
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
    private static Ros2Mecharm_interfacesMsgMecharmCoords readRos2Mecharm_interfacesMsgMecharmCoords(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesMsgMecharmCoords value = new Ros2Mecharm_interfacesMsgMecharmCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros2Mecharm_interfacesMsgMecharmGripperStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/msg/MecharmGripperStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2123b61d7b9ec218ee074473c26e5ec82fde818f40796047fc369cb84516e046";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmGripperStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mecharm_interfacesMsgMecharmGripperStatus()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesMsgMecharmGripperStatus> CODEC = new Codec<Ros2Mecharm_interfacesMsgMecharmGripperStatus>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmGripperStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesMsgMecharmGripperStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesMsgMecharmGripperStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmGripperStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesMsgMecharmGripperStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesMsgMecharmGripperStatus value = readRos2Mecharm_interfacesMsgMecharmGripperStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesMsgMecharmGripperStatus(Codecs.Writer writer, Ros2Mecharm_interfacesMsgMecharmGripperStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mecharm_interfacesMsgMecharmGripperStatus readRos2Mecharm_interfacesMsgMecharmGripperStatus(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesMsgMecharmGripperStatus value = new Ros2Mecharm_interfacesMsgMecharmGripperStatus();
        value.status = readBool(reader);
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
    public static final class Ros2Mecharm_interfacesMsgMecharmPumpStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/msg/MecharmPumpStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4d44c84c1fdd3f4db92d9975545348bfd727320e63c9fbfde5adf0b81ca04add";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmPumpStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmPumpStatus.pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin1 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmPumpStatus.pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin2 = 0;

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
        public Ros2Mecharm_interfacesMsgMecharmPumpStatus()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesMsgMecharmPumpStatus> CODEC = new Codec<Ros2Mecharm_interfacesMsgMecharmPumpStatus>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmPumpStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesMsgMecharmPumpStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesMsgMecharmPumpStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmPumpStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesMsgMecharmPumpStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesMsgMecharmPumpStatus value = readRos2Mecharm_interfacesMsgMecharmPumpStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesMsgMecharmPumpStatus(Codecs.Writer writer, Ros2Mecharm_interfacesMsgMecharmPumpStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.pin2;
        writer.integer(part2, 1, true);
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
    private static Ros2Mecharm_interfacesMsgMecharmPumpStatus readRos2Mecharm_interfacesMsgMecharmPumpStatus(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesMsgMecharmPumpStatus value = new Ros2Mecharm_interfacesMsgMecharmPumpStatus();
        value.status = readBool(reader);
        value.pin1 = (byte)reader.integer(1, true);
        value.pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros2Mecharm_interfacesMsgMecharmSetAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/msg/MecharmSetAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_54b634e4c5d0bc9fdf04a98d31816e24d3a9c5eb497bb38fb16e2de593cf81f5";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetAngles.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mecharm_interfacesMsgMecharmSetAngles()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesMsgMecharmSetAngles> CODEC = new Codec<Ros2Mecharm_interfacesMsgMecharmSetAngles>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmSetAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesMsgMecharmSetAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesMsgMecharmSetAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmSetAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesMsgMecharmSetAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesMsgMecharmSetAngles value = readRos2Mecharm_interfacesMsgMecharmSetAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesMsgMecharmSetAngles(Codecs.Writer writer, Ros2Mecharm_interfacesMsgMecharmSetAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mecharm_interfacesMsgMecharmSetAngles readRos2Mecharm_interfacesMsgMecharmSetAngles(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesMsgMecharmSetAngles value = new Ros2Mecharm_interfacesMsgMecharmSetAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mecharm_interfacesMsgMecharmSetCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/msg/MecharmSetCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_44944ee22cd4254167083cfdcd7377ee2f59dbe27414932c980670a471a6e7c2";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mecharm_interfaces/msg/MecharmSetCoords.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros2Mecharm_interfacesMsgMecharmSetCoords()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesMsgMecharmSetCoords> CODEC = new Codec<Ros2Mecharm_interfacesMsgMecharmSetCoords>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/msg/MecharmSetCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesMsgMecharmSetCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesMsgMecharmSetCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/msg/MecharmSetCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesMsgMecharmSetCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesMsgMecharmSetCoords value = readRos2Mecharm_interfacesMsgMecharmSetCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesMsgMecharmSetCoords(Codecs.Writer writer, Ros2Mecharm_interfacesMsgMecharmSetCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
        byte part7 = value.model;
        writer.integer(part7, 1, true);
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
    private static Ros2Mecharm_interfacesMsgMecharmSetCoords readRos2Mecharm_interfacesMsgMecharmSetCoords(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesMsgMecharmSetCoords value = new Ros2Mecharm_interfacesMsgMecharmSetCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
        value.speed = (byte)reader.integer(1, true);
        value.model = (byte)reader.integer(1, true);
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
    public static final class Ros2Mecharm_interfacesSrvGetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/GetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_95b1d7786c03c6fec98fec0706088481fe9c7aa48c9f33f4325031d0437d97df";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mecharm_interfacesSrvGetAngles_Request()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvGetAngles_Request> CODEC = new Codec<Ros2Mecharm_interfacesSrvGetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvGetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvGetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvGetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvGetAngles_Request value = readRos2Mecharm_interfacesSrvGetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvGetAngles_Request(Codecs.Writer writer, Ros2Mecharm_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mecharm_interfacesSrvGetAngles_Request readRos2Mecharm_interfacesSrvGetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvGetAngles_Request value = new Ros2Mecharm_interfacesSrvGetAngles_Request();
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
    public static final class Ros2Mecharm_interfacesSrvGetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/GetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b1a035847ac7a888053ba8de7494abb6d2cdc01f61e4d0a51cb3ef6f479adf61";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetAngles_Response.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros2Mecharm_interfacesSrvGetAngles_Response()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvGetAngles_Response> CODEC = new Codec<Ros2Mecharm_interfacesSrvGetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvGetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvGetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvGetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvGetAngles_Response value = readRos2Mecharm_interfacesSrvGetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvGetAngles_Response(Codecs.Writer writer, Ros2Mecharm_interfacesSrvGetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
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
    private static Ros2Mecharm_interfacesSrvGetAngles_Response readRos2Mecharm_interfacesSrvGetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvGetAngles_Response value = new Ros2Mecharm_interfacesSrvGetAngles_Response();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros2Mecharm_interfacesSrvGetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/GetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_353827e7125cfa6c829f1138cc33901099a26cf73a8d045cf806b427994ccef1";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mecharm_interfacesSrvGetCoords_Request()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvGetCoords_Request> CODEC = new Codec<Ros2Mecharm_interfacesSrvGetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvGetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvGetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvGetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvGetCoords_Request value = readRos2Mecharm_interfacesSrvGetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvGetCoords_Request(Codecs.Writer writer, Ros2Mecharm_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mecharm_interfacesSrvGetCoords_Request readRos2Mecharm_interfacesSrvGetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvGetCoords_Request value = new Ros2Mecharm_interfacesSrvGetCoords_Request();
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
    public static final class Ros2Mecharm_interfacesSrvGetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/GetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f7fcb8c4fdb47c06e93a8f67613490f7ab0ef2af7efb02092874722670b36c75";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mecharm_interfaces/srv/GetCoords_Response.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetCoords_Response.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetCoords_Response.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetCoords_Response.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetCoords_Response.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mecharm_interfaces/srv/GetCoords_Response.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros2Mecharm_interfacesSrvGetCoords_Response()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvGetCoords_Response> CODEC = new Codec<Ros2Mecharm_interfacesSrvGetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/GetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvGetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvGetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/GetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvGetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvGetCoords_Response value = readRos2Mecharm_interfacesSrvGetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvGetCoords_Response(Codecs.Writer writer, Ros2Mecharm_interfacesSrvGetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
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
    private static Ros2Mecharm_interfacesSrvGetCoords_Response readRos2Mecharm_interfacesSrvGetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvGetCoords_Response value = new Ros2Mecharm_interfacesSrvGetCoords_Response();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros2Mecharm_interfacesSrvGripperStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/GripperStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_044bf47303f5da0d0e17e795b8567b714d55680e8144c8e2e71ff7032859dfbb";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mecharm_interfaces/srv/GripperStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mecharm_interfacesSrvGripperStatus_Request()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvGripperStatus_Request> CODEC = new Codec<Ros2Mecharm_interfacesSrvGripperStatus_Request>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/GripperStatus_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvGripperStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvGripperStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/GripperStatus_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvGripperStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvGripperStatus_Request value = readRos2Mecharm_interfacesSrvGripperStatus_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvGripperStatus_Request(Codecs.Writer writer, Ros2Mecharm_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mecharm_interfacesSrvGripperStatus_Request readRos2Mecharm_interfacesSrvGripperStatus_Request(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvGripperStatus_Request value = new Ros2Mecharm_interfacesSrvGripperStatus_Request();
        value.status = readBool(reader);
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
    public static final class Ros2Mecharm_interfacesSrvGripperStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/GripperStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_5aeee3c79bb6ebe4a4cb77f54552e97dcc155c65151a5965761a360d41acbea3";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mecharm_interfaces/srv/GripperStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mecharm_interfacesSrvGripperStatus_Response()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvGripperStatus_Response> CODEC = new Codec<Ros2Mecharm_interfacesSrvGripperStatus_Response>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/GripperStatus_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvGripperStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvGripperStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/GripperStatus_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvGripperStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvGripperStatus_Response value = readRos2Mecharm_interfacesSrvGripperStatus_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvGripperStatus_Response(Codecs.Writer writer, Ros2Mecharm_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mecharm_interfacesSrvGripperStatus_Response readRos2Mecharm_interfacesSrvGripperStatus_Response(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvGripperStatus_Response value = new Ros2Mecharm_interfacesSrvGripperStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mecharm_interfacesSrvPumpStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/PumpStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f80774682b7b1d447ff2f8dd7f6ac2f917dd4f71ccd3b1685a57b579fa41d6b9";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mecharm_interfaces/srv/PumpStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;
        /**
         * @brief Original mecharm_interfaces/srv/PumpStatus_Request.pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin1 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/PumpStatus_Request.pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin2 = 0;

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
        public Ros2Mecharm_interfacesSrvPumpStatus_Request()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvPumpStatus_Request> CODEC = new Codec<Ros2Mecharm_interfacesSrvPumpStatus_Request>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/PumpStatus_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvPumpStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvPumpStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/PumpStatus_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvPumpStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvPumpStatus_Request value = readRos2Mecharm_interfacesSrvPumpStatus_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvPumpStatus_Request(Codecs.Writer writer, Ros2Mecharm_interfacesSrvPumpStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.pin2;
        writer.integer(part2, 1, true);
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
    private static Ros2Mecharm_interfacesSrvPumpStatus_Request readRos2Mecharm_interfacesSrvPumpStatus_Request(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvPumpStatus_Request value = new Ros2Mecharm_interfacesSrvPumpStatus_Request();
        value.status = readBool(reader);
        value.pin1 = (byte)reader.integer(1, true);
        value.pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros2Mecharm_interfacesSrvPumpStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/PumpStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_935c0e2aaca3f1e8aad8e4487484292b3d30ccdff180a9aaa50f454f75ecff1b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mecharm_interfaces/srv/PumpStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mecharm_interfacesSrvPumpStatus_Response()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvPumpStatus_Response> CODEC = new Codec<Ros2Mecharm_interfacesSrvPumpStatus_Response>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/PumpStatus_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvPumpStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvPumpStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/PumpStatus_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvPumpStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvPumpStatus_Response value = readRos2Mecharm_interfacesSrvPumpStatus_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvPumpStatus_Response(Codecs.Writer writer, Ros2Mecharm_interfacesSrvPumpStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mecharm_interfacesSrvPumpStatus_Response readRos2Mecharm_interfacesSrvPumpStatus_Response(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvPumpStatus_Response value = new Ros2Mecharm_interfacesSrvPumpStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mecharm_interfacesSrvSetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/SetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86897875ef9a609098bc1eabba63aec7d960de380db98370e7a67626b2253eeb";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mecharm_interfacesSrvSetAngles_Request()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvSetAngles_Request> CODEC = new Codec<Ros2Mecharm_interfacesSrvSetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvSetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvSetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvSetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvSetAngles_Request value = readRos2Mecharm_interfacesSrvSetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvSetAngles_Request(Codecs.Writer writer, Ros2Mecharm_interfacesSrvSetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mecharm_interfacesSrvSetAngles_Request readRos2Mecharm_interfacesSrvSetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvSetAngles_Request value = new Ros2Mecharm_interfacesSrvSetAngles_Request();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mecharm_interfacesSrvSetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/SetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4782fe6a137dee35bf39d863be0aea118f61dcef092c11b013c44c6f4c129620";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mecharm_interfaces/srv/SetAngles_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mecharm_interfacesSrvSetAngles_Response()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvSetAngles_Response> CODEC = new Codec<Ros2Mecharm_interfacesSrvSetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvSetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvSetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvSetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvSetAngles_Response value = readRos2Mecharm_interfacesSrvSetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvSetAngles_Response(Codecs.Writer writer, Ros2Mecharm_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mecharm_interfacesSrvSetAngles_Response readRos2Mecharm_interfacesSrvSetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvSetAngles_Response value = new Ros2Mecharm_interfacesSrvSetAngles_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mecharm_interfacesSrvSetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/SetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a0daefe14076b73f1a64924ffc15a6b9647abe1b1887377e642f41b1a7920916";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Request.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros2Mecharm_interfacesSrvSetCoords_Request()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvSetCoords_Request> CODEC = new Codec<Ros2Mecharm_interfacesSrvSetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvSetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvSetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvSetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvSetCoords_Request value = readRos2Mecharm_interfacesSrvSetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvSetCoords_Request(Codecs.Writer writer, Ros2Mecharm_interfacesSrvSetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
        byte part7 = value.model;
        writer.integer(part7, 1, true);
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
    private static Ros2Mecharm_interfacesSrvSetCoords_Request readRos2Mecharm_interfacesSrvSetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvSetCoords_Request value = new Ros2Mecharm_interfacesSrvSetCoords_Request();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
        value.speed = (byte)reader.integer(1, true);
        value.model = (byte)reader.integer(1, true);
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
    public static final class Ros2Mecharm_interfacesSrvSetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mecharm_interfaces/srv/SetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_43d02cfe61b6fb08f035e1f8ea78496cdcb488ed4c916f528415dce4ab810b7f";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mecharm_interfaces/srv/SetCoords_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mecharm_interfacesSrvSetCoords_Response()
        {
        }

        public static final Codec<Ros2Mecharm_interfacesSrvSetCoords_Response> CODEC = new Codec<Ros2Mecharm_interfacesSrvSetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for mecharm_interfaces/srv/SetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mecharm_interfacesSrvSetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mecharm_interfacesSrvSetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mecharm_interfaces/srv/SetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mecharm_interfacesSrvSetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mecharm_interfacesSrvSetCoords_Response value = readRos2Mecharm_interfacesSrvSetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mecharm_interfacesSrvSetCoords_Response(Codecs.Writer writer, Ros2Mecharm_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mecharm_interfacesSrvSetCoords_Response readRos2Mecharm_interfacesSrvSetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mecharm_interfacesSrvSetCoords_Response value = new Ros2Mecharm_interfacesSrvSetCoords_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_interfacesMsgMycobotAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/msg/MycobotAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_38f099339ed5ee9fe56a5b44c3f0849e2ff7ff721b2a95b5cf49e3b92f6a9d82";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros2Mycobot_interfacesMsgMycobotAngles()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesMsgMycobotAngles> CODEC = new Codec<Ros2Mycobot_interfacesMsgMycobotAngles>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesMsgMycobotAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesMsgMycobotAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesMsgMycobotAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesMsgMycobotAngles value = readRos2Mycobot_interfacesMsgMycobotAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesMsgMycobotAngles(Codecs.Writer writer, Ros2Mycobot_interfacesMsgMycobotAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
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
    private static Ros2Mycobot_interfacesMsgMycobotAngles readRos2Mycobot_interfacesMsgMycobotAngles(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesMsgMycobotAngles value = new Ros2Mycobot_interfacesMsgMycobotAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros2Mycobot_interfacesMsgMycobotCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/msg/MycobotCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8d9606c561db7680e816f5a19fd148c374f271acee8b261f7d060f370e0399d7";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros2Mycobot_interfacesMsgMycobotCoords()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesMsgMycobotCoords> CODEC = new Codec<Ros2Mycobot_interfacesMsgMycobotCoords>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesMsgMycobotCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesMsgMycobotCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesMsgMycobotCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesMsgMycobotCoords value = readRos2Mycobot_interfacesMsgMycobotCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesMsgMycobotCoords(Codecs.Writer writer, Ros2Mycobot_interfacesMsgMycobotCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
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
    private static Ros2Mycobot_interfacesMsgMycobotCoords readRos2Mycobot_interfacesMsgMycobotCoords(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesMsgMycobotCoords value = new Ros2Mycobot_interfacesMsgMycobotCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros2Mycobot_interfacesMsgMycobotGripperStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/msg/MycobotGripperStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4dc3ab413af3da01e26a3289ef9e5ef39488d00483631d701b4d617d9c9ba33d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotGripperStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mycobot_interfacesMsgMycobotGripperStatus()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesMsgMycobotGripperStatus> CODEC = new Codec<Ros2Mycobot_interfacesMsgMycobotGripperStatus>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotGripperStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesMsgMycobotGripperStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesMsgMycobotGripperStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotGripperStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesMsgMycobotGripperStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesMsgMycobotGripperStatus value = readRos2Mycobot_interfacesMsgMycobotGripperStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesMsgMycobotGripperStatus(Codecs.Writer writer, Ros2Mycobot_interfacesMsgMycobotGripperStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_interfacesMsgMycobotGripperStatus readRos2Mycobot_interfacesMsgMycobotGripperStatus(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesMsgMycobotGripperStatus value = new Ros2Mycobot_interfacesMsgMycobotGripperStatus();
        value.status = readBool(reader);
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
    public static final class Ros2Mycobot_interfacesMsgMycobotPumpStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/msg/MycobotPumpStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_860004dc3975ab44b5a1b0a77a9ff01ab58bfc71d7142d842d3bf9c636365e58";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotPumpStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotPumpStatus.pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin1 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotPumpStatus.pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin2 = 0;

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
        public Ros2Mycobot_interfacesMsgMycobotPumpStatus()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesMsgMycobotPumpStatus> CODEC = new Codec<Ros2Mycobot_interfacesMsgMycobotPumpStatus>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotPumpStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesMsgMycobotPumpStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesMsgMycobotPumpStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotPumpStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesMsgMycobotPumpStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesMsgMycobotPumpStatus value = readRos2Mycobot_interfacesMsgMycobotPumpStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesMsgMycobotPumpStatus(Codecs.Writer writer, Ros2Mycobot_interfacesMsgMycobotPumpStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.pin2;
        writer.integer(part2, 1, true);
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
    private static Ros2Mycobot_interfacesMsgMycobotPumpStatus readRos2Mycobot_interfacesMsgMycobotPumpStatus(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesMsgMycobotPumpStatus value = new Ros2Mycobot_interfacesMsgMycobotPumpStatus();
        value.status = readBool(reader);
        value.pin1 = (byte)reader.integer(1, true);
        value.pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_interfacesMsgMycobotSetAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/msg/MycobotSetAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_798576c5f0b03e46e5cc5d2edf81bc7042042482ef574643ca136621346d731e";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetAngles.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mycobot_interfacesMsgMycobotSetAngles()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesMsgMycobotSetAngles> CODEC = new Codec<Ros2Mycobot_interfacesMsgMycobotSetAngles>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotSetAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesMsgMycobotSetAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesMsgMycobotSetAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotSetAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesMsgMycobotSetAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesMsgMycobotSetAngles value = readRos2Mycobot_interfacesMsgMycobotSetAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesMsgMycobotSetAngles(Codecs.Writer writer, Ros2Mycobot_interfacesMsgMycobotSetAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mycobot_interfacesMsgMycobotSetAngles readRos2Mycobot_interfacesMsgMycobotSetAngles(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesMsgMycobotSetAngles value = new Ros2Mycobot_interfacesMsgMycobotSetAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_interfacesMsgMycobotSetCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/msg/MycobotSetCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_462b7629172037a6959d08984896980c8c07ae5b6364c6d848b172dea23cab49";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mycobot_interfaces/msg/MycobotSetCoords.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros2Mycobot_interfacesMsgMycobotSetCoords()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesMsgMycobotSetCoords> CODEC = new Codec<Ros2Mycobot_interfacesMsgMycobotSetCoords>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/msg/MycobotSetCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesMsgMycobotSetCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesMsgMycobotSetCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/msg/MycobotSetCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesMsgMycobotSetCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesMsgMycobotSetCoords value = readRos2Mycobot_interfacesMsgMycobotSetCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesMsgMycobotSetCoords(Codecs.Writer writer, Ros2Mycobot_interfacesMsgMycobotSetCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
        byte part7 = value.model;
        writer.integer(part7, 1, true);
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
    private static Ros2Mycobot_interfacesMsgMycobotSetCoords readRos2Mycobot_interfacesMsgMycobotSetCoords(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesMsgMycobotSetCoords value = new Ros2Mycobot_interfacesMsgMycobotSetCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
        value.speed = (byte)reader.integer(1, true);
        value.model = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_interfacesSrvGetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/GetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ea433bdb6e3cb77923720a56bec24aaec62c88480248a4ed425370092474d38e";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mycobot_interfacesSrvGetAngles_Request()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvGetAngles_Request> CODEC = new Codec<Ros2Mycobot_interfacesSrvGetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvGetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvGetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvGetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvGetAngles_Request value = readRos2Mycobot_interfacesSrvGetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvGetAngles_Request(Codecs.Writer writer, Ros2Mycobot_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mycobot_interfacesSrvGetAngles_Request readRos2Mycobot_interfacesSrvGetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvGetAngles_Request value = new Ros2Mycobot_interfacesSrvGetAngles_Request();
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
    public static final class Ros2Mycobot_interfacesSrvGetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/GetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_14d6e2d8a6f7234719fae06d8807c651965387e252160df555ede0a070123b8a";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetAngles_Response.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros2Mycobot_interfacesSrvGetAngles_Response()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvGetAngles_Response> CODEC = new Codec<Ros2Mycobot_interfacesSrvGetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvGetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvGetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvGetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvGetAngles_Response value = readRos2Mycobot_interfacesSrvGetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvGetAngles_Response(Codecs.Writer writer, Ros2Mycobot_interfacesSrvGetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
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
    private static Ros2Mycobot_interfacesSrvGetAngles_Response readRos2Mycobot_interfacesSrvGetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvGetAngles_Response value = new Ros2Mycobot_interfacesSrvGetAngles_Response();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros2Mycobot_interfacesSrvGetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/GetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_31ef03eefc143e9d040572e378a5803f44f68bac6d03fbb44ca27f87fb5fb076";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mycobot_interfacesSrvGetCoords_Request()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvGetCoords_Request> CODEC = new Codec<Ros2Mycobot_interfacesSrvGetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvGetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvGetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvGetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvGetCoords_Request value = readRos2Mycobot_interfacesSrvGetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvGetCoords_Request(Codecs.Writer writer, Ros2Mycobot_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mycobot_interfacesSrvGetCoords_Request readRos2Mycobot_interfacesSrvGetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvGetCoords_Request value = new Ros2Mycobot_interfacesSrvGetCoords_Request();
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
    public static final class Ros2Mycobot_interfacesSrvGetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/GetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c9886b5cc5f3c48116a1c884f75ab4af49be46e2c0476ffc3aa8167ff96f7787";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_interfaces/srv/GetCoords_Response.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetCoords_Response.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetCoords_Response.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetCoords_Response.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetCoords_Response.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_interfaces/srv/GetCoords_Response.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros2Mycobot_interfacesSrvGetCoords_Response()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvGetCoords_Response> CODEC = new Codec<Ros2Mycobot_interfacesSrvGetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/GetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvGetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvGetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/GetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvGetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvGetCoords_Response value = readRos2Mycobot_interfacesSrvGetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvGetCoords_Response(Codecs.Writer writer, Ros2Mycobot_interfacesSrvGetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
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
    private static Ros2Mycobot_interfacesSrvGetCoords_Response readRos2Mycobot_interfacesSrvGetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvGetCoords_Response value = new Ros2Mycobot_interfacesSrvGetCoords_Response();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros2Mycobot_interfacesSrvGripperStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/GripperStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6c5ae66e66f12834b7d623e07a5b3ef2b8127cd9cd83cb36d6793a68d921fcd5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_interfaces/srv/GripperStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mycobot_interfacesSrvGripperStatus_Request()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvGripperStatus_Request> CODEC = new Codec<Ros2Mycobot_interfacesSrvGripperStatus_Request>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/GripperStatus_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvGripperStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvGripperStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/GripperStatus_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvGripperStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvGripperStatus_Request value = readRos2Mycobot_interfacesSrvGripperStatus_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvGripperStatus_Request(Codecs.Writer writer, Ros2Mycobot_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_interfacesSrvGripperStatus_Request readRos2Mycobot_interfacesSrvGripperStatus_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvGripperStatus_Request value = new Ros2Mycobot_interfacesSrvGripperStatus_Request();
        value.status = readBool(reader);
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
    public static final class Ros2Mycobot_interfacesSrvGripperStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/GripperStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_530f1e1acaa8cda6b43f8a8c0a38f5376eaebce3e99f7fb194a28143bed2d1ab";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_interfaces/srv/GripperStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_interfacesSrvGripperStatus_Response()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvGripperStatus_Response> CODEC = new Codec<Ros2Mycobot_interfacesSrvGripperStatus_Response>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/GripperStatus_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvGripperStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvGripperStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/GripperStatus_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvGripperStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvGripperStatus_Response value = readRos2Mycobot_interfacesSrvGripperStatus_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvGripperStatus_Response(Codecs.Writer writer, Ros2Mycobot_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_interfacesSrvGripperStatus_Response readRos2Mycobot_interfacesSrvGripperStatus_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvGripperStatus_Response value = new Ros2Mycobot_interfacesSrvGripperStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_interfacesSrvPumpStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/PumpStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_50b7fa285b93dd9e6b3b0eafda0afeb5911ab6e3b79d58f03f1cf1f76e732cd0";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mycobot_interfaces/srv/PumpStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;
        /**
         * @brief Original mycobot_interfaces/srv/PumpStatus_Request.pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin1 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/PumpStatus_Request.pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin2 = 0;

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
        public Ros2Mycobot_interfacesSrvPumpStatus_Request()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvPumpStatus_Request> CODEC = new Codec<Ros2Mycobot_interfacesSrvPumpStatus_Request>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/PumpStatus_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvPumpStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvPumpStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/PumpStatus_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvPumpStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvPumpStatus_Request value = readRos2Mycobot_interfacesSrvPumpStatus_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvPumpStatus_Request(Codecs.Writer writer, Ros2Mycobot_interfacesSrvPumpStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.pin2;
        writer.integer(part2, 1, true);
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
    private static Ros2Mycobot_interfacesSrvPumpStatus_Request readRos2Mycobot_interfacesSrvPumpStatus_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvPumpStatus_Request value = new Ros2Mycobot_interfacesSrvPumpStatus_Request();
        value.status = readBool(reader);
        value.pin1 = (byte)reader.integer(1, true);
        value.pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_interfacesSrvPumpStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/PumpStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b347313e1d4430f4e78a72fb8c35d53a39d1d391290373f84f1f8b2b44375eb0";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_interfaces/srv/PumpStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_interfacesSrvPumpStatus_Response()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvPumpStatus_Response> CODEC = new Codec<Ros2Mycobot_interfacesSrvPumpStatus_Response>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/PumpStatus_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvPumpStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvPumpStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/PumpStatus_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvPumpStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvPumpStatus_Response value = readRos2Mycobot_interfacesSrvPumpStatus_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvPumpStatus_Response(Codecs.Writer writer, Ros2Mycobot_interfacesSrvPumpStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_interfacesSrvPumpStatus_Response readRos2Mycobot_interfacesSrvPumpStatus_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvPumpStatus_Response value = new Ros2Mycobot_interfacesSrvPumpStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_interfacesSrvSetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/SetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a06efd8b6af878d55c26fda8a7177a0b6c8b687f7e1b9f2e17e2ecd19c440310";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mycobot_interfacesSrvSetAngles_Request()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvSetAngles_Request> CODEC = new Codec<Ros2Mycobot_interfacesSrvSetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvSetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvSetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvSetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvSetAngles_Request value = readRos2Mycobot_interfacesSrvSetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvSetAngles_Request(Codecs.Writer writer, Ros2Mycobot_interfacesSrvSetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mycobot_interfacesSrvSetAngles_Request readRos2Mycobot_interfacesSrvSetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvSetAngles_Request value = new Ros2Mycobot_interfacesSrvSetAngles_Request();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_interfacesSrvSetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/SetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_af4daae72e9ec28c8848b76b556c9387e65ba9698d8f0f6e5ba17522472ab665";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_interfaces/srv/SetAngles_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_interfacesSrvSetAngles_Response()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvSetAngles_Response> CODEC = new Codec<Ros2Mycobot_interfacesSrvSetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvSetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvSetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvSetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvSetAngles_Response value = readRos2Mycobot_interfacesSrvSetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvSetAngles_Response(Codecs.Writer writer, Ros2Mycobot_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_interfacesSrvSetAngles_Response readRos2Mycobot_interfacesSrvSetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvSetAngles_Response value = new Ros2Mycobot_interfacesSrvSetAngles_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_interfacesSrvSetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/SetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_76a98d5db6f98255046f13855dc7468049894805d83e3d3a7fbdaace40292213";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Request.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros2Mycobot_interfacesSrvSetCoords_Request()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvSetCoords_Request> CODEC = new Codec<Ros2Mycobot_interfacesSrvSetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvSetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvSetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvSetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvSetCoords_Request value = readRos2Mycobot_interfacesSrvSetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvSetCoords_Request(Codecs.Writer writer, Ros2Mycobot_interfacesSrvSetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
        byte part7 = value.model;
        writer.integer(part7, 1, true);
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
    private static Ros2Mycobot_interfacesSrvSetCoords_Request readRos2Mycobot_interfacesSrvSetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvSetCoords_Request value = new Ros2Mycobot_interfacesSrvSetCoords_Request();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
        value.speed = (byte)reader.integer(1, true);
        value.model = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_interfacesSrvSetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_interfaces/srv/SetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_75e3ae0e6db60a275b08e450c420969aa1ee05d0f34864e8fb6535d2d13613b9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_interfaces/srv/SetCoords_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_interfacesSrvSetCoords_Response()
        {
        }

        public static final Codec<Ros2Mycobot_interfacesSrvSetCoords_Response> CODEC = new Codec<Ros2Mycobot_interfacesSrvSetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for mycobot_interfaces/srv/SetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_interfacesSrvSetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_interfacesSrvSetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_interfaces/srv/SetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_interfacesSrvSetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_interfacesSrvSetCoords_Response value = readRos2Mycobot_interfacesSrvSetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_interfacesSrvSetCoords_Response(Codecs.Writer writer, Ros2Mycobot_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_interfacesSrvSetCoords_Response readRos2Mycobot_interfacesSrvSetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_interfacesSrvSetCoords_Response value = new Ros2Mycobot_interfacesSrvSetCoords_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_pro450_interfacesMsgMycobotAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2351398be27155ac63b8a3d15ffd0d3088dd7cf284182a9b494791b7780aa6da";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros2Mycobot_pro450_interfacesMsgMycobotAngles()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesMsgMycobotAngles> CODEC = new Codec<Ros2Mycobot_pro450_interfacesMsgMycobotAngles>() {
            /**
             * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesMsgMycobotAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesMsgMycobotAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesMsgMycobotAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesMsgMycobotAngles value = readRos2Mycobot_pro450_interfacesMsgMycobotAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesMsgMycobotAngles(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesMsgMycobotAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
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
    private static Ros2Mycobot_pro450_interfacesMsgMycobotAngles readRos2Mycobot_pro450_interfacesMsgMycobotAngles(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesMsgMycobotAngles value = new Ros2Mycobot_pro450_interfacesMsgMycobotAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros2Mycobot_pro450_interfacesMsgMycobotCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b8513545b0975757c6b7f756a5cedfe8aa0c5d28d0e573adfde001b452e923de";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros2Mycobot_pro450_interfacesMsgMycobotCoords()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesMsgMycobotCoords> CODEC = new Codec<Ros2Mycobot_pro450_interfacesMsgMycobotCoords>() {
            /**
             * @brief Encode the complete ordered value for mycobot_pro450_interfaces/msg/MycobotCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesMsgMycobotCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesMsgMycobotCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesMsgMycobotCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesMsgMycobotCoords value = readRos2Mycobot_pro450_interfacesMsgMycobotCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesMsgMycobotCoords(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesMsgMycobotCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
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
    private static Ros2Mycobot_pro450_interfacesMsgMycobotCoords readRos2Mycobot_pro450_interfacesMsgMycobotCoords(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesMsgMycobotCoords value = new Ros2Mycobot_pro450_interfacesMsgMycobotCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotGripperStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1d097932f2e6b9b4e73ff838b5223b585b230e4edc5c229b310eb00404f6e784";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotGripperStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus> CODEC =
            new Codec<Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mycobot_pro450_interfaces/msg/MycobotGripperStatus.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mycobot_pro450_interfaces/msg/MycobotGripperStatus.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value = readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(Codecs.Writer writer,
                                                                                  Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus readRos2Mycobot_pro450_interfacesMsgMycobotGripperStatus(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus value = new Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus();
        value.status = readBool(reader);
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
    public static final class Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotSetAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_23d208d7fa8f7b7488be7c7db487698db4b227ef65e99c55d996901d27c3e591";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetAngles.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles> CODEC = new Codec<Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/msg/MycobotSetAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotSetAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value = readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles readRos2Mycobot_pro450_interfacesMsgMycobotSetAngles(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles value = new Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/msg/MycobotSetCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_60f40a2f6a577e5785fd69e0cbe9128b301aeaec6b70fd678c71e7f9a5426cea";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/msg/MycobotSetCoords.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords> CODEC = new Codec<Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/msg/MycobotSetCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_pro450_interfaces/msg/MycobotSetCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value = readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords readRos2Mycobot_pro450_interfacesMsgMycobotSetCoords(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords value = new Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d2d8197675b9dadd50ae1a22b165a84e2e76b293b28cc70bec211225c60626c4";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvGetAngles_Request()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGetAngles_Request> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvGetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/GetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvGetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/GetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvGetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value = readRos2Mycobot_pro450_interfacesSrvGetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGetAngles_Request(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mycobot_pro450_interfacesSrvGetAngles_Request readRos2Mycobot_pro450_interfacesSrvGetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGetAngles_Request value = new Ros2Mycobot_pro450_interfacesSrvGetAngles_Request();
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_13056bbe3bdef4feb8488783e1c5cf725d1fb94006f36f2221f61081084227f8";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetAngles_Response.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvGetAngles_Response()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGetAngles_Response> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvGetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/GetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvGetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/GetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvGetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value = readRos2Mycobot_pro450_interfacesSrvGetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGetAngles_Response(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
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
    private static Ros2Mycobot_pro450_interfacesSrvGetAngles_Response readRos2Mycobot_pro450_interfacesSrvGetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGetAngles_Response value = new Ros2Mycobot_pro450_interfacesSrvGetAngles_Response();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bda408ece90e671ce58ae428f79f01c1429c3b3aa3c1ef2efe9dc045faa9e3c2";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvGetCoords_Request()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGetCoords_Request> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvGetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/GetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvGetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/GetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvGetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value = readRos2Mycobot_pro450_interfacesSrvGetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGetCoords_Request(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mycobot_pro450_interfacesSrvGetCoords_Request readRos2Mycobot_pro450_interfacesSrvGetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGetCoords_Request value = new Ros2Mycobot_pro450_interfacesSrvGetCoords_Request();
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_01e8a3ef4c048100af32d92cd027769e32eacd82dba36dc3bde30c70cb44afdf";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetCoords_Response.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvGetCoords_Response()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGetCoords_Response> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvGetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/GetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvGetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/GetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvGetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value = readRos2Mycobot_pro450_interfacesSrvGetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGetCoords_Response(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
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
    private static Ros2Mycobot_pro450_interfacesSrvGetCoords_Response readRos2Mycobot_pro450_interfacesSrvGetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGetCoords_Response value = new Ros2Mycobot_pro450_interfacesSrvGetCoords_Response();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetGripperValue_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_17cb5e3826409b661c2ad4bad8fde2b4c826dde95d8600e1a17bcf4908eca125";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request> CODEC =
            new Codec<Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mycobot_pro450_interfaces/srv/GetGripperValue_Request.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mycobot_pro450_interfaces/srv/GetGripperValue_Request.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value = readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(Codecs.Writer writer,
                                                                                     Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request value = new Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request();
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GetGripperValue_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6b210e18d0696735196fb2e166b7168165dba6f03b97759a437fc8dc08ab2676";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GetGripperValue_Response.gripper_angle field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte gripper_angle = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response> CODEC =
            new Codec<Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mycobot_pro450_interfaces/srv/GetGripperValue_Response.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mycobot_pro450_interfaces/srv/GetGripperValue_Response.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value = readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(Codecs.Writer writer,
                                                                                      Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        byte part0 = value.gripper_angle;
        writer.integer(part0, 1, true);
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
    private static Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response readRos2Mycobot_pro450_interfacesSrvGetGripperValue_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response value = new Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response();
        value.gripper_angle = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GripperStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_edc3352d37effe3923c55a024d6acac85a3cb49350974ea35934efa41555ccac";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GripperStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request> CODEC =
            new Codec<Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mycobot_pro450_interfaces/srv/GripperStatus_Request.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mycobot_pro450_interfaces/srv/GripperStatus_Request.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value = readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(Codecs.Writer writer,
                                                                                   Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request readRos2Mycobot_pro450_interfacesSrvGripperStatus_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request value = new Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request();
        value.status = readBool(reader);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/GripperStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_65166c2943fd319555cc1a2dcdaf4475b1e7779960907fe5ab6d1b5dc5536fc2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/GripperStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response> CODEC =
            new Codec<Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mycobot_pro450_interfaces/srv/GripperStatus_Response.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mycobot_pro450_interfaces/srv/GripperStatus_Response.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value = readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(Codecs.Writer writer,
                                                                                    Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response readRos2Mycobot_pro450_interfacesSrvGripperStatus_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response value = new Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvSetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_ec2659577304938ca4f78c1b4add50190766d8d1b551397668ef7ad03e2ccb09";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvSetAngles_Request()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvSetAngles_Request> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvSetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/SetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvSetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/SetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvSetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value = readRos2Mycobot_pro450_interfacesSrvSetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvSetAngles_Request(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        float part4 = value.joint_5;
        writer.f32(part4);
        float part5 = value.joint_6;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mycobot_pro450_interfacesSrvSetAngles_Request readRos2Mycobot_pro450_interfacesSrvSetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvSetAngles_Request value = new Ros2Mycobot_pro450_interfacesSrvSetAngles_Request();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvSetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_28dc59c06324913c1ccbe286ca05b9f47585653a8f086fc5d99a01f6e9ee08b4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetAngles_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_pro450_interfacesSrvSetAngles_Response()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvSetAngles_Response> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvSetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/SetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvSetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/SetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvSetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value = readRos2Mycobot_pro450_interfacesSrvSetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvSetAngles_Response(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_pro450_interfacesSrvSetAngles_Response readRos2Mycobot_pro450_interfacesSrvSetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvSetAngles_Response value = new Ros2Mycobot_pro450_interfacesSrvSetAngles_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvSetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e0c550200472f77aa582a46a5149c05c95648615a306f254599f820992890c81";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mycobot_pro450_interfacesSrvSetCoords_Request()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvSetCoords_Request> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvSetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/SetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvSetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/SetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvSetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value = readRos2Mycobot_pro450_interfacesSrvSetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvSetCoords_Request(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        float part4 = value.ry;
        writer.f32(part4);
        float part5 = value.rz;
        writer.f32(part5);
        byte part6 = value.speed;
        writer.integer(part6, 1, true);
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
    private static Ros2Mycobot_pro450_interfacesSrvSetCoords_Request readRos2Mycobot_pro450_interfacesSrvSetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvSetCoords_Request value = new Ros2Mycobot_pro450_interfacesSrvSetCoords_Request();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mycobot_pro450_interfacesSrvSetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mycobot_pro450_interfaces/srv/SetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9a5ee934233519095e1b28568490f8d958c319e2544976fae0b7de53a54a3f51";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_pro450_interfaces/srv/SetCoords_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mycobot_pro450_interfacesSrvSetCoords_Response()
        {
        }

        public static final Codec<Ros2Mycobot_pro450_interfacesSrvSetCoords_Response> CODEC = new Codec<Ros2Mycobot_pro450_interfacesSrvSetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mycobot_pro450_interfaces/srv/SetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mycobot_pro450_interfacesSrvSetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mycobot_pro450_interfaces/srv/SetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mycobot_pro450_interfacesSrvSetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value = readRos2Mycobot_pro450_interfacesSrvSetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mycobot_pro450_interfacesSrvSetCoords_Response(Codecs.Writer writer, Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mycobot_pro450_interfacesSrvSetCoords_Response readRos2Mycobot_pro450_interfacesSrvSetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mycobot_pro450_interfacesSrvSetCoords_Response value = new Ros2Mycobot_pro450_interfacesSrvSetCoords_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mypalletizer_interfacesMsgMypalAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0a2dc324515448310b0f026fb26c6c5c6da452e5e7067096e315abe3ab86a35d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;

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
        public Ros2Mypalletizer_interfacesMsgMypalAngles()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesMsgMypalAngles> CODEC = new Codec<Ros2Mypalletizer_interfacesMsgMypalAngles>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesMsgMypalAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesMsgMypalAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesMsgMypalAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesMsgMypalAngles value = readRos2Mypalletizer_interfacesMsgMypalAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesMsgMypalAngles(Codecs.Writer writer, Ros2Mypalletizer_interfacesMsgMypalAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
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
    private static Ros2Mypalletizer_interfacesMsgMypalAngles readRos2Mypalletizer_interfacesMsgMypalAngles(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesMsgMypalAngles value = new Ros2Mypalletizer_interfacesMsgMypalAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
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
    public static final class Ros2Mypalletizer_interfacesMsgMypalCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_839491548a07528380403fa31c89889ce82f28b2f82e6fd9474835659714b4f7";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;

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
        public Ros2Mypalletizer_interfacesMsgMypalCoords()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesMsgMypalCoords> CODEC = new Codec<Ros2Mypalletizer_interfacesMsgMypalCoords>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesMsgMypalCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesMsgMypalCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesMsgMypalCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesMsgMypalCoords value = readRos2Mypalletizer_interfacesMsgMypalCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesMsgMypalCoords(Codecs.Writer writer, Ros2Mypalletizer_interfacesMsgMypalCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
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
    private static Ros2Mypalletizer_interfacesMsgMypalCoords readRos2Mypalletizer_interfacesMsgMypalCoords(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesMsgMypalCoords value = new Ros2Mypalletizer_interfacesMsgMypalCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
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
    public static final class Ros2Mypalletizer_interfacesMsgMypalGripperStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalGripperStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_f6e4ad6193272d6401bbbfcc20c0f38b6a147a81d9de1ad956d7c154f29daeb0";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalGripperStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mypalletizer_interfacesMsgMypalGripperStatus()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesMsgMypalGripperStatus> CODEC = new Codec<Ros2Mypalletizer_interfacesMsgMypalGripperStatus>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/msg/MypalGripperStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesMsgMypalGripperStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesMsgMypalGripperStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalGripperStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesMsgMypalGripperStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesMsgMypalGripperStatus value = readRos2Mypalletizer_interfacesMsgMypalGripperStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesMsgMypalGripperStatus(Codecs.Writer writer, Ros2Mypalletizer_interfacesMsgMypalGripperStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mypalletizer_interfacesMsgMypalGripperStatus readRos2Mypalletizer_interfacesMsgMypalGripperStatus(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesMsgMypalGripperStatus value = new Ros2Mypalletizer_interfacesMsgMypalGripperStatus();
        value.status = readBool(reader);
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
    public static final class Ros2Mypalletizer_interfacesMsgMypalPumpStatus
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalPumpStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_008dfd13cad42029330909fb7dc68392ba7f6678ad1baa14a41aad1e759f523c";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalPumpStatus.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalPumpStatus.pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin1 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalPumpStatus.pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin2 = 0;

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
        public Ros2Mypalletizer_interfacesMsgMypalPumpStatus()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesMsgMypalPumpStatus> CODEC = new Codec<Ros2Mypalletizer_interfacesMsgMypalPumpStatus>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalPumpStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesMsgMypalPumpStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesMsgMypalPumpStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalPumpStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesMsgMypalPumpStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesMsgMypalPumpStatus value = readRos2Mypalletizer_interfacesMsgMypalPumpStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesMsgMypalPumpStatus(Codecs.Writer writer, Ros2Mypalletizer_interfacesMsgMypalPumpStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.pin2;
        writer.integer(part2, 1, true);
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
    private static Ros2Mypalletizer_interfacesMsgMypalPumpStatus readRos2Mypalletizer_interfacesMsgMypalPumpStatus(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesMsgMypalPumpStatus value = new Ros2Mypalletizer_interfacesMsgMypalPumpStatus();
        value.status = readBool(reader);
        value.pin1 = (byte)reader.integer(1, true);
        value.pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros2Mypalletizer_interfacesMsgMypalSetAngles
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalSetAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b9fdd6ac956fdeb4934ff41982e616f7c0c45b11169b6d60ba74fbcc61458bb5";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetAngles.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mypalletizer_interfacesMsgMypalSetAngles()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesMsgMypalSetAngles> CODEC = new Codec<Ros2Mypalletizer_interfacesMsgMypalSetAngles>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalSetAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesMsgMypalSetAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesMsgMypalSetAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalSetAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesMsgMypalSetAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesMsgMypalSetAngles value = readRos2Mypalletizer_interfacesMsgMypalSetAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesMsgMypalSetAngles(Codecs.Writer writer, Ros2Mypalletizer_interfacesMsgMypalSetAngles value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        byte part4 = value.speed;
        writer.integer(part4, 1, true);
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
    private static Ros2Mypalletizer_interfacesMsgMypalSetAngles readRos2Mypalletizer_interfacesMsgMypalSetAngles(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesMsgMypalSetAngles value = new Ros2Mypalletizer_interfacesMsgMypalSetAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mypalletizer_interfacesMsgMypalSetCoords
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/msg/MypalSetCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0c1b65f543cdd239a5a56a7839ac607c5310cd4145ef6a6da5639a9af8ba4c79";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mypalletizer_interfaces/msg/MypalSetCoords.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mypalletizer_interfacesMsgMypalSetCoords()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesMsgMypalSetCoords> CODEC = new Codec<Ros2Mypalletizer_interfacesMsgMypalSetCoords>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/msg/MypalSetCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesMsgMypalSetCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesMsgMypalSetCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/msg/MypalSetCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesMsgMypalSetCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesMsgMypalSetCoords value = readRos2Mypalletizer_interfacesMsgMypalSetCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesMsgMypalSetCoords(Codecs.Writer writer, Ros2Mypalletizer_interfacesMsgMypalSetCoords value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        byte part4 = value.speed;
        writer.integer(part4, 1, true);
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
    private static Ros2Mypalletizer_interfacesMsgMypalSetCoords readRos2Mypalletizer_interfacesMsgMypalSetCoords(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesMsgMypalSetCoords value = new Ros2Mypalletizer_interfacesMsgMypalSetCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mypalletizer_interfacesSrvGetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/GetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c8124a1063d47b24dae2e279f51d4e48ebf9936a5e305b81b53387a4be344f78";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mypalletizer_interfacesSrvGetAngles_Request()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvGetAngles_Request> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvGetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvGetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvGetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvGetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvGetAngles_Request value = readRos2Mypalletizer_interfacesSrvGetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvGetAngles_Request(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvGetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mypalletizer_interfacesSrvGetAngles_Request readRos2Mypalletizer_interfacesSrvGetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvGetAngles_Request value = new Ros2Mypalletizer_interfacesSrvGetAngles_Request();
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
    public static final class Ros2Mypalletizer_interfacesSrvGetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/GetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_33812a320c14891a5bc76a86ccbb0a5507cfbcc3706e01bc304263edabc6f75d";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetAngles_Response.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;

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
        public Ros2Mypalletizer_interfacesSrvGetAngles_Response()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvGetAngles_Response> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvGetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/srv/GetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvGetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvGetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvGetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvGetAngles_Response value = readRos2Mypalletizer_interfacesSrvGetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvGetAngles_Response(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvGetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
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
    private static Ros2Mypalletizer_interfacesSrvGetAngles_Response readRos2Mypalletizer_interfacesSrvGetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvGetAngles_Response value = new Ros2Mypalletizer_interfacesSrvGetAngles_Response();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
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
    public static final class Ros2Mypalletizer_interfacesSrvGetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/GetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b3db3a0e7d2aed097027798a897caf833f9cc1b8bb027f98c0db016968fa4440";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros2Mypalletizer_interfacesSrvGetCoords_Request()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvGetCoords_Request> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvGetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/GetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvGetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvGetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvGetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvGetCoords_Request value = readRos2Mypalletizer_interfacesSrvGetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvGetCoords_Request(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvGetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros2Mypalletizer_interfacesSrvGetCoords_Request readRos2Mypalletizer_interfacesSrvGetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvGetCoords_Request value = new Ros2Mypalletizer_interfacesSrvGetCoords_Request();
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
    public static final class Ros2Mypalletizer_interfacesSrvGetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/GetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_9d237cfa03c4b3c17d99fe0a9c08d1cafa3e8d0e404191e2169eea8683c54c84";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetCoords_Response.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetCoords_Response.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetCoords_Response.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/GetCoords_Response.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;

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
        public Ros2Mypalletizer_interfacesSrvGetCoords_Response()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvGetCoords_Response> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvGetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/srv/GetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvGetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvGetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/GetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvGetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvGetCoords_Response value = readRos2Mypalletizer_interfacesSrvGetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvGetCoords_Response(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvGetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
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
    private static Ros2Mypalletizer_interfacesSrvGetCoords_Response readRos2Mypalletizer_interfacesSrvGetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvGetCoords_Response value = new Ros2Mypalletizer_interfacesSrvGetCoords_Response();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
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
    public static final class Ros2Mypalletizer_interfacesSrvGripperStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/GripperStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b6d4c5991599ec4ac56e5f65dacd5a1ab89f073e9f07dc2b03692f4289fdcc9d";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_interfaces/srv/GripperStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;

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
        public Ros2Mypalletizer_interfacesSrvGripperStatus_Request()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvGripperStatus_Request> CODEC =
            new Codec<Ros2Mypalletizer_interfacesSrvGripperStatus_Request>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mypalletizer_interfaces/srv/GripperStatus_Request.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mypalletizer_interfacesSrvGripperStatus_Request value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mypalletizer_interfacesSrvGripperStatus_Request(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mypalletizer_interfaces/srv/GripperStatus_Request.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mypalletizer_interfacesSrvGripperStatus_Request decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mypalletizer_interfacesSrvGripperStatus_Request value = readRos2Mypalletizer_interfacesSrvGripperStatus_Request(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mypalletizer_interfacesSrvGripperStatus_Request(Codecs.Writer writer,
                                                                                 Ros2Mypalletizer_interfacesSrvGripperStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mypalletizer_interfacesSrvGripperStatus_Request readRos2Mypalletizer_interfacesSrvGripperStatus_Request(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvGripperStatus_Request value = new Ros2Mypalletizer_interfacesSrvGripperStatus_Request();
        value.status = readBool(reader);
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
    public static final class Ros2Mypalletizer_interfacesSrvGripperStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/GripperStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_bd0c427dc564ff7201019c6d33c7d0c743a65d263c67eb420b5e653d48e4daf4";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_interfaces/srv/GripperStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mypalletizer_interfacesSrvGripperStatus_Response()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvGripperStatus_Response> CODEC =
            new Codec<Ros2Mypalletizer_interfacesSrvGripperStatus_Response>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mypalletizer_interfaces/srv/GripperStatus_Response.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros2Mypalletizer_interfacesSrvGripperStatus_Response value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos2Mypalletizer_interfacesSrvGripperStatus_Response(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mypalletizer_interfaces/srv/GripperStatus_Response.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros2Mypalletizer_interfacesSrvGripperStatus_Response decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros2Mypalletizer_interfacesSrvGripperStatus_Response value = readRos2Mypalletizer_interfacesSrvGripperStatus_Response(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos2Mypalletizer_interfacesSrvGripperStatus_Response(Codecs.Writer writer,
                                                                                  Ros2Mypalletizer_interfacesSrvGripperStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mypalletizer_interfacesSrvGripperStatus_Response readRos2Mypalletizer_interfacesSrvGripperStatus_Response(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvGripperStatus_Response value = new Ros2Mypalletizer_interfacesSrvGripperStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mypalletizer_interfacesSrvPumpStatus_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/PumpStatus_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6b14af554cb5c65c9411b2c6a76d49cb7cbe06dedcd26d47804d00d12ccf2e2f";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mypalletizer_interfaces/srv/PumpStatus_Request.status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean status = false;
        /**
         * @brief Original mypalletizer_interfaces/srv/PumpStatus_Request.pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin1 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/PumpStatus_Request.pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte pin2 = 0;

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
        public Ros2Mypalletizer_interfacesSrvPumpStatus_Request()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvPumpStatus_Request> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvPumpStatus_Request>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/srv/PumpStatus_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvPumpStatus_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvPumpStatus_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/PumpStatus_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvPumpStatus_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvPumpStatus_Request value = readRos2Mypalletizer_interfacesSrvPumpStatus_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvPumpStatus_Request(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvPumpStatus_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.pin2;
        writer.integer(part2, 1, true);
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
    private static Ros2Mypalletizer_interfacesSrvPumpStatus_Request readRos2Mypalletizer_interfacesSrvPumpStatus_Request(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvPumpStatus_Request value = new Ros2Mypalletizer_interfacesSrvPumpStatus_Request();
        value.status = readBool(reader);
        value.pin1 = (byte)reader.integer(1, true);
        value.pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros2Mypalletizer_interfacesSrvPumpStatus_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/PumpStatus_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_187a703ce648bc82a276961d82ed8abd5365d8db7af3bb211e590620e1bb2b45";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_interfaces/srv/PumpStatus_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mypalletizer_interfacesSrvPumpStatus_Response()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvPumpStatus_Response> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvPumpStatus_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/srv/PumpStatus_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvPumpStatus_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvPumpStatus_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mypalletizer_interfaces/srv/PumpStatus_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvPumpStatus_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvPumpStatus_Response value = readRos2Mypalletizer_interfacesSrvPumpStatus_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvPumpStatus_Response(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvPumpStatus_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mypalletizer_interfacesSrvPumpStatus_Response readRos2Mypalletizer_interfacesSrvPumpStatus_Response(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvPumpStatus_Response value = new Ros2Mypalletizer_interfacesSrvPumpStatus_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mypalletizer_interfacesSrvSetAngles_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/SetAngles_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3997bb19c183b59fbca1675695ea5ee548a247a34f9682dae3fb68fdf1a155ec";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetAngles_Request.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetAngles_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mypalletizer_interfacesSrvSetAngles_Request()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvSetAngles_Request> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvSetAngles_Request>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/SetAngles_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvSetAngles_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvSetAngles_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetAngles_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvSetAngles_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvSetAngles_Request value = readRos2Mypalletizer_interfacesSrvSetAngles_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvSetAngles_Request(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvSetAngles_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.joint_1;
        writer.f32(part0);
        float part1 = value.joint_2;
        writer.f32(part1);
        float part2 = value.joint_3;
        writer.f32(part2);
        float part3 = value.joint_4;
        writer.f32(part3);
        byte part4 = value.speed;
        writer.integer(part4, 1, true);
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
    private static Ros2Mypalletizer_interfacesSrvSetAngles_Request readRos2Mypalletizer_interfacesSrvSetAngles_Request(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvSetAngles_Request value = new Ros2Mypalletizer_interfacesSrvSetAngles_Request();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mypalletizer_interfacesSrvSetAngles_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/SetAngles_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_a7952f549b35aa140adac4f18bbe8538c0f6230aa884459091cd74720ab757c9";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetAngles_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mypalletizer_interfacesSrvSetAngles_Response()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvSetAngles_Response> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvSetAngles_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/srv/SetAngles_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvSetAngles_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvSetAngles_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetAngles_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvSetAngles_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvSetAngles_Response value = readRos2Mypalletizer_interfacesSrvSetAngles_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvSetAngles_Response(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvSetAngles_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mypalletizer_interfacesSrvSetAngles_Response readRos2Mypalletizer_interfacesSrvSetAngles_Response(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvSetAngles_Response value = new Ros2Mypalletizer_interfacesSrvSetAngles_Response();
        value.flag = readBool(reader);
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
    public static final class Ros2Mypalletizer_interfacesSrvSetCoords_Request
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/SetCoords_Request";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c72f4f1cb71f1ad1076bcc89499abbcfc5eab173fadd19c9a266baf1c32d1541";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetCoords_Request.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetCoords_Request.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetCoords_Request.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetCoords_Request.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetCoords_Request.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros2Mypalletizer_interfacesSrvSetCoords_Request()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvSetCoords_Request> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvSetCoords_Request>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_interfaces/srv/SetCoords_Request.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvSetCoords_Request value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvSetCoords_Request(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetCoords_Request.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvSetCoords_Request decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvSetCoords_Request value = readRos2Mypalletizer_interfacesSrvSetCoords_Request(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvSetCoords_Request(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvSetCoords_Request value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        float part0 = value.x;
        writer.f32(part0);
        float part1 = value.y;
        writer.f32(part1);
        float part2 = value.z;
        writer.f32(part2);
        float part3 = value.rx;
        writer.f32(part3);
        byte part4 = value.speed;
        writer.integer(part4, 1, true);
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
    private static Ros2Mypalletizer_interfacesSrvSetCoords_Request readRos2Mypalletizer_interfacesSrvSetCoords_Request(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvSetCoords_Request value = new Ros2Mypalletizer_interfacesSrvSetCoords_Request();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros2Mypalletizer_interfacesSrvSetCoords_Response
    {
        public static final int ROS_VERSION = 2;
        public static final String NATIVE_TYPE = "mypalletizer_interfaces/srv/SetCoords_Response";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0cedaf9087ba0ae3726b9dd0d304665a226fc6df2ee068f6ac2b1c12ce88cb5b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_interfaces/srv/SetCoords_Response.flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean flag = false;

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
        public Ros2Mypalletizer_interfacesSrvSetCoords_Response()
        {
        }

        public static final Codec<Ros2Mypalletizer_interfacesSrvSetCoords_Response> CODEC = new Codec<Ros2Mypalletizer_interfacesSrvSetCoords_Response>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_interfaces/srv/SetCoords_Response.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros2Mypalletizer_interfacesSrvSetCoords_Response value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos2Mypalletizer_interfacesSrvSetCoords_Response(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_interfaces/srv/SetCoords_Response.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros2Mypalletizer_interfacesSrvSetCoords_Response decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros2Mypalletizer_interfacesSrvSetCoords_Response value = readRos2Mypalletizer_interfacesSrvSetCoords_Response(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos2Mypalletizer_interfacesSrvSetCoords_Response(Codecs.Writer writer, Ros2Mypalletizer_interfacesSrvSetCoords_Response value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros2Mypalletizer_interfacesSrvSetCoords_Response readRos2Mypalletizer_interfacesSrvSetCoords_Response(Codecs.Reader reader)
    {
        Ros2Mypalletizer_interfacesSrvSetCoords_Response value = new Ros2Mypalletizer_interfacesSrvSetCoords_Response();
        value.flag = readBool(reader);
        return value;
    }
}
