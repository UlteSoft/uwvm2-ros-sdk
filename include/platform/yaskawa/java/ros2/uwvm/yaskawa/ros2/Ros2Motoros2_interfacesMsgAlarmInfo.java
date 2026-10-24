/**
 * @file Ros2Motoros2_interfacesMsgAlarmInfo.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 motoros2_interfaces/msg/AlarmInfo value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Motoros2_interfacesMsgAlarmInfo
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 25248;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 32;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "motoros2_interfaces/msg/AlarmInfo";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field number; scalar, text bound 0. */
    public long field_number = 0L;
    /** @brief Complete native field message; scalar, text bound 512. */
    public String field_message = "";
    /** @brief Complete native field sub_code; scalar, text bound 0. */
    public int field_sub_code = 0;
    /** @brief Complete native field datetime; scalar, text bound 0. */
    public Ros2Builtin_interfacesMsgTime field_datetime = new Ros2Builtin_interfacesMsgTime();
    /** @brief Complete native field contents; scalar, text bound 4096. */
    public String field_contents = "";
    /** @brief Complete native field description; scalar, text bound 4096. */
    public String field_description = "";
    /** @brief Complete native field help; sequence capacity 16, text bound 0. */
    public Ros2Motoros2_interfacesMsgAlarmCauseRemedy[] field_help = new Ros2Motoros2_interfacesMsgAlarmCauseRemedy[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Motoros2_interfacesMsgAlarmInfo()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Motoros2_interfacesMsgAlarmInfo value)
    {
        Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
        writeFields(wire, value);
        return wire.finish();
    }

    /**
     * @brief Decode transactionally with exact extent and trailing-byte checks.
     * @param bytes Borrowed immutable complete canonical body.
     * @return Newly owned full value; failed decoding commits no caller storage.
     * @details Invalid wire, text, bounds or semantics throw IllegalArgumentException.
     */
    public static Ros2Motoros2_interfacesMsgAlarmInfo decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Motoros2_interfacesMsgAlarmInfo value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Motoros2_interfacesMsgAlarmInfo value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u32(value.field_number);
        wire.string(value.field_message, 512);
        wire.i32(value.field_sub_code);
        Ros2Builtin_interfacesMsgTime.writeFields(wire, value.field_datetime);
        wire.string(value.field_contents, 4096);
        wire.string(value.field_description, 4096);
        if(value.field_help == null || value.field_help.length > 16)
        {
            throw new IllegalArgumentException("Invalid help extent");
        }
        wire.u32((long)value.field_help.length);
        for(int index = 0; index < value.field_help.length; index++)
        {
            Ros2Motoros2_interfacesMsgAlarmCauseRemedy.writeFields(wire, value.field_help[index]);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
    }

    /**
     * @brief Read one complete nested record without exposing partial values.
     * @param wire Borrowed immutable bounded reader and its private cursor.
     * @return Newly owned complete record; malformed nested input throws.
     * @details The caller separately requires complete top-level consumption.
     */
    public static Ros2Motoros2_interfacesMsgAlarmInfo readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Motoros2_interfacesMsgAlarmInfo value = new Ros2Motoros2_interfacesMsgAlarmInfo();
        value.field_number = wire.u32();
        value.field_message = wire.string(512);
        value.field_sub_code = wire.i32();
        value.field_datetime = Ros2Builtin_interfacesMsgTime.readFields(wire);
        value.field_contents = wire.string(4096);
        value.field_description = wire.string(4096);
        value.field_help = new Ros2Motoros2_interfacesMsgAlarmCauseRemedy[wire.count(16)];
        for(int index = 0; index < value.field_help.length; index++)
        {
            value.field_help[index] = Ros2Motoros2_interfacesMsgAlarmCauseRemedy.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
