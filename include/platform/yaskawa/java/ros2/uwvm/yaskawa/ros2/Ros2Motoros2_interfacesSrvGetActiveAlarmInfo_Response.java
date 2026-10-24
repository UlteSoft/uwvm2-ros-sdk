/**
 * @file Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response.java
 * @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.yaskawa.ros2;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 2 motoros2_interfaces/srv/GetActiveAlarmInfo_Response value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 32768;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 16;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "motoros2_interfaces/srv/GetActiveAlarmInfo_Response";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field result_code; scalar, text bound 0. */
    public long field_result_code = 0L;
    /** @brief Complete native field result_message; scalar, text bound 512. */
    public String field_result_message = "";
    /** @brief Complete native field alarms; sequence capacity 16, text bound 0. */
    public Ros2Motoros2_interfacesMsgAlarmInfo[] field_alarms = new Ros2Motoros2_interfacesMsgAlarmInfo[0];
    /** @brief Complete native field errors; sequence capacity 16, text bound 0. */
    public Ros2Motoros2_interfacesMsgErrorInfo[] field_errors = new Ros2Motoros2_interfacesMsgErrorInfo[0];

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value)
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
    public static Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        wire.u32(value.field_result_code);
        wire.string(value.field_result_message, 512);
        if(value.field_alarms == null || value.field_alarms.length > 16)
        {
            throw new IllegalArgumentException("Invalid alarms extent");
        }
        wire.u32((long)value.field_alarms.length);
        for(int index = 0; index < value.field_alarms.length; index++)
        {
            Ros2Motoros2_interfacesMsgAlarmInfo.writeFields(wire, value.field_alarms[index]);
        }
        if(value.field_errors == null || value.field_errors.length > 16)
        {
            throw new IllegalArgumentException("Invalid errors extent");
        }
        wire.u32((long)value.field_errors.length);
        for(int index = 0; index < value.field_errors.length; index++)
        {
            Ros2Motoros2_interfacesMsgErrorInfo.writeFields(wire, value.field_errors[index]);
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
    public static Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response value = new Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response();
        value.field_result_code = wire.u32();
        value.field_result_message = wire.string(512);
        value.field_alarms = new Ros2Motoros2_interfacesMsgAlarmInfo[wire.count(16)];
        for(int index = 0; index < value.field_alarms.length; index++)
        {
            value.field_alarms[index] = Ros2Motoros2_interfacesMsgAlarmInfo.readFields(wire);
        }
        value.field_errors = new Ros2Motoros2_interfacesMsgErrorInfo[wire.count(16)];
        for(int index = 0; index < value.field_errors.length; index++)
        {
            value.field_errors[index] = Ros2Motoros2_interfacesMsgErrorInfo.readFields(wire);
        }
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
