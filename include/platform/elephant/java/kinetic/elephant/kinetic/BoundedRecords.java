/**
 * @file BoundedRecords.java
 * @brief Preserve the complete original elephant/kinetic canonical value domain.
 * @details The selected domain contains 36 complete record/components and 116 original fields. Declared
 * scalar widths, order, defaults, array/sequence distinctions and finite bounds remain explicit.
 * Validate the whole value before accepting bytes; partial/trailing data is a refusal. Pure codecs
 * create no ROS owner, permission, callback, unit conversion or native type binding. Module availability
 * does not qualify a frontend, target ABI or native ROS transport.
 * @see The platform's localized language guide and complete API-CATALOG.md.
 */
package elephant.kinetic;

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
     * @brief Preserve all original mycobot_communication/MycobotAngles fields.
     * @details 6 ordered fields, canonical extent 24..24 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Mycobot_communicationMycobotAngles
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/MycobotAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_4cbda93a13d78e9c592327caa737dfecf33adf6db898015afd56ecf7732f9aa6";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_communication/MycobotAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_communication/MycobotAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_communication/MycobotAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_communication/MycobotAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_communication/MycobotAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_communication/MycobotAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros1Mycobot_communicationMycobotAngles()
        {
        }

        public static final Codec<Ros1Mycobot_communicationMycobotAngles> CODEC = new Codec<Ros1Mycobot_communicationMycobotAngles>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/MycobotAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationMycobotAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationMycobotAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/MycobotAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationMycobotAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationMycobotAngles value = readRos1Mycobot_communicationMycobotAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationMycobotAngles(Codecs.Writer writer, Ros1Mycobot_communicationMycobotAngles value)
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
    private static Ros1Mycobot_communicationMycobotAngles readRos1Mycobot_communicationMycobotAngles(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationMycobotAngles value = new Ros1Mycobot_communicationMycobotAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros1Mycobot_communicationMycobotCoords
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/MycobotCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1da0d6342a1f4079244a65ad413d4559047d33b049ce9da04f8ab0bd226410a2";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_communication/MycobotCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_communication/MycobotCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_communication/MycobotCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_communication/MycobotCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_communication/MycobotCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_communication/MycobotCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros1Mycobot_communicationMycobotCoords()
        {
        }

        public static final Codec<Ros1Mycobot_communicationMycobotCoords> CODEC = new Codec<Ros1Mycobot_communicationMycobotCoords>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/MycobotCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationMycobotCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationMycobotCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/MycobotCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationMycobotCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationMycobotCoords value = readRos1Mycobot_communicationMycobotCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationMycobotCoords(Codecs.Writer writer, Ros1Mycobot_communicationMycobotCoords value)
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
    private static Ros1Mycobot_communicationMycobotCoords readRos1Mycobot_communicationMycobotCoords(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationMycobotCoords value = new Ros1Mycobot_communicationMycobotCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros1Mycobot_communicationMycobotGripperStatus
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/MycobotGripperStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_65edcc278c4e21355c62408ff310598b3dbdf03ed426e3da0f2ee0bc6910e649";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_communication/MycobotGripperStatus.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;

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
        public Ros1Mycobot_communicationMycobotGripperStatus()
        {
        }

        public static final Codec<Ros1Mycobot_communicationMycobotGripperStatus> CODEC = new Codec<Ros1Mycobot_communicationMycobotGripperStatus>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/MycobotGripperStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationMycobotGripperStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationMycobotGripperStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/MycobotGripperStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationMycobotGripperStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationMycobotGripperStatus value = readRos1Mycobot_communicationMycobotGripperStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationMycobotGripperStatus(Codecs.Writer writer, Ros1Mycobot_communicationMycobotGripperStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mycobot_communicationMycobotGripperStatus readRos1Mycobot_communicationMycobotGripperStatus(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationMycobotGripperStatus value = new Ros1Mycobot_communicationMycobotGripperStatus();
        value.Status = readBool(reader);
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
    public static final class Ros1Mycobot_communicationMycobotPumpStatus
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/MycobotPumpStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0c0cb3c0fe97b9f9c65769a09f505ff6c27a60723598d656cd5f16255f36bfbd";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mycobot_communication/MycobotPumpStatus.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;
        /**
         * @brief Original mycobot_communication/MycobotPumpStatus.Pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin1 = 0;
        /**
         * @brief Original mycobot_communication/MycobotPumpStatus.Pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin2 = 0;

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
        public Ros1Mycobot_communicationMycobotPumpStatus()
        {
        }

        public static final Codec<Ros1Mycobot_communicationMycobotPumpStatus> CODEC = new Codec<Ros1Mycobot_communicationMycobotPumpStatus>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/MycobotPumpStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationMycobotPumpStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationMycobotPumpStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/MycobotPumpStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationMycobotPumpStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationMycobotPumpStatus value = readRos1Mycobot_communicationMycobotPumpStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationMycobotPumpStatus(Codecs.Writer writer, Ros1Mycobot_communicationMycobotPumpStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.Pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.Pin2;
        writer.integer(part2, 1, true);
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
    private static Ros1Mycobot_communicationMycobotPumpStatus readRos1Mycobot_communicationMycobotPumpStatus(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationMycobotPumpStatus value = new Ros1Mycobot_communicationMycobotPumpStatus();
        value.Status = readBool(reader);
        value.Pin1 = (byte)reader.integer(1, true);
        value.Pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros1Mycobot_communicationMycobotSetAngles
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/MycobotSetAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_0844a6cf5033b27ad5062741c939a7cfff63edeba34f7e56c8178e1fab85b334";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetAngles.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros1Mycobot_communicationMycobotSetAngles()
        {
        }

        public static final Codec<Ros1Mycobot_communicationMycobotSetAngles> CODEC = new Codec<Ros1Mycobot_communicationMycobotSetAngles>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/MycobotSetAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationMycobotSetAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationMycobotSetAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/MycobotSetAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationMycobotSetAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationMycobotSetAngles value = readRos1Mycobot_communicationMycobotSetAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationMycobotSetAngles(Codecs.Writer writer, Ros1Mycobot_communicationMycobotSetAngles value)
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
    private static Ros1Mycobot_communicationMycobotSetAngles readRos1Mycobot_communicationMycobotSetAngles(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationMycobotSetAngles value = new Ros1Mycobot_communicationMycobotSetAngles();
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
     * @brief Preserve all original mycobot_communication/MycobotSetCoords fields.
     * @details 8 ordered fields, canonical extent 26..26 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Mycobot_communicationMycobotSetCoords
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/MycobotSetCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_39376ad94c0c9b213703a373b6a3b12fd0dad0ec20ff312143d30099842747a9";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mycobot_communication/MycobotSetCoords.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros1Mycobot_communicationMycobotSetCoords()
        {
        }

        public static final Codec<Ros1Mycobot_communicationMycobotSetCoords> CODEC = new Codec<Ros1Mycobot_communicationMycobotSetCoords>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/MycobotSetCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationMycobotSetCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationMycobotSetCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/MycobotSetCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationMycobotSetCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationMycobotSetCoords value = readRos1Mycobot_communicationMycobotSetCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationMycobotSetCoords(Codecs.Writer writer, Ros1Mycobot_communicationMycobotSetCoords value)
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
    private static Ros1Mycobot_communicationMycobotSetCoords readRos1Mycobot_communicationMycobotSetCoords(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationMycobotSetCoords value = new Ros1Mycobot_communicationMycobotSetCoords();
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
     * @brief Preserve all original mycobot_communication/GetAnglesRequest fields.
     * @details 0 ordered fields, canonical extent 0..0 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Mycobot_communicationGetAnglesRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/GetAnglesRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8915949f81b788e5797f3bc4935e33e9e9eae82c5db3a1211129e7ef03cd2c54";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Mycobot_communicationGetAnglesRequest()
        {
        }

        public static final Codec<Ros1Mycobot_communicationGetAnglesRequest> CODEC = new Codec<Ros1Mycobot_communicationGetAnglesRequest>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/GetAnglesRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationGetAnglesRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationGetAnglesRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/GetAnglesRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationGetAnglesRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationGetAnglesRequest value = readRos1Mycobot_communicationGetAnglesRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationGetAnglesRequest(Codecs.Writer writer, Ros1Mycobot_communicationGetAnglesRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Mycobot_communicationGetAnglesRequest readRos1Mycobot_communicationGetAnglesRequest(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationGetAnglesRequest value = new Ros1Mycobot_communicationGetAnglesRequest();
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
    public static final class Ros1Mycobot_communicationGetAnglesResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/GetAnglesResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_482e6b845d6913ab7ea12580a395caf0a9815b56f985eb3a0553263fb7fd4ff3";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_communication/GetAnglesResponse.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_communication/GetAnglesResponse.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_communication/GetAnglesResponse.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_communication/GetAnglesResponse.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_communication/GetAnglesResponse.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_communication/GetAnglesResponse.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;

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
        public Ros1Mycobot_communicationGetAnglesResponse()
        {
        }

        public static final Codec<Ros1Mycobot_communicationGetAnglesResponse> CODEC = new Codec<Ros1Mycobot_communicationGetAnglesResponse>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/GetAnglesResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationGetAnglesResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationGetAnglesResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/GetAnglesResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationGetAnglesResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationGetAnglesResponse value = readRos1Mycobot_communicationGetAnglesResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationGetAnglesResponse(Codecs.Writer writer, Ros1Mycobot_communicationGetAnglesResponse value)
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
    private static Ros1Mycobot_communicationGetAnglesResponse readRos1Mycobot_communicationGetAnglesResponse(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationGetAnglesResponse value = new Ros1Mycobot_communicationGetAnglesResponse();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.joint_5 = reader.f32();
        value.joint_6 = reader.f32();
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
    public static final class Ros1Mycobot_communicationGetCoordsRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/GetCoordsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_54acc83a24f2f62d8ba9c14b1cea1703cb6097360720550cc438671282d45876";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Mycobot_communicationGetCoordsRequest()
        {
        }

        public static final Codec<Ros1Mycobot_communicationGetCoordsRequest> CODEC = new Codec<Ros1Mycobot_communicationGetCoordsRequest>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/GetCoordsRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationGetCoordsRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationGetCoordsRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/GetCoordsRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationGetCoordsRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationGetCoordsRequest value = readRos1Mycobot_communicationGetCoordsRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationGetCoordsRequest(Codecs.Writer writer, Ros1Mycobot_communicationGetCoordsRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Mycobot_communicationGetCoordsRequest readRos1Mycobot_communicationGetCoordsRequest(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationGetCoordsRequest value = new Ros1Mycobot_communicationGetCoordsRequest();
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
    public static final class Ros1Mycobot_communicationGetCoordsResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/GetCoordsResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_275b9bec563bb8578112b3680400523000a08a8e194044164e5334336b73d107";
        public static final int MIN_WIRE_BYTES = 24, MAX_WIRE_BYTES = 24;
        /**
         * @brief Original mycobot_communication/GetCoordsResponse.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_communication/GetCoordsResponse.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_communication/GetCoordsResponse.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_communication/GetCoordsResponse.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_communication/GetCoordsResponse.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_communication/GetCoordsResponse.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;

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
        public Ros1Mycobot_communicationGetCoordsResponse()
        {
        }

        public static final Codec<Ros1Mycobot_communicationGetCoordsResponse> CODEC = new Codec<Ros1Mycobot_communicationGetCoordsResponse>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/GetCoordsResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationGetCoordsResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationGetCoordsResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/GetCoordsResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationGetCoordsResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationGetCoordsResponse value = readRos1Mycobot_communicationGetCoordsResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationGetCoordsResponse(Codecs.Writer writer, Ros1Mycobot_communicationGetCoordsResponse value)
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
    private static Ros1Mycobot_communicationGetCoordsResponse readRos1Mycobot_communicationGetCoordsResponse(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationGetCoordsResponse value = new Ros1Mycobot_communicationGetCoordsResponse();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.ry = reader.f32();
        value.rz = reader.f32();
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
    public static final class Ros1Mycobot_communicationGripperStatusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/GripperStatusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d2c94d1906d311981c72642d82bbea634cfed4eac8c0aef41219bf4f382d4585";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_communication/GripperStatusRequest.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;

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
        public Ros1Mycobot_communicationGripperStatusRequest()
        {
        }

        public static final Codec<Ros1Mycobot_communicationGripperStatusRequest> CODEC = new Codec<Ros1Mycobot_communicationGripperStatusRequest>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/GripperStatusRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationGripperStatusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationGripperStatusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/GripperStatusRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationGripperStatusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationGripperStatusRequest value = readRos1Mycobot_communicationGripperStatusRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationGripperStatusRequest(Codecs.Writer writer, Ros1Mycobot_communicationGripperStatusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mycobot_communicationGripperStatusRequest readRos1Mycobot_communicationGripperStatusRequest(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationGripperStatusRequest value = new Ros1Mycobot_communicationGripperStatusRequest();
        value.Status = readBool(reader);
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
    public static final class Ros1Mycobot_communicationGripperStatusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/GripperStatusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_3a75c0d75882836971ed4c51e50c7b88778fcfeadf9b30df211d5055eb767664";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_communication/GripperStatusResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mycobot_communicationGripperStatusResponse()
        {
        }

        public static final Codec<Ros1Mycobot_communicationGripperStatusResponse> CODEC = new Codec<Ros1Mycobot_communicationGripperStatusResponse>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/GripperStatusResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationGripperStatusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationGripperStatusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/GripperStatusResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationGripperStatusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationGripperStatusResponse value = readRos1Mycobot_communicationGripperStatusResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationGripperStatusResponse(Codecs.Writer writer, Ros1Mycobot_communicationGripperStatusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mycobot_communicationGripperStatusResponse readRos1Mycobot_communicationGripperStatusResponse(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationGripperStatusResponse value = new Ros1Mycobot_communicationGripperStatusResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mycobot_communicationPumpStatusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/PumpStatusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_561f4bb1f74832111672bbfed1ef1266a91914fb1034437199f730f55324c65c";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mycobot_communication/PumpStatusRequest.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;
        /**
         * @brief Original mycobot_communication/PumpStatusRequest.Pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin1 = 0;
        /**
         * @brief Original mycobot_communication/PumpStatusRequest.Pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin2 = 0;

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
        public Ros1Mycobot_communicationPumpStatusRequest()
        {
        }

        public static final Codec<Ros1Mycobot_communicationPumpStatusRequest> CODEC = new Codec<Ros1Mycobot_communicationPumpStatusRequest>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/PumpStatusRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationPumpStatusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationPumpStatusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/PumpStatusRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationPumpStatusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationPumpStatusRequest value = readRos1Mycobot_communicationPumpStatusRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationPumpStatusRequest(Codecs.Writer writer, Ros1Mycobot_communicationPumpStatusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.Pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.Pin2;
        writer.integer(part2, 1, true);
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
    private static Ros1Mycobot_communicationPumpStatusRequest readRos1Mycobot_communicationPumpStatusRequest(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationPumpStatusRequest value = new Ros1Mycobot_communicationPumpStatusRequest();
        value.Status = readBool(reader);
        value.Pin1 = (byte)reader.integer(1, true);
        value.Pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros1Mycobot_communicationPumpStatusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/PumpStatusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_b5a1672fe12d2e2131034bb6da8751130b64ef6d48ea48ac0a046c506da452dd";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_communication/PumpStatusResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mycobot_communicationPumpStatusResponse()
        {
        }

        public static final Codec<Ros1Mycobot_communicationPumpStatusResponse> CODEC = new Codec<Ros1Mycobot_communicationPumpStatusResponse>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/PumpStatusResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationPumpStatusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationPumpStatusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/PumpStatusResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationPumpStatusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationPumpStatusResponse value = readRos1Mycobot_communicationPumpStatusResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationPumpStatusResponse(Codecs.Writer writer, Ros1Mycobot_communicationPumpStatusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mycobot_communicationPumpStatusResponse readRos1Mycobot_communicationPumpStatusResponse(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationPumpStatusResponse value = new Ros1Mycobot_communicationPumpStatusResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mycobot_communicationSetAnglesRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/SetAnglesRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_10bcf04e47b743a985ffefc61dff4522f3718d2ac7170960c8ae6857aaa11cbd";
        public static final int MIN_WIRE_BYTES = 25, MAX_WIRE_BYTES = 25;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.joint_5 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_5 = 0;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.joint_6 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_6 = 0;
        /**
         * @brief Original mycobot_communication/SetAnglesRequest.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros1Mycobot_communicationSetAnglesRequest()
        {
        }

        public static final Codec<Ros1Mycobot_communicationSetAnglesRequest> CODEC = new Codec<Ros1Mycobot_communicationSetAnglesRequest>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/SetAnglesRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationSetAnglesRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationSetAnglesRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/SetAnglesRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationSetAnglesRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationSetAnglesRequest value = readRos1Mycobot_communicationSetAnglesRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationSetAnglesRequest(Codecs.Writer writer, Ros1Mycobot_communicationSetAnglesRequest value)
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
    private static Ros1Mycobot_communicationSetAnglesRequest readRos1Mycobot_communicationSetAnglesRequest(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationSetAnglesRequest value = new Ros1Mycobot_communicationSetAnglesRequest();
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
     * @brief Preserve all original mycobot_communication/SetAnglesResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Mycobot_communicationSetAnglesResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/SetAnglesResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d407051eb285975d89ad71f39aede021fb564aecca0e0744126c9a599fe396b2";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_communication/SetAnglesResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mycobot_communicationSetAnglesResponse()
        {
        }

        public static final Codec<Ros1Mycobot_communicationSetAnglesResponse> CODEC = new Codec<Ros1Mycobot_communicationSetAnglesResponse>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/SetAnglesResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationSetAnglesResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationSetAnglesResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/SetAnglesResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationSetAnglesResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationSetAnglesResponse value = readRos1Mycobot_communicationSetAnglesResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationSetAnglesResponse(Codecs.Writer writer, Ros1Mycobot_communicationSetAnglesResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mycobot_communicationSetAnglesResponse readRos1Mycobot_communicationSetAnglesResponse(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationSetAnglesResponse value = new Ros1Mycobot_communicationSetAnglesResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mycobot_communicationSetCoordsRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/SetCoordsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7a59a4e31eca60caea9f82142225c890a136c60a9e4c821e9463e89139945f7a";
        public static final int MIN_WIRE_BYTES = 26, MAX_WIRE_BYTES = 26;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.ry field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float ry = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.rz field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rz = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mycobot_communication/SetCoordsRequest.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros1Mycobot_communicationSetCoordsRequest()
        {
        }

        public static final Codec<Ros1Mycobot_communicationSetCoordsRequest> CODEC = new Codec<Ros1Mycobot_communicationSetCoordsRequest>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/SetCoordsRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationSetCoordsRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationSetCoordsRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/SetCoordsRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationSetCoordsRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationSetCoordsRequest value = readRos1Mycobot_communicationSetCoordsRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationSetCoordsRequest(Codecs.Writer writer, Ros1Mycobot_communicationSetCoordsRequest value)
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
    private static Ros1Mycobot_communicationSetCoordsRequest readRos1Mycobot_communicationSetCoordsRequest(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationSetCoordsRequest value = new Ros1Mycobot_communicationSetCoordsRequest();
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
     * @brief Preserve all original mycobot_communication/SetCoordsResponse fields.
     * @details 1 ordered fields, canonical extent 1..1 bytes. Declared defaults and finite quotas remain
     * explicit; native registration and transport require independent proof.
     * @par Ownership
     * Local records own their nested storage; supplied mutable objects retain the source language's ordinary
     * reference rules.
     */
    public static final class Ros1Mycobot_communicationSetCoordsResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mycobot_communication/SetCoordsResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1a936a95cb1bfd0a9158342618c40c587af58388abf3b679eb4bad2518aec6af";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mycobot_communication/SetCoordsResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mycobot_communicationSetCoordsResponse()
        {
        }

        public static final Codec<Ros1Mycobot_communicationSetCoordsResponse> CODEC = new Codec<Ros1Mycobot_communicationSetCoordsResponse>() {
            /**
             * @brief Encode the complete ordered value for mycobot_communication/SetCoordsResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mycobot_communicationSetCoordsResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mycobot_communicationSetCoordsResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mycobot_communication/SetCoordsResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mycobot_communicationSetCoordsResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mycobot_communicationSetCoordsResponse value = readRos1Mycobot_communicationSetCoordsResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mycobot_communicationSetCoordsResponse(Codecs.Writer writer, Ros1Mycobot_communicationSetCoordsResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mycobot_communicationSetCoordsResponse readRos1Mycobot_communicationSetCoordsResponse(Codecs.Reader reader)
    {
        Ros1Mycobot_communicationSetCoordsResponse value = new Ros1Mycobot_communicationSetCoordsResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mypalletizer_communicationMypalAngles
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/MypalAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1d45a33e05e948c1b58988c84afe359138c896119f82da0d737377f0272892d9";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_communication/MypalAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;

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
        public Ros1Mypalletizer_communicationMypalAngles()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationMypalAngles> CODEC = new Codec<Ros1Mypalletizer_communicationMypalAngles>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/MypalAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationMypalAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationMypalAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/MypalAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationMypalAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationMypalAngles value = readRos1Mypalletizer_communicationMypalAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationMypalAngles(Codecs.Writer writer, Ros1Mypalletizer_communicationMypalAngles value)
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
    private static Ros1Mypalletizer_communicationMypalAngles readRos1Mypalletizer_communicationMypalAngles(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationMypalAngles value = new Ros1Mypalletizer_communicationMypalAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
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
    public static final class Ros1Mypalletizer_communicationMypalCoords
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/MypalCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c542d1a1a71224901044bc38ca2934021d811417c7c6937ca194995f67e59b80";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_communication/MypalCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_communication/MypalCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_communication/MypalCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_communication/MypalCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;

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
        public Ros1Mypalletizer_communicationMypalCoords()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationMypalCoords> CODEC = new Codec<Ros1Mypalletizer_communicationMypalCoords>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/MypalCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationMypalCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationMypalCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/MypalCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationMypalCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationMypalCoords value = readRos1Mypalletizer_communicationMypalCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationMypalCoords(Codecs.Writer writer, Ros1Mypalletizer_communicationMypalCoords value)
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
    private static Ros1Mypalletizer_communicationMypalCoords readRos1Mypalletizer_communicationMypalCoords(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationMypalCoords value = new Ros1Mypalletizer_communicationMypalCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
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
    public static final class Ros1Mypalletizer_communicationMypalGripperStatus
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/MypalGripperStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_e37f608d4499ab2ed49618fc244831d274fadb23bd408d42619e3f8409ad2ee6";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_communication/MypalGripperStatus.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;

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
        public Ros1Mypalletizer_communicationMypalGripperStatus()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationMypalGripperStatus> CODEC = new Codec<Ros1Mypalletizer_communicationMypalGripperStatus>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/MypalGripperStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationMypalGripperStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationMypalGripperStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/MypalGripperStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationMypalGripperStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationMypalGripperStatus value = readRos1Mypalletizer_communicationMypalGripperStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationMypalGripperStatus(Codecs.Writer writer, Ros1Mypalletizer_communicationMypalGripperStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mypalletizer_communicationMypalGripperStatus readRos1Mypalletizer_communicationMypalGripperStatus(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationMypalGripperStatus value = new Ros1Mypalletizer_communicationMypalGripperStatus();
        value.Status = readBool(reader);
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
    public static final class Ros1Mypalletizer_communicationMypalPumpStatus
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/MypalPumpStatus";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cdf79e610b5d49b7f73857e02c64688a71517f2fe8e3a96739b16a53ad4d0ebc";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mypalletizer_communication/MypalPumpStatus.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;
        /**
         * @brief Original mypalletizer_communication/MypalPumpStatus.Pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin1 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalPumpStatus.Pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin2 = 0;

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
        public Ros1Mypalletizer_communicationMypalPumpStatus()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationMypalPumpStatus> CODEC = new Codec<Ros1Mypalletizer_communicationMypalPumpStatus>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/MypalPumpStatus.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationMypalPumpStatus value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationMypalPumpStatus(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/MypalPumpStatus.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationMypalPumpStatus decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationMypalPumpStatus value = readRos1Mypalletizer_communicationMypalPumpStatus(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationMypalPumpStatus(Codecs.Writer writer, Ros1Mypalletizer_communicationMypalPumpStatus value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.Pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.Pin2;
        writer.integer(part2, 1, true);
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
    private static Ros1Mypalletizer_communicationMypalPumpStatus readRos1Mypalletizer_communicationMypalPumpStatus(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationMypalPumpStatus value = new Ros1Mypalletizer_communicationMypalPumpStatus();
        value.Status = readBool(reader);
        value.Pin1 = (byte)reader.integer(1, true);
        value.Pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros1Mypalletizer_communicationMypalSetAngles
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/MypalSetAngles";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_8d11ba2c705bd577a329a01d039b831162742efe790c93b6c2c2631699d04f98";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original mypalletizer_communication/MypalSetAngles.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetAngles.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetAngles.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetAngles.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetAngles.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros1Mypalletizer_communicationMypalSetAngles()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationMypalSetAngles> CODEC = new Codec<Ros1Mypalletizer_communicationMypalSetAngles>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/MypalSetAngles.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationMypalSetAngles value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationMypalSetAngles(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/MypalSetAngles.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationMypalSetAngles decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationMypalSetAngles value = readRos1Mypalletizer_communicationMypalSetAngles(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationMypalSetAngles(Codecs.Writer writer, Ros1Mypalletizer_communicationMypalSetAngles value)
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
    private static Ros1Mypalletizer_communicationMypalSetAngles readRos1Mypalletizer_communicationMypalSetAngles(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationMypalSetAngles value = new Ros1Mypalletizer_communicationMypalSetAngles();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros1Mypalletizer_communicationMypalSetCoords
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/MypalSetCoords";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_51a2d485c8d2252f184eb27724e88c1ae06002d54454bd8ebf31962a79f7c448";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;
        /**
         * @brief Original mypalletizer_communication/MypalSetCoords.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetCoords.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetCoords.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetCoords.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetCoords.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mypalletizer_communication/MypalSetCoords.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros1Mypalletizer_communicationMypalSetCoords()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationMypalSetCoords> CODEC = new Codec<Ros1Mypalletizer_communicationMypalSetCoords>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/MypalSetCoords.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationMypalSetCoords value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationMypalSetCoords(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/MypalSetCoords.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationMypalSetCoords decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationMypalSetCoords value = readRos1Mypalletizer_communicationMypalSetCoords(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationMypalSetCoords(Codecs.Writer writer, Ros1Mypalletizer_communicationMypalSetCoords value)
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
        byte part5 = value.model;
        writer.integer(part5, 1, true);
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
    private static Ros1Mypalletizer_communicationMypalSetCoords readRos1Mypalletizer_communicationMypalSetCoords(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationMypalSetCoords value = new Ros1Mypalletizer_communicationMypalSetCoords();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.speed = (byte)reader.integer(1, true);
        value.model = (byte)reader.integer(1, true);
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
    public static final class Ros1Mypalletizer_communicationGetAnglesRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/GetAnglesRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_d0412d8ccc8f724f2a0660d20e24a39f6445f0cb433e775058b6b092fde65de8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Mypalletizer_communicationGetAnglesRequest()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationGetAnglesRequest> CODEC = new Codec<Ros1Mypalletizer_communicationGetAnglesRequest>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/GetAnglesRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationGetAnglesRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationGetAnglesRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/GetAnglesRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationGetAnglesRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationGetAnglesRequest value = readRos1Mypalletizer_communicationGetAnglesRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationGetAnglesRequest(Codecs.Writer writer, Ros1Mypalletizer_communicationGetAnglesRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Mypalletizer_communicationGetAnglesRequest readRos1Mypalletizer_communicationGetAnglesRequest(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationGetAnglesRequest value = new Ros1Mypalletizer_communicationGetAnglesRequest();
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
    public static final class Ros1Mypalletizer_communicationGetAnglesResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/GetAnglesResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_cb5a18aec2420c030d8193eb40d25691a2491b98606a7722156984e82f77f745";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_communication/GetAnglesResponse.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_communication/GetAnglesResponse.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_communication/GetAnglesResponse.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_communication/GetAnglesResponse.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;

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
        public Ros1Mypalletizer_communicationGetAnglesResponse()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationGetAnglesResponse> CODEC = new Codec<Ros1Mypalletizer_communicationGetAnglesResponse>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/GetAnglesResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationGetAnglesResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationGetAnglesResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/GetAnglesResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationGetAnglesResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationGetAnglesResponse value = readRos1Mypalletizer_communicationGetAnglesResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationGetAnglesResponse(Codecs.Writer writer, Ros1Mypalletizer_communicationGetAnglesResponse value)
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
    private static Ros1Mypalletizer_communicationGetAnglesResponse readRos1Mypalletizer_communicationGetAnglesResponse(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationGetAnglesResponse value = new Ros1Mypalletizer_communicationGetAnglesResponse();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
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
    public static final class Ros1Mypalletizer_communicationGetCoordsRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/GetCoordsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_47d45419f14ce576d9e8c2bb288c7b67bb161115e7b99a2c4752d09cbb8087b8";
        public static final int MIN_WIRE_BYTES = 0, MAX_WIRE_BYTES = 0;

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
        public Ros1Mypalletizer_communicationGetCoordsRequest()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationGetCoordsRequest> CODEC = new Codec<Ros1Mypalletizer_communicationGetCoordsRequest>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/GetCoordsRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationGetCoordsRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationGetCoordsRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/GetCoordsRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationGetCoordsRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationGetCoordsRequest value = readRos1Mypalletizer_communicationGetCoordsRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationGetCoordsRequest(Codecs.Writer writer, Ros1Mypalletizer_communicationGetCoordsRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
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
    private static Ros1Mypalletizer_communicationGetCoordsRequest readRos1Mypalletizer_communicationGetCoordsRequest(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationGetCoordsRequest value = new Ros1Mypalletizer_communicationGetCoordsRequest();
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
    public static final class Ros1Mypalletizer_communicationGetCoordsResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/GetCoordsResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_7fdad367484b5f89c812c2513e99373844dcd160a115e326fb1c597f221b53fb";
        public static final int MIN_WIRE_BYTES = 16, MAX_WIRE_BYTES = 16;
        /**
         * @brief Original mypalletizer_communication/GetCoordsResponse.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_communication/GetCoordsResponse.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_communication/GetCoordsResponse.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_communication/GetCoordsResponse.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;

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
        public Ros1Mypalletizer_communicationGetCoordsResponse()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationGetCoordsResponse> CODEC = new Codec<Ros1Mypalletizer_communicationGetCoordsResponse>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/GetCoordsResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationGetCoordsResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationGetCoordsResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/GetCoordsResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationGetCoordsResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationGetCoordsResponse value = readRos1Mypalletizer_communicationGetCoordsResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationGetCoordsResponse(Codecs.Writer writer, Ros1Mypalletizer_communicationGetCoordsResponse value)
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
    private static Ros1Mypalletizer_communicationGetCoordsResponse readRos1Mypalletizer_communicationGetCoordsResponse(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationGetCoordsResponse value = new Ros1Mypalletizer_communicationGetCoordsResponse();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
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
    public static final class Ros1Mypalletizer_communicationGripperStatusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/GripperStatusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_48d661f8fd6adfcf1703123464fcfb9351f8f831c0779ffad103a63bcf7ea709";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_communication/GripperStatusRequest.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;

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
        public Ros1Mypalletizer_communicationGripperStatusRequest()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationGripperStatusRequest> CODEC = new Codec<Ros1Mypalletizer_communicationGripperStatusRequest>() {
            /**
             * @brief Encode the complete ordered value for
             * mypalletizer_communication/GripperStatusRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationGripperStatusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationGripperStatusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for
             * mypalletizer_communication/GripperStatusRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationGripperStatusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationGripperStatusRequest value = readRos1Mypalletizer_communicationGripperStatusRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationGripperStatusRequest(Codecs.Writer writer, Ros1Mypalletizer_communicationGripperStatusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mypalletizer_communicationGripperStatusRequest readRos1Mypalletizer_communicationGripperStatusRequest(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationGripperStatusRequest value = new Ros1Mypalletizer_communicationGripperStatusRequest();
        value.Status = readBool(reader);
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
    public static final class Ros1Mypalletizer_communicationGripperStatusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/GripperStatusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_00ab8ceb190b588a9420c2e044da64857cfdb76e709e40e57835ab5732074e2b";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_communication/GripperStatusResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mypalletizer_communicationGripperStatusResponse()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationGripperStatusResponse> CODEC =
            new Codec<Ros1Mypalletizer_communicationGripperStatusResponse>() {
                /**
                 * @brief Encode the complete ordered value for
                 * mypalletizer_communication/GripperStatusResponse.
                 * @details Validate initialized field domains and finite quotas before publishing output.
                 * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
                 * buffers belong to the caller.
                 * @param value Complete original component or local protocol value, with its documented owner
                 * and bounds.
                 * @return Whole initialized bytes or the original codec refusal; rejected data is never a
                 *     native
                 * transport success.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public byte[] encode(Ros1Mypalletizer_communicationGripperStatusResponse value)
                {
                    Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                    writeRos1Mypalletizer_communicationGripperStatusResponse(writer, value);
                    byte[] wire = writer.finish();
                    if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                        throw new IllegalArgumentException("complete encoded extent");
                    return wire;
                }
                /**
                 * @brief Decode the whole canonical value for
                 * mypalletizer_communication/GripperStatusResponse.
                 * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
                 * exposing a complete value. Returned nested values own their storage and retain every
                 * original field.
                 * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
                 * @return Complete owning value on success; codec failure exposes no accepted partial record.
                 * @par Permissions
                 * Pure codecs need no grant; native operations retain the enclosing explicit capability
                 * policy.
                 */
                public Ros1Mypalletizer_communicationGripperStatusResponse decode(byte[] bytes)
                {
                    Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                    Ros1Mypalletizer_communicationGripperStatusResponse value = readRos1Mypalletizer_communicationGripperStatusResponse(reader);
                    reader.end();
                    return value;
                }
            };
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
    private static void writeRos1Mypalletizer_communicationGripperStatusResponse(Codecs.Writer writer,
                                                                                 Ros1Mypalletizer_communicationGripperStatusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mypalletizer_communicationGripperStatusResponse readRos1Mypalletizer_communicationGripperStatusResponse(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationGripperStatusResponse value = new Ros1Mypalletizer_communicationGripperStatusResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mypalletizer_communicationPumpStatusRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/PumpStatusRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_6dd70636864c4450a066c1d75e67643331fac4c3e1625bce1b94c85ce7a35636";
        public static final int MIN_WIRE_BYTES = 3, MAX_WIRE_BYTES = 3;
        /**
         * @brief Original mypalletizer_communication/PumpStatusRequest.Status field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Status = false;
        /**
         * @brief Original mypalletizer_communication/PumpStatusRequest.Pin1 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin1 = 0;
        /**
         * @brief Original mypalletizer_communication/PumpStatusRequest.Pin2 field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte Pin2 = 0;

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
        public Ros1Mypalletizer_communicationPumpStatusRequest()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationPumpStatusRequest> CODEC = new Codec<Ros1Mypalletizer_communicationPumpStatusRequest>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/PumpStatusRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationPumpStatusRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationPumpStatusRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/PumpStatusRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationPumpStatusRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationPumpStatusRequest value = readRos1Mypalletizer_communicationPumpStatusRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationPumpStatusRequest(Codecs.Writer writer, Ros1Mypalletizer_communicationPumpStatusRequest value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Status;
        writer.integer(part0 ? 1 : 0, 1, false);
        byte part1 = value.Pin1;
        writer.integer(part1, 1, true);
        byte part2 = value.Pin2;
        writer.integer(part2, 1, true);
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
    private static Ros1Mypalletizer_communicationPumpStatusRequest readRos1Mypalletizer_communicationPumpStatusRequest(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationPumpStatusRequest value = new Ros1Mypalletizer_communicationPumpStatusRequest();
        value.Status = readBool(reader);
        value.Pin1 = (byte)reader.integer(1, true);
        value.Pin2 = (byte)reader.integer(1, true);
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
    public static final class Ros1Mypalletizer_communicationPumpStatusResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/PumpStatusResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_c2503f89c84c49db8dab2ac9f847ba9d09434d366fd8916a7d5f30ea161bb4c5";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_communication/PumpStatusResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mypalletizer_communicationPumpStatusResponse()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationPumpStatusResponse> CODEC = new Codec<Ros1Mypalletizer_communicationPumpStatusResponse>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/PumpStatusResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationPumpStatusResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationPumpStatusResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/PumpStatusResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationPumpStatusResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationPumpStatusResponse value = readRos1Mypalletizer_communicationPumpStatusResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationPumpStatusResponse(Codecs.Writer writer, Ros1Mypalletizer_communicationPumpStatusResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mypalletizer_communicationPumpStatusResponse readRos1Mypalletizer_communicationPumpStatusResponse(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationPumpStatusResponse value = new Ros1Mypalletizer_communicationPumpStatusResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mypalletizer_communicationSetAnglesRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/SetAnglesRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_32072510c6deddb3f372b5f300068ea457916a4e0397b30951e421a1da641d5d";
        public static final int MIN_WIRE_BYTES = 17, MAX_WIRE_BYTES = 17;
        /**
         * @brief Original mypalletizer_communication/SetAnglesRequest.joint_1 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_1 = 0;
        /**
         * @brief Original mypalletizer_communication/SetAnglesRequest.joint_2 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_2 = 0;
        /**
         * @brief Original mypalletizer_communication/SetAnglesRequest.joint_3 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_3 = 0;
        /**
         * @brief Original mypalletizer_communication/SetAnglesRequest.joint_4 field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float joint_4 = 0;
        /**
         * @brief Original mypalletizer_communication/SetAnglesRequest.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;

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
        public Ros1Mypalletizer_communicationSetAnglesRequest()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationSetAnglesRequest> CODEC = new Codec<Ros1Mypalletizer_communicationSetAnglesRequest>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/SetAnglesRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationSetAnglesRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationSetAnglesRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/SetAnglesRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationSetAnglesRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationSetAnglesRequest value = readRos1Mypalletizer_communicationSetAnglesRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationSetAnglesRequest(Codecs.Writer writer, Ros1Mypalletizer_communicationSetAnglesRequest value)
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
    private static Ros1Mypalletizer_communicationSetAnglesRequest readRos1Mypalletizer_communicationSetAnglesRequest(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationSetAnglesRequest value = new Ros1Mypalletizer_communicationSetAnglesRequest();
        value.joint_1 = reader.f32();
        value.joint_2 = reader.f32();
        value.joint_3 = reader.f32();
        value.joint_4 = reader.f32();
        value.speed = (byte)reader.integer(1, true);
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
    public static final class Ros1Mypalletizer_communicationSetAnglesResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/SetAnglesResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_1472b47adc3171a9f1938e52bc937af6dd6bb720d33e163b70ae066a89a3211c";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_communication/SetAnglesResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mypalletizer_communicationSetAnglesResponse()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationSetAnglesResponse> CODEC = new Codec<Ros1Mypalletizer_communicationSetAnglesResponse>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/SetAnglesResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationSetAnglesResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationSetAnglesResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/SetAnglesResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationSetAnglesResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationSetAnglesResponse value = readRos1Mypalletizer_communicationSetAnglesResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationSetAnglesResponse(Codecs.Writer writer, Ros1Mypalletizer_communicationSetAnglesResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mypalletizer_communicationSetAnglesResponse readRos1Mypalletizer_communicationSetAnglesResponse(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationSetAnglesResponse value = new Ros1Mypalletizer_communicationSetAnglesResponse();
        value.Flag = readBool(reader);
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
    public static final class Ros1Mypalletizer_communicationSetCoordsRequest
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/SetCoordsRequest";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_2d608cac1a7129ca5cd68ff52170ed40258cb6d199f4842a268a1d7570f9bda1";
        public static final int MIN_WIRE_BYTES = 18, MAX_WIRE_BYTES = 18;
        /**
         * @brief Original mypalletizer_communication/SetCoordsRequest.x field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float x = 0;
        /**
         * @brief Original mypalletizer_communication/SetCoordsRequest.y field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float y = 0;
        /**
         * @brief Original mypalletizer_communication/SetCoordsRequest.z field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float z = 0;
        /**
         * @brief Original mypalletizer_communication/SetCoordsRequest.rx field.
         * @details float32 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public float rx = 0;
        /**
         * @brief Original mypalletizer_communication/SetCoordsRequest.speed field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte speed = 0;
        /**
         * @brief Original mypalletizer_communication/SetCoordsRequest.model field.
         * @details int8 scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public byte model = 0;

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
        public Ros1Mypalletizer_communicationSetCoordsRequest()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationSetCoordsRequest> CODEC = new Codec<Ros1Mypalletizer_communicationSetCoordsRequest>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/SetCoordsRequest.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationSetCoordsRequest value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationSetCoordsRequest(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/SetCoordsRequest.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationSetCoordsRequest decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationSetCoordsRequest value = readRos1Mypalletizer_communicationSetCoordsRequest(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationSetCoordsRequest(Codecs.Writer writer, Ros1Mypalletizer_communicationSetCoordsRequest value)
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
        byte part5 = value.model;
        writer.integer(part5, 1, true);
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
    private static Ros1Mypalletizer_communicationSetCoordsRequest readRos1Mypalletizer_communicationSetCoordsRequest(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationSetCoordsRequest value = new Ros1Mypalletizer_communicationSetCoordsRequest();
        value.x = reader.f32();
        value.y = reader.f32();
        value.z = reader.f32();
        value.rx = reader.f32();
        value.speed = (byte)reader.integer(1, true);
        value.model = (byte)reader.integer(1, true);
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
    public static final class Ros1Mypalletizer_communicationSetCoordsResponse
    {
        public static final int ROS_VERSION = 1;
        public static final String NATIVE_TYPE = "mypalletizer_communication/SetCoordsResponse";
        public static final String NATIVE_IDENTITY = null;
        public static final String CODEC_IDENTITY = "UWVMROS1_86900f8772e9609e1d2b882b6ab613ce9609be6c589e5b9574a57b8749231308";
        public static final int MIN_WIRE_BYTES = 1, MAX_WIRE_BYTES = 1;
        /**
         * @brief Original mypalletizer_communication/SetCoordsResponse.Flag field.
         * @details bool scalar, count/quota 0, text byte bound 0. Preserve original units and frame. Full
         * value checks occur before successful encoding; construction grants no authority.
         */
        public boolean Flag = false;

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
        public Ros1Mypalletizer_communicationSetCoordsResponse()
        {
        }

        public static final Codec<Ros1Mypalletizer_communicationSetCoordsResponse> CODEC = new Codec<Ros1Mypalletizer_communicationSetCoordsResponse>() {
            /**
             * @brief Encode the complete ordered value for mypalletizer_communication/SetCoordsResponse.
             * @details Validate initialized field domains and finite quotas before publishing output.
             * Canonical bytes exclude native padding. Borrow inputs synchronously; successful returned
             * buffers belong to the caller.
             * @param value Complete original component or local protocol value, with its documented owner
             * and bounds.
             * @return Whole initialized bytes or the original codec refusal; rejected data is never a
             *     native
             * transport success.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public byte[] encode(Ros1Mypalletizer_communicationSetCoordsResponse value)
            {
                Codecs.Writer writer = new Codecs.Writer(MAX_WIRE_BYTES);

                writeRos1Mypalletizer_communicationSetCoordsResponse(writer, value);
                byte[] wire = writer.finish();
                if(wire.length < MIN_WIRE_BYTES || wire.length > MAX_WIRE_BYTES)
                    throw new IllegalArgumentException("complete encoded extent");
                return wire;
            }
            /**
             * @brief Decode the whole canonical value for mypalletizer_communication/SetCoordsResponse.
             * @details Reject truncated, trailing, malformed, nonfinite or over-quota input before
             * exposing a complete value. Returned nested values own their storage and retain every
             * original field.
             * @param bytes Complete initialized immutable canonical bytes, borrowed until return.
             * @return Complete owning value on success; codec failure exposes no accepted partial record.
             * @par Permissions
             * Pure codecs need no grant; native operations retain the enclosing explicit capability
             * policy.
             */
            public Ros1Mypalletizer_communicationSetCoordsResponse decode(byte[] bytes)
            {
                Codecs.Reader reader = new Codecs.Reader(ownedWire(bytes, MIN_WIRE_BYTES, MAX_WIRE_BYTES));
                Ros1Mypalletizer_communicationSetCoordsResponse value = readRos1Mypalletizer_communicationSetCoordsResponse(reader);
                reader.end();
                return value;
            }
        };
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
    private static void writeRos1Mypalletizer_communicationSetCoordsResponse(Codecs.Writer writer, Ros1Mypalletizer_communicationSetCoordsResponse value)
    {
        if(value == null)
            throw new IllegalArgumentException("nonnull complete record required");
        boolean part0 = value.Flag;
        writer.integer(part0 ? 1 : 0, 1, false);
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
    private static Ros1Mypalletizer_communicationSetCoordsResponse readRos1Mypalletizer_communicationSetCoordsResponse(Codecs.Reader reader)
    {
        Ros1Mypalletizer_communicationSetCoordsResponse value = new Ros1Mypalletizer_communicationSetCoordsResponse();
        value.Flag = readBool(reader);
        return value;
    }
}
